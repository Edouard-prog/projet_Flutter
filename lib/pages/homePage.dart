import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chats.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/LogoIm.svg",
            width: 200,
            height: 200,
          ),
          Text(
            "MiniWasAPP",
            style: TextStyle(
                fontSize: 42,
                fontFamily: "Poppins"
            ),
          ),
          Text(
            "Bienvenue sur votre nouvelle plateforme de chats commenceons une nouvelle experience et une aventure dans MiniWatsApp",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    );
  }
}