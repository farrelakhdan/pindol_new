import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  bool overflow = true;

  bool isExpanded = false;
  bool isOverflowing = false;

  void checkOverflow(TextStyle style, BoxConstraints constraints, String text) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 4, // This should match your collapsed maxLines
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: constraints.maxWidth);

    isOverflowing = textPainter.didExceedMaxLines;
  }

  void setOverflow() {
    setState(() {
      overflow = !overflow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (!isExpanded) {
        checkOverflow(
            const TextStyle(
              fontSize: AppFontSize.bodySmall,
              fontWeight: AppFontWeight.bodyRegular,
              color: AppColors.textColorSecondary,
            ),
            constraint,
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.dwdwdwdwdadawdawdawdwadwadwadwadawdawdwadwad");
      }
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xffE0E5EC),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(1),
              blurRadius: 6,
              offset:
                  const Offset(-2, -2), // Arahkan ke kiri (-x) dan atas (-y)
              spreadRadius: 1,
            ),
            // Bayangan untuk bawah dan kanan (warna hitam)
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 6,
              offset:
                  const Offset(2, 2), // Arahkan ke kanan (+x) dan bawah (+y)
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Detail Produk",
              style: TextStyle(
                fontSize: 12,
                fontWeight: AppFontWeight.bodyBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "Kategori\t:",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyMedium,
                      color: Color(0xff5B5B5B)),
                ),
                Text(
                  " Kategori",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: AppFontWeight.bodyMedium,
                      color: Color(0xff5B5B5B)),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Color(0xff5B5B5B),
            ),
            const Text(
              "Detail Produk",
              style: TextStyle(
                fontSize: 12,
                fontWeight: AppFontWeight.bodyBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedCrossFade(
              firstChild: _buildText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.dwdwdwdwdadawdawdawdwadwadwadwadawdawdwadwad",
                null,
                overflow,
              ),
              secondChild: _buildText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.dwdwdwdwdadawdawdawdwadwadwadwadawdawdwadwad",
                4,
                overflow,
              ),
              crossFadeState: overflow
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
            const SizedBox(
              height: 10,
            ),
            if (isOverflowing)
              InkWell(
                onTap: () {
                  setOverflow();
                },
                child: Text(
                  overflow ? "Selengkapnya" : "Sembunyikan",
                  style: const TextStyle(
                      fontSize: AppFontSize.bodyExtraSmall,
                      fontWeight: AppFontWeight.bodyBold,
                      color: Color(0xffD84141)),
                ),
              ),
          ],
        ),
      );
    });
  }
}

Widget _buildText(
  String text,
  int? maxLines,
  bool overflow,
) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: AppFontSize.bodyExtraSmall,
      fontWeight: AppFontWeight.bodyRegular,
      color: AppColors.textColorSecondary,
    ),
    maxLines: maxLines,
    overflow: maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
  );
}
