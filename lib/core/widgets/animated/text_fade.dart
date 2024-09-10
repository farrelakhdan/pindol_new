import 'package:flutter/material.dart';

class AnimatedTextFade extends StatefulWidget {
  final String teks;
  final int maxLine;
  final double size;
  final FontWeight weight;
  final Color color;
  final AlignmentGeometry align;
  final TextAlign tAlign;
  const AnimatedTextFade(
      {super.key,
      required this.teks,
      required this.maxLine,
      required this.size,
      required this.weight,
      required this.color,
      required this.align,
      required this.tAlign});

  @override
  State<AnimatedTextFade> createState() => _AnimatedTextFadeState();
}

class _AnimatedTextFadeState extends State<AnimatedTextFade> {
  bool overflow = false;

  void setOverflow() {
    setState(() {
      overflow = !overflow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setOverflow();
      },
      child: AnimatedCrossFade(
        firstChild: _buildText(widget.teks, null, overflow, widget.size,
            widget.weight, widget.color, widget.align, widget.tAlign),
        secondChild: _buildText(
            widget.teks,
            widget.maxLine,
            overflow,
            widget.size,
            widget.weight,
            widget.color,
            widget.align,
            widget.tAlign),
        crossFadeState:
            overflow ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}

Widget _buildText(String text, int? maxLines, bool overflow, double size,
    FontWeight weight, Color color, AlignmentGeometry align, TextAlign tAlign) {
  return Container(
    alignment: align,
    child: Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
      textAlign: tAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
    ),
  );
}
