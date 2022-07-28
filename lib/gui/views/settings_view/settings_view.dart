import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/app_style.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
      body: _body(),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        ListTile(
          title: Text("Acerca de", style: Theme.of(context).textTheme.headline5!.copyWith(color: AppStyle.whiteColor, fontSize: 15.0, fontWeight: FontWeight.w400)),
          onTap: () { }
        ),
        ListTile(
          title: Text("Cerrar sesión", style: Theme.of(context).textTheme.headline5!.copyWith(color: AppStyle.whiteColor, fontSize: 15.0, fontWeight: FontWeight.w400)),
          onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (Route<dynamic> route) => false)
        ),
      ],
    );
  }
}