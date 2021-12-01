import 'package:flutter/material.dart';

class AvatarGenerator extends StatelessWidget {
  final String avatarUrl;

  const AvatarGenerator({
    Key? key,
    required this.avatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 94,
      backgroundColor: Colors.blueGrey[200],
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
              ),
              onPressed: () {},
              child: Icon(
                Icons.refresh,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
    CircleAvatar(
      maxRadius: 94,
      backgroundColor: Colors.blueGrey[200],
      backgroundImage: NetworkImage(avatarUrl),
      child: Container(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
          onPressed: () {},
          child: Icon(
            Icons.refresh,
            size: 18,
          ),
        ),
      ),
    );
  }
}
