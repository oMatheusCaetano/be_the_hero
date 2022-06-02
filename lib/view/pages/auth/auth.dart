import 'package:be_the_hero/domain/helpers/media.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + 24,
              left: 24,
              bottom: 40,
              right: 24,
            ),
            child: Text.rich(TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
              children: const <TextSpan>[
                TextSpan(text: 'Juntos \n'),
                TextSpan(text: 'somos mais fortes'),
              ],
            )),
          ),

          Expanded(
            child: UMedia.svg(
              UMedia.injuredSvg,
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: 56,
            margin: EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 10),
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {}, 
              child: Text('Criar conta'),
            ),
          ),

          Container(
            height: 56,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {}, 
              child: Text('Acessar minha conta'),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
