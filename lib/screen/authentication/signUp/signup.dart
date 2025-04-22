import 'package:electrocar_app/config/widgets/custom_Elevated_Button.dart';
import 'package:electrocar_app/config/widgets/custom_text_button.dart';
import 'package:electrocar_app/config/widgets/custom_text_form.dart';
import 'package:electrocar_app/core/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hidePassword = true;
  bool hideRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(AssetsManager.logo),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextFormField(
                    label: "Name",
                    prefixIcon: Icons.person_2,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomTextFormField(
                    label: "Email",
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    isSecureText: hidePassword,
                    suffixIcon:
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                    onSuffixIconPressed: _onSuffixIconPressed,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    label: "RePassword",
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    isSecureText: hideRePassword,
                    suffixIcon: hideRePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onSuffixIconPressed: _onSuffixIconRePressed,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomElevatedButton(
                    buttonTitle: "Create Account",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account ? ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomTextButton(
                        alignment: Alignment.centerLeft,
                        label: "Login",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSuffixIconPressed() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  void _onSuffixIconRePressed() {
    setState(() {
      hideRePassword = !hideRePassword;
    });
  }
}
