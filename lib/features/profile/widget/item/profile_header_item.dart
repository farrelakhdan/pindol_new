import 'package:flutter/material.dart';

class ProfileHeaderItem extends StatelessWidget {
  final Color color;
  final String title;
  final String score;
  const ProfileHeaderItem(
      {super.key,
      required this.color,
      required this.title,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [const Color(0xffE0E5EC), color],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold, // Example of AppFontWeight.bodyBold
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffE0E5EC),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(1),
                  blurRadius: 6,
                  offset: const Offset(-2, -2),
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(2, 2),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Text(
              "Score",
              style: TextStyle(
                fontSize: 12,
                fontWeight:
                    FontWeight.bold, // Example of AppFontWeight.bodyBold
                color: color,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Calculate the shortest side
                double size = constraints.maxWidth < constraints.maxHeight
                    ? constraints.maxWidth
                    : constraints.maxHeight;
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipOval(
                    child: Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: color,
                      ),
                      child: Center(
                        child: Text(
                          score,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight
                                .bold, // Example of AppFontWeight.bodyBold
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
