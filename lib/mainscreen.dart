import 'package:flutter/material.dart';
import 'constant/startmenuclicable.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/backgroundimage.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Column(children: [
                GestureDetector(
                  onTap: () {
                    print('Italian Food Taped');
                  },
                  child: Column(),
                ),
                Image.asset(
                  'assets/images/italianfood.jpg',
                  width: 200,
                  height: 120,
                ),
                const SizedBox(height: 10),
                StartScreenContainer(
                  content: 'italian food',
                  color: Colors.purple,
                ),
              ]),
              Column(
                children: [
                  Image.asset(
                    'assets/images/spanishfood.jpg',
                    width: 200,
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                  StartScreenContainer(
                    content: 'spanish food',
                    color: const Color.fromARGB(255, 65, 137, 165),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/algerian-food-couscous.jpg',
                    width: 200,
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                  StartScreenContainer(
                    content: 'Algerian food',
                    color: const Color.fromARGB(255, 84, 138, 113),
                  ),
                ],
              ),
              Column(children: [
                Image.asset(
                  'assets/images/algerian-food-couscous.jpg',
                  width: 200,
                  height: 120,
                ),
                const SizedBox(height: 10),
                StartScreenContainer(
                  content: 'Tunisian food',
                  color: const Color.fromARGB(255, 205, 223, 105),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
