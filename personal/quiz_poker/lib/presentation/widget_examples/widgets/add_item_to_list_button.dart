import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddItemToListButton extends StatelessWidget {
  final Container containerObject;
  final List<Widget> listObject;
  const AddItemToListButton({super.key, required this.containerObject, required this.listObject});

  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: InkWell(
          onTap: () {
            listObject.add(containerObject);
          },
        ),
      ),
    );
  }
}
