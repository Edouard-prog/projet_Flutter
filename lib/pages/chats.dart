import 'package:flutter/material.dart';


class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  final chat = [
    {
      "avatar": "avatar1",
      "nom": "Alain",
      "lastMessage": "salut frerot",
    },
    {
      "avatar": "avatar2",
      "nom": "Juslain",
      "lastMessage": "Et les cours ca avance bien j'espere ?",
    },
    {
      "avatar": "avatar3",
      "nom": "Nadine",
      "lastMessage": "Tu es ou'?",
    },
    {
      "avatar": "avatar4",
      "nom": "Bernadette",
      "lastMessage": "Salut grand frère c'est Bernadette",
    },
    {
      "avatar": "avatar5",
      "nom": "TASSEBA Maheva",
      "lastMessage": "Bonsoir boss et les cours? ca roule j'esper !",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: chat.length,
        itemBuilder: (context, index){

          final chatNumber = chat[index];
          final avatarNumber = chatNumber["avatar"];
          final nomNumber = chatNumber["nom"];
          final lastMsg = chatNumber["lastMessage"];

          return Card(
            child: ListTile(
                leading: Image.asset("assets/images/$avatarNumber.png"),
                title: Text("$nomNumber"),
                subtitle: Text("$lastMsg"),
                trailing: Icon(Icons.more_vert)
            ),
          );
        },
      ),
    );

  }
}

