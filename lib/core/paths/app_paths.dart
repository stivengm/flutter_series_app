import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/views/home_view/home_view.dart';
import 'package:flutter_series_app/gui/views/login_view/login_view.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {
  'home': ( _ ) => const HomeView(),
  'login': ( _ ) => const LoginView(),
};