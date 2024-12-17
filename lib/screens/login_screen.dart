import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';
import 'package:peak_physique/constant_gradient.dart';
import 'package:peak_physique/models/custom_icons.dart';
import 'package:peak_physique/widgets/custom_icon.dart';
import 'package:peak_physique/widgets/custom_scaffold.dart';
import 'package:peak_physique/widgets/custom_text_color.dart';
import 'package:peak_physique/widgets/custom_text_form_field.dart';
import 'package:peak_physique/widgets/custom_app_bar.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();
  bool _hidePassword = false;
  final FocusNode _focusNode = FocusNode();
  final FocusNode _focusNode1 = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
    _focusNode1.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode1.dispose();
    _userNameController.dispose();
    _userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
    bool isGradient = customTheme?.customPrimaryGradientColor?.colors != null;

    return CustomScaffold(
        appBar: CustomAppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: CustomIcon(
                icon: CustomIcons.dragon,
                size: 38,
                color: !isGradient
                    ? customTheme!.customSecondaryColor
                    : customTheme!.inactiveColor,
                gradient: isGradient
                    ? linearGradient(
                        customTheme.customSecondaryGradientColor!.colors)
                    : null,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomText(
                  text: 'Login to your account',
                  size: 25,
                ),
              ),
              CustomTextFormField(
                textInputAction: TextInputAction.next,
                focusNode: _focusNode,
                label: 'Email',
                controller: _userNameController,
                hintText: 'Enter your email address',
                prefixIcon: CustomIcon(
                  icon: CustomIcons.envelope,
                  color: _focusNode.hasFocus && !isGradient
                      ? customTheme.customSecondaryColor
                      : customTheme.inactiveColor,
                  gradient: _focusNode.hasFocus && isGradient
                      ? linearGradient(
                          customTheme.customSecondaryGradientColor!.colors)
                      : null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                textInputAction: TextInputAction.send,
                focusNode: _focusNode1,
                label: 'Password',
                controller: _userPasswordController,
                obscureText: _hidePassword,
                hintText: 'Enter Password',
                prefixIcon: CustomIcon(
                  icon: CustomIcons.lock,
                  color: _focusNode1.hasFocus && !isGradient
                      ? customTheme.customSecondaryColor
                      : customTheme.inactiveColor,
                  gradient: _focusNode1.hasFocus && isGradient
                      ? linearGradient(
                          customTheme.customSecondaryGradientColor!.colors)
                      : null,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  },
                  icon: CustomIcon(
                    icon:
                        _hidePassword ? Icons.visibility_off : Icons.visibility,
                    color: _focusNode1.hasFocus && !isGradient
                        ? customTheme.customSecondaryColor
                        : customTheme.inactiveColor,
                    gradient: _focusNode1.hasFocus && isGradient
                        ? linearGradient(
                            customTheme.customSecondaryGradientColor!.colors)
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
