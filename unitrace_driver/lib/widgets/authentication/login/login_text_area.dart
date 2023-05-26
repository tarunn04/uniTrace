import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controllers/login_controller.dart';
import '../../../utils/constants.dart';
import '../../../utils/text_themes.dart';
import 'login_form_field.dart';


class LoginTextArea extends StatelessWidget {
  LoginTextArea({
    super.key,
  });

  final AppAuthController _appAuthController  = Get.find<AppAuthController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        
        height:Get.height * 0.57,
        width: Get.width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),

          color: loginFieldBgColor
        ),
       
        child: Padding(
          padding: const EdgeInsets.only(top:20),
          
          child: Column(
            children: [
              
              Text("DRIVER LOGIN",
                style: MyTextTheme.headline4.copyWith(
                  color: primaryActiveTextColor
                ),
              ),
              Container(
                height: 4,
                width: 200,
                color: authUnderlineActive
                .withOpacity(0.8),
              ),
              LoginFormField(),

            ],
          ),
        ),
      ));
  }
}

