import 'package:flutter/material.dart';
import '../../ui/Cards/card_tap.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class IwiHubHomePage extends StatelessWidget {
  const IwiHubHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          // ----------------------------
          // Bento Container Starts here
          // ----------------------------
          child: StaggeredGrid.count(
            // bento container spacing can be changed here
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 2,
            children: [
              // ----------------------------
              // OPPORTUNITY BUTTON HERE
              // ----------------------------
              StaggeredGridTile.count(
                //button sizing
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: TappableCard(
                  showGradient: true,
                  background: Stack(),
                  imagePath: 'assets/images/beach_pohutukawa.JPG',
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
              // ----------------------------
              // TIKANGA BASICS BUTTON HERE
              // ----------------------------
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: TappableCard(
                  background: Stack(),
                  imagePath: 'assets/images/tikanga_background.png',
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: TappableCard(
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: TappableCard(
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: TappableCard(
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: TappableCard(
                  onTap: () {
                    debugPrint('Card tapped');
                  },
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
