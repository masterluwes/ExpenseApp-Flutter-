import 'package:flutter/material.dart';
import 'package:expense_app/widgets/expenses.dart';
// import 'package:flutter/services.dart'; // for responsiveness

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 49, 77, 156),
);

var kDarkColor = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 33, 92, 109),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // System orientation
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColor,
          cardTheme: const CardThemeData().copyWith(
            color: kDarkColor.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColor.primaryContainer,
              foregroundColor: kDarkColor.onPrimaryContainer,
            ),
          ),
          // textTheme: ThemeData().textTheme.copyWith(
          //   titleLarge: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: kDarkColor.onSecondaryContainer,
          //     fontSize: 18,
          //   ),
          // ),
        ),
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: const CardThemeData().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 18,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    );
  // });
}
