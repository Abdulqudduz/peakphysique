import 'package:flutter/material.dart';
import 'package:peak_physique/data/bottom_nav_bar_icon_data.dart';
import 'package:peak_physique/constant_color.dart';
// import 'package:gradient_icon/gradient_icon.dart';
import 'package:peak_physique/widgets/animated_bar.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/widgets/custom_icon_color.dart';

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
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return Container(
      height: 60,
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: !isGradient
            ? Theme.of(context).bottomNavigationBarTheme.backgroundColor
            : null,
        gradient: isGradient
            ? LinearGradient(
                colors: customTheme!.customPrimaryGradientColor!.colors,
                stops: [0.23, 0.70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          navBarItem.data.length,
          (index) {
            bool isSelected = widget.selectedIndex == index;

            return Material(
              color: Colors.transparent,
              child: InkWell(
                // Change color to match your theme
                borderRadius:
                    BorderRadius.circular(30.0), // Match the border radius here
                highlightColor: Theme.of(context)
                    .extension<CustomTheme>()!
                    .highlightAndSplashColor!
                    .withOpacity(0.1),
                splashColor: Theme.of(context)
                    .extension<CustomTheme>()!
                    .highlightAndSplashColor!
                    .withOpacity(0.1),
                onTap: () {
                  print("Icon tapped: $index"); // Debug: Print the index
                  widget.onIconTap(index); // Notify parent of the tap
                },
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedBar(
                        isSelected: isSelected,
                        animatedBarWidth: animatedBarWidth,
                        animatedBarcolor: KCustomSecondaryGradientColor,
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                        width:
                            isSelected ? animatedIconSize : unAnimatedIconSize,
                        height:
                            isSelected ? animatedIconSize : unAnimatedIconSize,
                        child: CustomIconColor(
                          icon: navBarItem.data[index].icon,
                          solidColor: isSelected && !isGradient
                              ? Colors.green
                              : KInactiveColor,
                          size: isSelected
                              ? animatedIconSize
                              : unAnimatedIconSize,
                          gradient: isSelected && isGradient
                              ? LinearGradient(
                                  colors: Theme.of(context)
                                      .extension<CustomTheme>()!
                                      .customSecondaryGradientColor!
                                      .colors,
                                  stops: [0.0, 1.0],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                              : null,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
