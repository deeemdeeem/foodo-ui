import 'package:flutter/material.dart';
import './routes/router.dart' as router;
import './routes/route_constants.dart';

void main() => runApp(FoodyApp());

class FoodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Named Routing",
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeRoute,
    );
  }
}