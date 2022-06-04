class WeatherModel {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feel_like;
  int? pressure;

  WeatherModel(
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feel_like,
    this.pressure,
  );
  WeatherModel.fromJson(Map<String,dynamic> json){
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    feel_like = json['main']['feels_like'];
    pressure = json['main']['pressure'];
  }
}
