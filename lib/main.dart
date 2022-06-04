import 'package:flutter/material.dart';
import 'package:weather_app/model/api_model.dart';
import 'package:weather_app/service/api_service.dart';
import 'package:weather_app/view/additional_inf.dart';
import 'package:weather_app/view/current_weather.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel? data;
  Future<void> getData()async{
    data = await apiWeather.getWeather(location: 'rafah');
  }
  ApiWeather apiWeather = ApiWeather();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff9f9f9),
        appBar: AppBar(
          title: const Text(
            'Weather App',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xfff9f9f9),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
         builder: (context,snapshot){
            if( snapshot.connectionState == ConnectionState.done){
            return  Column(
                children: [
                  currentWeather(
                      location: data!.cityName??'Cairo', icon: Icons.wb_sunny, temp: data!.temp),
                  const SizedBox(height: 60),
                  const Text(
                    'Additional information',
                    style: TextStyle(
                      color: Color(0xffdd2121),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  additionalInfo(wind: data!.wind,humidity: data!.humidity,pressure: data!.pressure,feelLike: data!.feel_like),
                ],
              );
            }
            else if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              return const Center(
                child: Text('Error'),
              );
            }
         },

        ));
  }
}
