import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_series_app/core/blocs/home/home_bloc.dart';
import 'package:flutter_series_app/gui/app_style.dart';
import 'package:flutter_series_app/gui/views/home_view/page_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppStyle.darkBackground,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              '${state.nameScreen}',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppStyle.whiteColor, fontWeight: FontWeight.w300),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => Navigator.pushNamed(context, 'settings'),
              ),
            ],
          ),
          body: PageViewWidget(pageController: pagecontroller),
          bottomNavigationBar: _bottomNavigationBar(),
        );
      },
    );
  }

  Widget _bottomNavigationBar() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
            backgroundColor: AppStyle.colorNavigationBar,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppStyle.primaryColor,
            currentIndex: state.currentIndex!,
            elevation: 100.0,
            selectedFontSize: 12.0,
            unselectedFontSize: 11.0,
            onTap: (i) => getNameScreen(i),
            unselectedItemColor: AppStyle.whiteColor,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/home.png"),
                  ),
                  label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/favorites.png"),
                  ),
                  label: 'Favoritos'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/recient.png"),
                  ),
                  label: 'Reciente'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/search.png"),
                  ),
                  label: 'Buscar'),
            ]);
      },
    );
  }

  getNameScreen(i) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    String nameScreen = "";
    switch (i) {
      case 0:
        nameScreen = 'Inicio';
        break;
      case 1:
        nameScreen = 'Favoritos';
        break;
      case 2:
        nameScreen = 'Reciente';
        break;
      case 3:
        nameScreen = 'Buscar';
        break;
      default:
    }
    pagecontroller.animateToPage(i,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    homeBloc.add(ChangeCurrentIndex(currentIndex: i, nameScreen: nameScreen));
  }
}
