import 'package:flutter/material.dart';
import 'package:peak_physique/data/bottom_nav_bar_icon_data.dart';
import 'package:peak_physique/constant.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:peak_physique/components/animated_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onIconTap;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onIconTap,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final BottomnavBarIconData navBarItem = BottomnavBarIconData();
  double animatedBarWidth = 20;

  @override
  Widget build(BuildContext context) {
    double animatedIconSize = 25;
    double unAnimatedIconSize = 20;

    return Container(
      height: 60,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: kBottomNavBarColour,
          stops: [0.23, 0.70],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          navBarItem.data.length,
          (index) {
            bool isSelected = widget.selectedIndex == index;

            return InkWell(
              onTap: () {
                print("Icon tapped: $index"); // Debug: Print the index
                widget.onIconTap(index); // Notify parent of the tap
              },
              child: Column(
                children: [
                  AnimatedBar(
                    isSelected: isSelected,
                    animatedBarWidth: animatedBarWidth,
                    selectedbarcolour: kSelectedNavBarIconColour,
                    unSelectedbarcolour: kUnselectedNavBarIconColour,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                    width: isSelected ? animatedIconSize : unAnimatedIconSize,
                    height: isSelected ? animatedIconSize : unAnimatedIconSize,
                    child: GradientIcon(
                      icon: navBarItem.data[index].icon,
                      size: isSelected ? animatedIconSize : unAnimatedIconSize,
                      gradient: LinearGradient(
                        colors: isSelected
                            ? kSelectedNavBarIconColour
                            : kUnselectedNavBarIconColour,
                        stops: [0.0, 1.0],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
