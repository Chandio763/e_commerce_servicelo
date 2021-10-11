import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralCarousal extends StatelessWidget {
  final String? imgPath, titleText, description;
  const GeneralCarousal(
      {Key? key, this.imgPath, this.titleText, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imgPath!,
          height: height * 0.25,
          width: width * 0.70,
        ),
        const SizedBox(
          height: 50,
        ),
        //Title Text
        Text(
          titleText!,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //Description
        Text(description!),
      ],
    );
  }
}
