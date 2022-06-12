import 'package:amazon_clone_nodejs/constants/global_variable.dart';
import 'package:amazon_clone_nodejs/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_nodejs/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            color: Colors.black,
          ),
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Hello"),
      //   ),
      //   body: Center(
      //     child: Column(
      //       children: [
      //         const Text('Flutter Demo Home Page'),
      //         Builder(builder: (context) {
      //           return ElevatedButton(
      //             onPressed: () {
      //               Navigator.popAndPushNamed(context, AuthScreen.routeName);
      //             },
      //             child: const Text("button"),
      //           );
      //         }),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
