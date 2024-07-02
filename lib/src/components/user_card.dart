import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  final String title;
  final String description1;
  final String description2;
  final String thumbPath;
  const UserCard(
      {super.key,
      required this.description1,
      required this.description2,
      required this.title,
      required this.thumbPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                SizedBox(height: 10),
                AvatarWidget(
                  type: AvatarType.TYPE2,
                  thumbPath: thumbPath,
                  size: 70,
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  description1 + description2,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(100, 30),
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30)),
                  child: const Text(
                    '팔로우',
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.close,
                size: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
