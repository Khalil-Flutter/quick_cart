import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_cart/features/authentication/screens/sign_up/email/verify_email_screen.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/sign_up/sign_up_controller.dart';

class QCSignUpForm extends StatelessWidget {
  const QCSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final signUpController = Get.put(SignUpController());

    return Form(
      child: Column(
        children: [
          /// First Name & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: QCTexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: QCSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: QCTexts.lastName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: QCSizes.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            decoration: InputDecoration(
              labelText: QCTexts.username,
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
            ),
          ),
          SizedBox(
            height: QCSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            decoration: InputDecoration(
              labelText: QCTexts.email,
              prefixIcon: Icon(
                Iconsax.direct,
              ),
            ),
          ),
          SizedBox(
            height: QCSizes.spaceBtwInputFields,
          ),

          /// Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: QCTexts.phoneNo,
              prefixIcon: Icon(
                Iconsax.call,
              ),
            ),
          ),
          SizedBox(
            height: QCSizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
            decoration: InputDecoration(
              labelText: QCTexts.password,
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
            ),
          ),
          SizedBox(
            height: QCSizes.spaceBtwItems,
          ),

          /// Terms & Conditions checkbox
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // check box
              Obx(
                () => InkWell(
                  onTap: () {
                    signUpController.checkBoxValueToggle();
                  },
                  child: Icon(
                    signUpController.checkBoxValue.value
                        ? Icons.check_circle
                        : Icons.check_circle,
                    size: QCSizes.iconMd,
                    color: signUpController.checkBoxValue.value
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                  ),
                ),
              ),

              /// privacy policy and terms of use
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${QCTexts.iAgreeTo} ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: QCTexts.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: QCHelperFunctions.isDarkMode(context)
                                ? QCColors.white
                                : QCColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                QCHelperFunctions.isDarkMode(context)
                                    ? QCColors.white
                                    : QCColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: " ${QCTexts.and} ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: QCTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: QCHelperFunctions.isDarkMode(context)
                                ? QCColors.white
                                : QCColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                QCHelperFunctions.isDarkMode(context)
                                    ? QCColors.white
                                    : QCColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: QCSizes.spaceBtwItems,
          ),

          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text(
                QCTexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
