import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/main/components/login_page.dart';
<<<<<<< HEAD
import 'package:admin/screens/main/main_screen.dart';
=======
>>>>>>> 1de138863fc9c2960f099f676818584da6007047
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
<<<<<<< HEAD
      // options: DefaultFirebaseOptions.currentPlatform,
      );
=======
    options: DefaultFirebaseOptions.currentPlatform,
  );
>>>>>>> 1de138863fc9c2960f099f676818584da6007047
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => MenuController(),
      ),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Admin Panel',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        home: LoginPage());
  }
}
