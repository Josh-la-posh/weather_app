import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();
  List<String> recentSearches = [];

  @override
  void initState(){
    super.initState();
    _loadRecentSearches();
  }

  void _loadRecentSearches() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      recentSearches = prefs.getStringList('recentSearches') ?? [];
    });
  }

  void _saveRecentSearch(String query) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!recentSearches.contains(query)) {
      recentSearches.insert(0, query);
      prefs.setStringList('recentSearches', recentSearches);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ... app bar code ...
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ... previous weather info code ...

            // Recent search form
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search City',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a city';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String query = _searchController.text;
                  _saveRecentSearch(query);
                  // Call API with query
                }
              },
              child: Text('Search'),
            ),

            // Recent searches
            recentSearches.isEmpty
                ? Container()
                : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text('Recent Searches:'),
                Column(
                  children: recentSearches
                      .map((search) => ListTile(
                    title: Text(search),
                    onTap: () {
                      _searchController.text = search;
                      // Call API with search
                    },
                  ))
                      .toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
