import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -20,
      right: 0,
      left: 0,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xffD9D9D9),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}

/////////////////////////Right

class CustomCircleAvatarRight extends StatelessWidget {
  const CustomCircleAvatarRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .2,
      right: 5,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}

////////////////////////////////////////////Lest
class CustomCircleAvatarLeft extends StatelessWidget {
  const CustomCircleAvatarLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .2,
      left: 5,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
