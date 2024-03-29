import 'package:flutter/material.dart';
import '../presentation/booking_container_screen/booking_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bookingContainerScreen = '/booking_container_screen';

  static const String bookingPage = '/booking_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bookingContainerScreen: (context) => BookingContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
