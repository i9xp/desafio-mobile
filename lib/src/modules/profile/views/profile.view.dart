import 'package:desafioi9xp/src/modules/profile/styles/profile.style.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset("assets/images/construction.png"),
              ),
              Divider(color: Colors.transparent),
              Text(
                "Under\nConstruction",
                textAlign: TextAlign.center,
                style: ProfileStyle.UNDER_CONSTRUCTION,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
