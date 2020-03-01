import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/pages/holi-details.page.dart';
import 'package:flutter_firebase/pages/home.page.dart';

class Routes {
  static const String Home = "/";
  static const String Details = "/details";
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.Home: (context) => HomePage(),
      Routes.Details: (context) => HoliDetails(),
    };
  }
}
