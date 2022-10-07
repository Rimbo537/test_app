import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/resources/app_icons.dart';
import 'package:test_app/resources/app_images.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.bgCardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage(AppImages.logoImg),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  BottomSheetStrings.nameCompany,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.cafeIcon,
                      color: AppColors.textCardCompanyColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      BottomSheetStrings.establishmentType,
                      style: TextStyle(
                        color: AppColors.textCardCompanyColor,
                        fontSize: 19,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
