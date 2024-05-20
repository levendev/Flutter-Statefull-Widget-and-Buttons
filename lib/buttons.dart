import 'package:flutter/material.dart';

class buton extends StatelessWidget {
  const buton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    // states yapısı Set olduğu için setlerde de eşittir anlamına gelen şey contains olduğu için contains kullanırız
                    // butona tıkladığımız zaman oluşacak durumu belirtiriz
                    return Colors.amber; // tıklarsak bu rengi
                  }
                  return Colors
                      .lightGreen; // tıklamazsak bu rengi dönderecektir
                })),
                onPressed: () {},
                child: Text(
                    "Text Button")), // text button da pnğressed ve ch,şd zorunludur
            TextButton.icon(
              // text button iconda ekstra olarak icon vardır
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors
                      .red), // Material State Property.all demek bütün durumlarda butonun olacağı durumu ifade eder.
                  overlayColor: MaterialStateProperty.all(Colors.orange.withOpacity(
                      0.25))), // overlayColor butona tıklandığındaki durumu ifade eder.withOpacity ise hangi opaklık değerinde uygulayacağını belirtir.
              onPressed: () {
                debugPrint("Butona basıldı.");
              },
              onLongPress: () {
                // butona uzun süre basıldığında çalışır
                debugPrint("Butona uzun basıldı.");
              },
              icon: Icon(Icons.add),
              label: Text("Text Button İcon"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // bu şekilde hangi buton türündeysek onu tanımlayarak butonun özelliklerini değiştirebiliriz
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Text(
                  "Elevated Button",
                  style: TextStyle(color: Colors.red),
                )), //  Elevated button içi dolu butondur
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Elevated Button İcon")),
            OutlinedButton(
                onPressed: () {},
                child: Text(
                    "Outlined Button")), // outlined button etrafı çevrili butondur
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(), // bu sayede border side ekleyebiliriz
                  side: BorderSide(color: Colors.red, width: 4),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Outlined Button İcon")),
          ],
        ),
      ),
    );
  }
}
