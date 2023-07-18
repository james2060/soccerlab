import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'routes.dart';
import 'theme.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  initializeNotification();
  initializeFireStore();
  runApp(Soccerlab());
}

class Soccerlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SoccerLab UI",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("백그라운드 메시지 처리.. ${message.notification!.body!}");
}

void initializeNotification() async {
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(const AndroidNotificationChannel(
      'high_importance_channel', 'high_importance_notification',
      importance: Importance.max));

  await flutterLocalNotificationsPlugin.initialize(const InitializationSettings(
    android: AndroidInitializationSettings("@mipmap/ic_launcher"),
  ));

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}
void initializeFireStore() async {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  await _firestore.collection("matchinfo").doc().set(
      {
        "name": "Matches",
        "matches": [
          {
            "round": "Matchday 1",
            "startdate":"2023-07-31 07:00:00",
            "enddate": "2023-07-31 09:00:00",
            "location":"가산디지털운동장",
            "team1": "GridFC",
            "team2": "스트레인져스",
            "matchresult": 0,
            "numofparticipants": 13,
            "team1score": 1,
            "team2score": 2,
            "scorer":[
              { "name":"강기수", "score":1, "Quarter":1, "assist":"김백환" },
              { "name":"강기수", "score":1, "Quarter":2,"assist":"김백환"  },
              { "name":"강기수", "score":1, "Quarter":3,"assist":"김백환"  }
            ]
          },
          {
            "round": "Matchday 2",
            "startdate":"2023-07-31 07:00:00",
            "enddate": "2023-07-31 09:00:00",
            "location":"가산디지털운동장",
            "team1": "GridFC",
            "team2": "이랜드",
            "matchresult": 0,
            "numofparticipants": 13,
            "team1score": 1,
            "team2score": 2,
            "scorer":[
              { "name":"강기수", "score":1, "Quarter":1,"assist":"김백환" },
              { "name":"강기수", "score":1, "Quarter":2,"assist":"김백환"  },
              { "name":"강기수", "score":1, "Quarter":3,"assist":"김백환"  }
            ]
          }

        ]
      }
  );
}