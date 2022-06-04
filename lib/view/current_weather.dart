import 'package:flutter/material.dart';

Widget currentWeather({
  required String? location,
  required IconData icon,
  required double? temp,
}) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 60,color: Colors.orange,),
        const SizedBox(height: 10,),
        Text(
          temp.toString(),
          style: const TextStyle(
            fontSize: 64,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          location??'Gaza',
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xff5a5a5a),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
