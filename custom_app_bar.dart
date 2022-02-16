import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftcallback;
  CustomAppBar(this.leftIcon, this.rightIcon, {this.leftcallback});

  //---------------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (leftcallback != null) {
                leftcallback;
              } else {
                return;
              }
            },
            child: buildIcon(leftIcon),
          ),
          buildIcon(rightIcon),
        ],
      ),
    );
  }
//------------------------------------------
  Widget buildIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
