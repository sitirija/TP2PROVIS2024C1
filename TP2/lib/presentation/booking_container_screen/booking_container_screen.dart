import 'package:siti_s_application1/presentation/booking_page/booking_page.dart';
import 'package:siti_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:siti_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookingContainerScreen extends StatelessWidget {
  BookingContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.bookingPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.bookingPage;
      case BottomBarEnum.Thumbsup:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.bookingPage:
        return BookingPage();
      default:
        return DefaultWidget();
    }
  }
}
