import 'package:flutter/material.dart';
import 'package:varun_s_application27/core/app_export.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.6,
                0.9,
              ],
              colors: [
                Color(0xff132740),
                Color(0xff000000),
                Color(0xff020314),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 43.v),
            child: Column(
              children: [
                SizedBox(height: 2.v),
                // _buildSevenRow(context),
                SizedBox(height: 10.v),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "S", style: CustomTextStyles.displayMedium40),
                      TextSpan(
                          text: "ummary",
                          style: CustomTextStyles.displayMediumAlata40)
                    ]),
                    textAlign: TextAlign.left),
                Container(
                  height: 646.v,
                  width: 393.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.02),
                    borderRadius: BorderRadius.circular(20.h),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                  child: Text("summary"),
                ),
                SizedBox(height: 21.v),
                _buildFourRow(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  // Widget _buildSevenRow(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 18.h, right: 14.h),
  //       child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  //         CustomImageView(
  //             imagePath: ImageConstant.imgIcons8Back96Xxxhdpi,
  //             height: 30.adaptSize,
  //             width: 30.adaptSize,
  //             margin: EdgeInsets.only(bottom: 2.v),
  //             onTap: () {
  //               onTapImgIconsBackXxxhdpi(context);
  //             }),
  //         GestureDetector(
  //             onTap: () {
  //               onTapTxtBack(context);
  //             },
  //             child: Padding(
  //                 padding: EdgeInsets.only(left: 2.h),
  //                 child: Text("Back", style: theme.textTheme.headlineSmall))),
  //         Spacer(),
  //         CustomImageView(
  //             imagePath: ImageConstant.imgNotification,
  //             height: 28.v,
  //             width: 7.h,
  //             margin: EdgeInsets.symmetric(vertical: 2.v))
  //       ]));
  // }

  /// Section Widget
  Widget _buildFourRow(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.copy,
              size: 30,
            ),
            label: Text(
              "Copy",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 90,
            child: VerticalDivider(
              thickness: 2,
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.downloading_rounded,
              size: 30,
            ),
            label: Text(
              "Download",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgIconsBackXxxhdpi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
