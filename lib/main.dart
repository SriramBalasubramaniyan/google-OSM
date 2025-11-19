import 'package:flutter/material.dart';
import 'package:osm_google/provider/connectiveProvider.dart';
import 'package:osm_google/provider/locationProvider.dart';
import 'package:osm_google/provider/mapCacheProvider.dart';
import 'package:osm_google/provider/mapControllerProvider.dart';
import 'package:osm_google/view/mapPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ConnectivityProvider()),
        ChangeNotifierProvider(create: (_) => MapCacheProvider()),
        ChangeNotifierProvider(create: (_) => MapControllerProvider()),
        ChangeNotifierProvider(create: (_) => LocationProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MapPage(),
    );
  }
}