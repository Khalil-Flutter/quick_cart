import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/login/login_controller.dart';

class QCLoginForm extends StatelessWidget {
  const QCLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: QCSizes.lg,
        ),
        child: Column(
          children: [
            /// Email Text Form Field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: QCTexts.email,
              ),
            ),
            SizedBox(
              height: QCSizes.spaceBtwInputFields,
            ),

            /// Password Text Form Field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: QCTexts.password,
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
              ),
            ),
            SizedBox(
              height: QCSizes.sm,
            ),

            /// Remember Me & Forgot Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// Remember Me
                    // check box
                    Obx(
                      () => InkWell(
                        onTap: () {
                          loginController.checkBoxValueToggle();
                        },
                        child: Icon(
                          loginController.checkBoxValue.value
                              ? Icons.check_circle
                              : Icons.check_circle,
                          size: QCSizes.iconMd,
                          color: loginController.checkBoxValue.value
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    Text(
                      QCTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),

                /// Forgot Password
                InkWell(
                  onTap: () {},
                  child: Text(
                    QCTexts.forgetPassword,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: QCSizes.lg,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  QCTexts.signIn,
                ),
              ),
            ),
            SizedBox(
              height: QCSizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  QCTexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
