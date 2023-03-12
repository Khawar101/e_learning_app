import 'package:flutter/material.dart';

class AppUtils {
  largeTextStyle({color}) {
    return TextStyle(
      fontSize: 18,
      color: color,
    );
  }

  extraLargeTextStyle({color}) {
    return TextStyle(
      fontSize: 28,
      color: color,
    );
  }

  extraBoldLargeTextStyle({color}) {
    return TextStyle(
      fontSize: 26,
      color: color,
      fontWeight: FontWeight.w800,
    );
  }

  largeBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  xlargeBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 20,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  mediumTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
    );
  }

  mediumBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  smallTextStyle({color}) {
    return TextStyle(
      fontSize: 13,
      color: color,
    );
  }

  smallTextMediumBoldStyle({color}) {
    return TextStyle(
      fontSize: 13,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  smallBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 13,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  extraSmallTextStyle({color}) {
    return TextStyle(
      fontSize: 10,
      color: color,
    );
  }

  extraSmallBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 10,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  bigButton(
      {width,
      height,
      borderColor,
      onTap,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      shadowColors,
      textColor,
      fontSize,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth == null ? 2 : borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: shadowColors ?? Colors.black.withOpacity(0.2),
              blurRadius: 4,
            )
          ],
        ),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
              fontWeight: fontWeight ?? FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  line({width}) {
    return Container(
      width: width,
      height: 1,
      color: Colors.grey[300],
    );
  }

  categoriesWidget(
      {text, icon, onTap, height, width, style, iconSize, boxShadow}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: const Color(0xFFEBEBEB),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: boxShadow ??
                  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
            ),
            child: Center(
              child: Image.asset(
                icon,
                width: iconSize ?? 35,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: style,
          ),
        ],
      ),
    );
  }

  productWidget({name, price, image, description, check, onTap1, onTap2}) {
    return GestureDetector(
      onTap: onTap1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 155,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                  top: 8.0,
                ),
                child: GestureDetector(
                  onTap: onTap2,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                      child: Image.asset(
                        check == false
                            ? 'assets/unlike_icon.png'
                            : 'assets/like_icon.png',
                        width: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: largeBoldTextStyle(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: smallTextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            price,
            style: largeBoldTextStyle(),
          ),
        ],
      ),
    );
  }
}