import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/app_style.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.darkBackground,
      appBar: AppBar(
        title: Text("Configuración", style: Theme.of(context).textTheme.headline6!.copyWith(color: AppStyle.whiteColor, fontWeight: FontWeight.w300),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}