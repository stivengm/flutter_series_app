import 'package:flutter/material.dart';
import 'package:flutter_series_app/gui/app_style.dart';

class PageViewWidget extends StatefulWidget {
  final PageController pageController;
  const PageViewWidget({Key? key, required this.pageController}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: widget.pageController,
      scrollDirection: Axis.horizontal,
      children: [
        _body(),
        Container(
          color: AppStyle.colorNavigationBar,
        ),
        Container(
          color: AppStyle.primaryColor
        ),
        Container(
          color: AppStyle.whiteColor
        ),
      ],
    );
  }

  Widget _body() {
    return Container();
  }

}