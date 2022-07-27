import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/app_style.dart';
import 'package:flutter_series_app/gui/widgets/primary_button.dart';
import 'package:flutter_series_app/gui/widgets/secundary_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/theWitcher.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("¡Bienvenido!"),
            _sectionsButtons(),
            const SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _sectionsButtons() {
    Size media = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: media.width * .4,
          child: PrimaryButton(text: 'Sign up', color: AppStyle.darkBackground, onPressed: () { }),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          width: media.width * .4,
          child: SecundaryButton(text: 'Sign up', onPressed: () { }),
        ),
        const SizedBox(height: 30.0),
        const Text("¿Olvidó su contraseña?", style: TextStyle( color: AppStyle.whiteColor, decoration: TextDecoration.underline )),
      ],
    );
  }
}