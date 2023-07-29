import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.getIn, {super.key});
  final void Function() getIn;
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
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/MainScreenlogo.png',
                width: 300,
                /* color: const Color.fromARGB(157, 222, 201, 226), */
              ),
              const SizedBox(
                height: 80,
              ),
              Text('Find What is Tasty!!',
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255))),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.arrow_right_alt),
                onPressed: getIn,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                label: const Text(
                  'Enter',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
