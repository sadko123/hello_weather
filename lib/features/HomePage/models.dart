import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';

  Widget Models(String city) {
    return
      FutureBuilder<Map<String, dynamic>>(
          future: WeatherGet(city),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            else if (snapshot.hasError) {
              return Text('Ошибка: ${snapshot.error}', style: TextStyle(color: Colors.white),);
            }
            else {
              var weather = snapshot.data!["current"]['condition']['code'];
              switch (weather) {
                  case 1000:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1003:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1006:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1009:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1030:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1063:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1066:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1069:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1072:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1087:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1114:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1117:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1135:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1147:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1150:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1153:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1168:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1171:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1180:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1183:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1186:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1189:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1192:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1195:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1198:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1201:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1204:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1207:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1210:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1213:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1216:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1219:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1222:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1225:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1237:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1240:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1243:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1246:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1249:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1252:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1255:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1258:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1261:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1264:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1273:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1276:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1279:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  case 1282:
                  return Image.network(snapshot.data!["current"]['condition']['icon'], width: 100, height: 100, fit: BoxFit.cover,);
                  }
                  return Text(weather, style: TextStyle(color: Colors.white),);
              }
            }
        );
       }


