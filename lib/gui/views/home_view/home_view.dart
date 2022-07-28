import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/app_style.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.darkBackground,
      appBar: AppBar(
        elevation: 0,
        title: Text("Inicio", style: Theme.of(context).textTheme.headline6!.copyWith(color: AppStyle.whiteColor),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
            // onPressed: () => Navigator.pushNamed(context, 'settings'),
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container();
  }

}