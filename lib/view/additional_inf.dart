import 'package:flutter/material.dart';

const TextStyle titleStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
const TextStyle info = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

Widget additionalInfo({
  required double? wind,
  required int? humidity,
  required int? pressure,
  required double? feelLike,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Wind',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Pressure',
                  style: titleStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  wind.toString(),
                  style: info
                ),
                const SizedBox(height: 18),
                Text(
                  pressure.toString(),
                  style: info,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'humidity',
                  style: titleStyle,
                ),
                SizedBox(height: 18),
                Text(
                  'Feel like',
                  style: titleStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  humidity.toString(),
                  style: info
                ),
                const SizedBox(height: 18),
                Text(
                  feelLike.toString(),
                  style: info,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
