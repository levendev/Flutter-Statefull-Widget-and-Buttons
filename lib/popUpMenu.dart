import 'package:flutter/material.dart';

class popUp extends StatefulWidget {
  const popUp({super.key});

  @override
  State<popUp> createState() => _popUpState();
}

class _popUpState extends State<popUp> {
  List<String> liste = ["Adilcevaz", "Adana", "Ankara", "Bitlis", "İstanbul"];
  String? _eskiSehir = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop Up Menu"),
        backgroundColor: Colors.teal,
        actions: [popupmenuCagir()],
      ),
      body: Center(
        child: popupmenuCagir(),
      ),
    );
  }

  PopupMenuButton<String> popupmenuCagir() {
    return PopupMenuButton<String>(
      onSelected: (String? yeniSehir) {
        // popupMenu'de onselected fonksiyonunu kullanırız
        setState(() {
          _eskiSehir = yeniSehir;
          print("seçilen şehir $yeniSehir");
        });
      },
      itemBuilder: (BuildContext context) {
        return liste
            .map((String sehirler) => PopupMenuItem(
                  child: Text(sehirler),
                  value: sehirler,
                ))
            .toList();

        /*  return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Adana"),
              value: "Adana",
            ),
            PopupMenuItem(
              child: Text("Bitlis"),
              value: "Bitlis",
            ),
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("İstanbul"),
              value: "İstanbul",
            ),
          ];    */
      },
    );
  }
}
