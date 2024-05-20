import "package:flutter/material.dart";
import "package:flutter2/buttons.dart";
import "package:flutter2/drowDown.dart";
import "package:flutter2/imageWidgets.dart";
import "package:flutter2/popUpMenu.dart";
import "package:flutter2/statefulWidget.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "asd",
      theme: ThemeData(
          primarySwatch: Colors.teal,
          textTheme: TextTheme(
              bodyMedium: TextStyle(
                  color: Colors.red,
                  fontSize:
                      25)), // Burası butona tıklama sayınız yazdığımız text widgetinin üstündedir ağaç yapısı olarak.Orada kullandığımız contextler üstünde olduğu için buradaki materialApp'dan gelmektedir.Burda yaptığımız değişiklikler altında context kullanan yapıları etkiler.
            outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom(   // Kendinin altındaki butonların default yapısını belirtir.
              backgroundColor: Colors.teal
            ))
          ),
      home: popUp(),
    );
  }
}
