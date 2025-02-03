import 'package:flutter/widgets.dart';

class CustomBoxImageAssets extends StatelessWidget {
  final double? height;
  final double? width;
  final String image;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final BorderRadius? borderRadius;
  final BoxFit? fit;

  const CustomBoxImageAssets(
      {super.key,
      this.height,
      this.width,
      required this.image,
      this.padding,
      this.borderRadius,
      this.child,
      this.fit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? double.maxFinite,
      padding: padding,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: fit ?? BoxFit.contain,
        ),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
