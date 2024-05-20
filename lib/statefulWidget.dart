import 'package:flutter/material.dart';

class statefulWidgetHome extends StatefulWidget {   // statefulwidget da setState() fonksiyonu sayesinde sayac gibi şeyleri yapabiliriz anlık kontrol etmesini sağlar değişen durumları yazdığımız widget yapısıdır
  const statefulWidgetHome({super.key});

  @override
  State<statefulWidgetHome> createState() => _statefulWidgetHomeState();
}

class _statefulWidgetHomeState extends State<statefulWidgetHome> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("My Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textWidget(),
            Text(
              _sayac.toString(),
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacArttir();
        },
        child: Icon(Icons.sentiment_satisfied_outlined),
      ),
    );
  }

  void sayacArttir() {
    _sayac++;
    setState(() {});
  }
}

class textWidget extends StatelessWidget {
  const textWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Butona tıklama sayınız.",
      style: Theme.of(context)
          .textTheme
          .bodyMedium, // context kendinden üstündeki widgetin içeriklerini alır widgetlar ağaç gibi dallanarak aşşağıya giderler üstteki widgetta belirlediğimiz şeyler alttaki widgetlarda kullandığımız context yapılarını etkiler
    );
  }
}
