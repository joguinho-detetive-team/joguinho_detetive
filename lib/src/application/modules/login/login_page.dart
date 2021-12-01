import 'package:flutter/material.dart';
import 'package:joguinho_detetive/src/application/modules/login/widgets/avatar_generator.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              color: Colors.brown[600],
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12.0,
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 14),
                  AvatarGenerator(
                    avatarUrl: 'https://picsum.photos/250?image=9',
                  ),
                  TextFormField(),
                  SizedBox(height: 16.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
