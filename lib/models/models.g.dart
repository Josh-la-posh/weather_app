// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      request: Request.fromJson(json['request'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      forecast: (json['forecast'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ForecastData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

Request _$RequestFromJson(Map<String, dynamic> json) => Request(
      type: json['type'] as String,
      query: json['query'] as String,
      language: json['language'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      timezone_id: json['timezone_id'] as String,
      localtime: json['localtime'] as String,
      localtime_epoch: json['localtime_epoch'] as int,
      utc_offset: json['utc_offset'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone_id': instance.timezone_id,
      'localtime': instance.localtime,
      'localtime_epoch': instance.localtime_epoch,
      'utc_offset': instance.utc_offset,
    };

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      observation_time: json['observation_time'] as String,
      temperature: json['temperature'] as int,
      weather_code: json['weather_code'] as int,
      weather_icons: (json['weather_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weather_descriptions: (json['weather_descriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      wind_speed: json['wind_speed'] as int,
      wind_degree: json['wind_degree'] as int,
      wind_dir: json['wind_dir'] as String,
      pressure: json['pressure'] as int,
      precip: json['precip'] as int,
      humidity: json['humidity'] as int,
      cloudcover: json['cloudcover'] as int,
      feelslike: json['feelslike'] as int,
      uv_index: json['uv_index'] as int,
      visibility: json['visibility'] as int,
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'observation_time': instance.observation_time,
      'temperature': instance.temperature,
      'weather_code': instance.weather_code,
      'weather_icons': instance.weather_icons,
      'weather_descriptions': instance.weather_descriptions,
      'wind_speed': instance.wind_speed,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'pressure': instance.pressure,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'cloudcover': instance.cloudcover,
      'feelslike': instance.feelslike,
      'uv_index': instance.uv_index,
      'visibility': instance.visibility,
    };

ForecastData _$ForecastDataFromJson(Map<String, dynamic> json) => ForecastData(
      date: json['date'] as String,
      forecast: ForecastDay.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastDataToJson(ForecastData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'forecast': instance.forecast,
    };

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) => ForecastDay(
      date: json['date'] as String,
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      mintemp: json['mintemp'] as int,
      maxtemp: json['maxtemp'] as int,
      avgtemp: json['avgtemp'] as int,
      totalsnow: json['totalsnow'] as int,
      sunhour: (json['sunhour'] as num).toDouble(),
      uv_index: json['uv_index'] as int,
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => ForecastHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayToJson(ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'astro': instance.astro,
      'mintemp': instance.mintemp,
      'maxtemp': instance.maxtemp,
      'avgtemp': instance.avgtemp,
      'totalsnow': instance.totalsnow,
      'sunhour': instance.sunhour,
      'uv_index': instance.uv_index,
      'hourly': instance.hourly,
    };

Astro _$AstroFromJson(Map<String, dynamic> json) => Astro(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonrise: json['moonrise'] as String,
      moonset: json['moonset'] as String,
      moon_phase: json['moon_phase'] as String,
      moon_illumination: json['moon_illumination'] as int,
    );

Map<String, dynamic> _$AstroToJson(Astro instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'moon_illumination': instance.moon_illumination,
    };

ForecastHourly _$ForecastHourlyFromJson(Map<String, dynamic> json) =>
    ForecastHourly(
      time: json['time'] as String,
      temperature: json['temperature'] as int,
      weather_code: json['weather_code'] as int,
      weather_icons: (json['weather_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weather_descriptions: (json['weather_descriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ForecastHourlyToJson(ForecastHourly instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'weather_code': instance.weather_code,
      'weather_icons': instance.weather_icons,
      'weather_descriptions': instance.weather_descriptions,
    };

HistoricalWeatherResponse _$HistoricalWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    HistoricalWeatherResponse(
      request: Request.fromJson(json['request'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      historical: (json['historical'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, HistoricalData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$HistoricalWeatherResponseToJson(
        HistoricalWeatherResponse instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
      'historical': instance.historical,
    };

HistoricalData _$HistoricalDataFromJson(Map<String, dynamic> json) =>
    HistoricalData(
      date: json['date'] as String,
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      mintemp: json['mintemp'] as int,
      maxtemp: json['maxtemp'] as int,
      avgtemp: json['avgtemp'] as int,
      totalsnow: json['totalsnow'] as int,
      sunhour: (json['sunhour'] as num).toDouble(),
      uv_index: json['uv_index'] as int,
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => HistoricalHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoricalDataToJson(HistoricalData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'astro': instance.astro,
      'mintemp': instance.mintemp,
      'maxtemp': instance.maxtemp,
      'avgtemp': instance.avgtemp,
      'totalsnow': instance.totalsnow,
      'sunhour': instance.sunhour,
      'uv_index': instance.uv_index,
      'hourly': instance.hourly,
    };

HistoricalHourly _$HistoricalHourlyFromJson(Map<String, dynamic> json) =>
    HistoricalHourly(
      time: json['time'] as String,
      temperature: json['temperature'] as int,
      wind_speed: json['wind_speed'] as int,
      wind_degree: json['wind_degree'] as int,
      wind_dir: json['wind_dir'] as String,
      weather_code: json['weather_code'] as int,
      weather_icons: (json['weather_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weather_descriptions: (json['weather_descriptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      precip: json['precip'] as int,
      humidity: json['humidity'] as int,
      visibility: json['visibility'] as int,
      pressure: json['pressure'] as int,
      cloudcover: json['cloudcover'] as int,
      heatindex: json['heatindex'] as int,
      dewpoint: json['dewpoint'] as int,
      windchill: json['windchill'] as int,
      windgust: json['windgust'] as int,
      feelslike: json['feelslike'] as int,
      chanceofrain: json['chanceofrain'] as int,
      chanceofremdry: json['chanceofremdry'] as int,
      chanceofwindy: json['chanceofwindy'] as int,
      chanceofovercast: json['chanceofovercast'] as int,
      chanceofsunshine: json['chanceofsunshine'] as int,
      chanceoffrost: json['chanceoffrost'] as int,
      chanceofhightemp: json['chanceofhightemp'] as int,
      chanceoffog: json['chanceoffog'] as int,
      chanceofsnow: json['chanceofsnow'] as int,
      chanceofthunder: json['chanceofthunder'] as int,
      uv_index: json['uv_index'] as int,
    );

Map<String, dynamic> _$HistoricalHourlyToJson(HistoricalHourly instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'wind_speed': instance.wind_speed,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'weather_code': instance.weather_code,
      'weather_icons': instance.weather_icons,
      'weather_descriptions': instance.weather_descriptions,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'pressure': instance.pressure,
      'cloudcover': instance.cloudcover,
      'heatindex': instance.heatindex,
      'dewpoint': instance.dewpoint,
      'windchill': instance.windchill,
      'windgust': instance.windgust,
      'feelslike': instance.feelslike,
      'chanceofrain': instance.chanceofrain,
      'chanceofremdry': instance.chanceofremdry,
      'chanceofwindy': instance.chanceofwindy,
      'chanceofovercast': instance.chanceofovercast,
      'chanceofsunshine': instance.chanceofsunshine,
      'chanceoffrost': instance.chanceoffrost,
      'chanceofhightemp': instance.chanceofhightemp,
      'chanceoffog': instance.chanceoffog,
      'chanceofsnow': instance.chanceofsnow,
      'chanceofthunder': instance.chanceofthunder,
      'uv_index': instance.uv_index,
    };

AutocompleteResult _$AutocompleteResultFromJson(Map<String, dynamic> json) =>
    AutocompleteResult(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      timezoneId: json['timezoneId'] as String,
      utcOffset: json['utcOffset'] as String,
    );

Map<String, dynamic> _$AutocompleteResultToJson(AutocompleteResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'region': instance.region,
      'lon': instance.lon,
      'lat': instance.lat,
      'timezoneId': instance.timezoneId,
      'utcOffset': instance.utcOffset,
    };
