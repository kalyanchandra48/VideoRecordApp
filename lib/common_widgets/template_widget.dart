import 'package:flutter/material.dart';

class TemplateWidget extends StatelessWidget {
  const TemplateWidget({
    Key? key,
    required this.image,
    required this.likesCount,
    required this.title,
  }) : super(key: key);

  final String image;
  final String likesCount;
  final String title;

  @override
  Widget build(BuildContext context) {
    print(image);
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
            scale: 1.0,
          ),
          color: Colors.white),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: 35,
          decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white70,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(likesCount),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(title),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
