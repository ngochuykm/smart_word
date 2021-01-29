import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:global_configuration/global_configuration.dart';
// import 'src/helpers/custom_trace.dart';
import './route_generator.dart';
import './src/lang/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GlobalConfiguration().loadFromAsset("configurations");
  // print(CustomTrace(StackTrace.current, message: "base_url: ${GlobalConfiguration().getString('base_url')}"));
  // print(CustomTrace(StackTrace.current, message: "api_base_url: ${GlobalConfiguration().getString('api_base_url')}"));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Splash',
      debugShowCheckedModeBanner: false,
      // locale: Locale('kr', 'Kr'),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('vi', 'VN'),
        Locale('kr', 'Kr'),
        Locale('cn', 'CN'),
      ],
      localizationsDelegates: [
        Applocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      onGenerateRoute: RouteGenerator.generateRoute,
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => new _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(fit: StackFit.expand, children: <Widget>[
//       Container(
//         decoration: BoxDecoration(color: Colors.redAccent),
//       ),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Expanded(
//             flex: 2,
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundColor: Colors.white,
//                     radius: 50.0,
//                     child: Icon(
//                       Icons.shopping_cart,
//                       color: Colors.greenAccent,
//                       size: 50.0,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10.0),
//                   ),
//                   Text(
//                     "Smart Word",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   CircularProgressIndicator(),
//                   Padding(
//                       padding: EdgeInsets.only(bottom: 16),
//                       child: Text("Working Hard",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           )))
//                 ]),
//           ),
//         ],
//       )
//     ]));
//   }
// }
