import 'package:flutter/material.dart';

class dropDownButton extends StatefulWidget {
  const dropDownButton({super.key});

  @override
  State<dropDownButton> createState() => _dropDownButtonState();
}

class _dropDownButtonState extends State<dropDownButton> {
  String? _eski = null;
  List<String> liste = [
    "İstanbul",
    "Ankara",
    "Adana",
    "Bitlis",
    "Van",
    "Malatya",
    "Elcevaz",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Button"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: Text(
              "Şehir Seçiniz"), // hint ilk başta hiçbir şey seçilmediği zamanda gösterilecek şeydir
          items: liste
              .map(
                  (oAnkiSehir) => // map yapısısyla listemizdeki elemanları DropdownMenuItem'e dönüştürüp içindeki elemanları tek tek atarız
                      DropdownMenuItem(
                          child: Text(oAnkiSehir), value: oAnkiSehir))
              .toList(), // en son bizden lisste beklendiği için bu yapıyı listeye dönüştürürüz

          /*  items: [
            // şehirleri bir listeden de çekebiliriz
            DropdownMenuItem(
              child: Text("Ankara"),
              value:
                  "Ankara", // value seçildiği zaman geriye döndereceği değerdir
            ),
            DropdownMenuItem(
              child: Text("İstanbul"),
              value: "İstanbul",
            ),
            DropdownMenuItem(
              child: Text("Bitlis"),
              value: "Bitlis",
            ),
            DropdownMenuItem(
              child: Text("Adana"),
              value: "Adana",
            ),
          ],  */
          value: _eski, // ekrana yazılacak değer
          onChanged: (String? yeni) {
            // yeni deger null olabileceği için ? koyarız
            setState(() {
              // ekrandaki değeri güncelleyebilmek için setstate kullanırız
              _eski = yeni;
              print(_eski.toString() + " seçildi.");
            });
          },
        ),
      ),
    );
  }
}
