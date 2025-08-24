import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hide_and_squeaks/view/components/custom_from_card/custom_from_card.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_images/app_images.dart';
import '../../../../utils/app_strings/app_strings.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_image/custom_image.dart';
import '../../../components/custom_text/custom_text.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            imageSrc: AppImages.backgroundImage,
            boxFit: BoxFit.fill,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStrings.forgotPassword,
                  fontSize: 24.w,
                  fontWeight: FontWeight.w600,
                  bottom: 8.h,
                ),
                CustomText(
                  text: AppStrings.loginAccountTitle,
                  fontSize: 12.w,
                  fontWeight: FontWeight.w400,
                  bottom: 150.h,
                ),
                CustomText(
                  text: AppStrings.emailConfirmation,
                  fontSize: 24.w,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: AppStrings.emailConfirmationTitle,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                  maxLines: 2,
                  bottom: 30.h,
                ),
                CustomFormCard(
                    title: AppStrings.email,
                    hintText: AppStrings.enterYourEmail,
                    controller: TextEditingController()),
                SizedBox(height: 50.h,),
                CustomButton(
                  onTap: () {
                     Get.toNamed(AppRoutes.verifyPicCodeScreen);
                  },
                  title: AppStrings.sendVerification,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
