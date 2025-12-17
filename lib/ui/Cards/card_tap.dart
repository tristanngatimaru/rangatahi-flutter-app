import 'package:flutter/material.dart';

class TappableCard extends StatelessWidget {
  //provide the type of data that is to be inputed
  final Widget? background;
  final Widget child;
  final VoidCallback? onTap;
  final double width;
  final double height;
  final Color? splashColor;
  final String? imagePath;
  final bool? showGradient;

  //provide the data name that will be asked when importing the component
  const TappableCard({
    super.key,
    required this.child,
    this.background,
    this.onTap,
    this.width = 300,
    this.height = 100,
    this.splashColor,
    this.imagePath,
    this.showGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        splashColor:
            splashColor ?? Theme.of(context).colorScheme.primary.withAlpha(30),
        child: Ink(
          width: width,
          height: height,
          child: Stack(
            children: [
              Ink.image(
                //background image
                image: AssetImage(imagePath ?? 'assets/images/default.png'),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: showGradient == true
                        ? LinearGradient(
                            colors: [
                              Colors.black.withValues(alpha: 0.7),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )
                        : null,
                  ),
                ),
              ),
              // TEXT / CONTENT OVERLAY (TOP LAYER) //please look into this first, the content alignment work needs to be done here
              Positioned(
                left: 12,
                bottom: 12,
                right: 12,
                child: Column(children: [Text('hello'), Text("hello there")]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
