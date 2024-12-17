import 'package:flutter/material.dart';
import 'package:peak_physique/data/bottom_nav_bar_icon_data.dart';
import 'package:peak_physique/widgets/animated_bar.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/widgets/custom_icon.dart';

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
  double animatedIconSize = 25;
  double unAnimatedIconSize = 20;

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: !isGradient ? customTheme!.customPrimaryColor : null,
        gradient: isGradient
            ? LinearGradient(
                colors: customTheme!.customPrimaryGradientColor!.colors,
                stops: [0.23, 0.70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: customTheme!.upwardShadowColor!,
            offset: Offset(-3, -3),
            blurRadius: 30,
          ),
          BoxShadow(
            color: customTheme.downWardShadowColor!,
            offset: Offset(3, 3),
            blurRadius: 30,
          ),
        ],
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
                        color: isSelected && !isGradient
                            ? customTheme.customSecondaryColor
                            : null,
                        gradient: isGradient
                            ? LinearGradient(
                                colors: customTheme
                                    .customSecondaryGradientColor!.colors,
                                stops: [0.0, 1.0], // Gradient stop positions
                                begin: Alignment
                                    .topLeft, // Gradient direction start
                                end: Alignment
                                    .bottomRight, // Gradient direction end
                              )
                            : null,
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                        width:
                            isSelected ? animatedIconSize : unAnimatedIconSize,
                        height:
                            isSelected ? animatedIconSize : unAnimatedIconSize,
                        child: CustomIcon(
                          icon: navBarItem.data[index].icon,
                          color: isSelected && !isGradient
                              ? customTheme.customSecondaryColor
                              : customTheme.inactiveColor,
                          size: isSelected
                              ? animatedIconSize
                              : unAnimatedIconSize,
                          gradient: isSelected && isGradient
                              ? LinearGradient(
                                  colors: customTheme
                                      .customSecondaryGradientColor!.colors,
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
