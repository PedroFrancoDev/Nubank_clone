import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors_standard.dart';

class CardFindOutMoreModel extends StatelessWidget {
  String image;
  String title;
  String description;
  String buttonText;

  CardFindOutMoreModel({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: yellow20,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 22,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 220,
              height: 130,
            ),
          ),
          SizedBox(
            width: 210,
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: grey,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(12),
                    ),
                    backgroundColor: MaterialStatePropertyAll(backgroundColor),
                  ),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
