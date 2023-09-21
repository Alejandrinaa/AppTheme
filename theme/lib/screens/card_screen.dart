import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Lindo paisaje',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMBTWUp-Gc6T-zmvohb4NTvvqU3Uc43_7mFjz9sit8e4WhUrazpvwy_JjSjajX8Qaq0eY&usqp=CAU',
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDJp-sa4vrMT7qisguAlZ-us7Jr0QjRK_LqkUEtsDu0LscA5THRdfpkKsgnLGAyLw4VKU&usqp=CAU'),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
            ),
            SizedBox(height: 100),
            CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRASovVFXANDbdGpyvXLEXcSO77P1BIDcBgOP29AzO_YgZ6YhXfyAFWwS2OFEsQTYupq0&usqp=CAU',
            ),
          ],
        ));
  }
}
