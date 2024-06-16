import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Profile.dart';
import 'package:untitled/registration.dart';
import 'BookingPage.dart';
import 'EventsPage.dart';
import 'GalleryPage.dart';
import 'MembersPage.dart';
import 'NewsPage.dart';
import 'PaymentsPage.dart';
import 'login.dart';
import 'homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'registration': (context) => MyRegister(),
        'homepage': (context) => MyHomepage(),
        'payment': (context) => PaymentPage(),
        'booking': (context) => Bookingpage(),
        'gallery': (context) => GalleryPage(),
        'members': (context) => Memberspage(),
        'events': (context) => EventsPage(),
        'news': (context) => Newspage(),
      },
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
