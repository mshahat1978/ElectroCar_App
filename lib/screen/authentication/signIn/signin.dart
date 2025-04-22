import 'package:electrocar_app/config/widgets/custom_Elevated_Button.dart';
import 'package:electrocar_app/config/widgets/custom_text_button.dart';
import 'package:electrocar_app/config/widgets/custom_text_form.dart';
import 'package:electrocar_app/core/assets_manager.dart';
import 'package:electrocar_app/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: Image.asset(AssetsManager.logo)),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextFormField(
                      label: "Email", prefixIcon: Icons.email),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    isSecureText: hidePassword,
                    suffixIcon:
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                    onSuffixIconPressed: _onSuffixIconPressed,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextButton(
                    alignment: Alignment.centerRight,
                    label: "Forget Password ?",
                    onPressed: () {},
                  ),
                  CustomElevatedButton(
                    buttonTitle: "LogIn",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have Account ? ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomTextButton(
                        alignment: Alignment.centerLeft,
                        label: "Create Account",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 10.w,
                          endIndent: 10.w,
                          color: ColorsManager.blue,
                        ),
                      ),
                      Text(
                        "Or",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: ColorsManager.blue,
                            ),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10.w,
                          endIndent: 10.w,
                          color: ColorsManager.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(
                            width: 1,
                            color: ColorsManager.blue,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.googleIcon),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Login With Google",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
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
}
