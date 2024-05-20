import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class images extends StatelessWidget {
  // İmagesı 2 şekilde kullanıyoruz biri assets diğeri network.Assets kullanmak için assets klasörü açıp içine images açıyoruz oraya resimlerimizi ekliyoruz daha sonra flutterdaki pubspec.yaml dosyasında assets kısmına gelip onları yorum satırından çıkarıp son sıradakini silip assets\images yapıp imagesdaki bütün resimlerimizi import etmiş oluyoruz
  const images({super.key});

  @override
  Widget build(BuildContext context) {
    String _img =
        "https://images.template.net/wp-content/uploads/2016/04/27093503/Sky-Blue-Colored-Car-Wallpaper-for-Download.jpg";
    return Scaffold(
      appBar: AppBar(
        title: Text("İmages"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IntrinsicHeight(
              // bu widget içindekilerden width ve heighti en yüksek olanı sınır kabul eder içindeki rowa CrossAxisAlignment.stretch koyarsak diğerlerini de o sınıra eşitler
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                        child: Image.asset(
                      'assets/images/car.jpg', // Bu şekilde eklediğimiz assets dosyamızdan resim ekleriz.Resim eklerken bütün dosya yolunu yazmamız gerekmektedir.
                      fit: BoxFit.cover,
                    )),
                  ),
                  Expanded(
                    child: Container(
                        child: Image.network(
                      _img, // bu şekilde de internetten resim alırız
                      fit: BoxFit.cover,
                    )),
                  ),
                  Expanded(
                    child: Container(
                        height: 100,
                        width: 100,
                        child: (CircleAvatar(
                          // circle avatar yuvarlak avatar şeklinde resim eklememizi sağlar.
                          backgroundImage: NetworkImage(
                              _img), // backgroundImage bir widget beklemez o yüzden NetworkImage veya AssetImage kullanarak resim ekleriz.
                        ))),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif", image: _img),
            ), // Bu widget internetten aldıgımız resim gelene kadar yerine başka bir asset koymamızı sağlar.Buraya şık durması için loading gifi koyabiliriz.
            Expanded(
                child:
                    Placeholder()), // Placeholder daha sonra oraya bir resim vs. koyacaksak önceden yer tutmayı sağlar.Default olarak fazla alan kapladığı için taşma yapabilir bunu önlemek için expanded ile wraplarız.
          ],
        ),
      ),
    );
  }
}
