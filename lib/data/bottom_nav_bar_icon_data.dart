import 'package:peak_physique/models/custom_icon_model.dart';
import 'package:peak_physique/models/custom_icons.dart';

class BottomnavBarIconData {
  List<CustomIconModel> data = [
    CustomIconModel(icon: CustomIcons.home, iconName: 'HOME'),
    CustomIconModel(
      icon: CustomIcons.gym,
      iconName: 'GYM',
    ),
    CustomIconModel(
      icon: CustomIcons.add_circle,
      iconName: 'ADD',
    ),
    CustomIconModel(
      icon: CustomIcons.calendar,
      iconName: 'CALENDER',
    ),
    CustomIconModel(
      icon: CustomIcons.profile,
      iconName: 'PROFILE',
    ),
  ];
}
