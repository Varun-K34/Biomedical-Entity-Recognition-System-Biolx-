import 'package:flutter/material.dart';
import 'package:varun_s_application27/core/app_export.dart';
// import 'package:varun_s_application27/widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          )),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 47.v),
            child: Column(
              children: [
                _buildHeaderRow(context),
                Spacer(flex: 64),
                SizedBox(
                  height: 206.v,
                  width: 256.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              width: 256.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Welcome to\n",
                                        style: CustomTextStyles
                                            .displayMediumAlata),
                                    TextSpan(
                                        text: "B",
                                        style:
                                            CustomTextStyles.displayMedium48),
                                    TextSpan(
                                        text: "i",
                                        style: CustomTextStyles
                                            .displayMediumEmilysCandy),
                                    TextSpan(
                                        text: "oLx",
                                        style: CustomTextStyles.displayMedium48)
                                  ]),
                                  textAlign: TextAlign.center))),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 83.h),
                          padding: EdgeInsets.all(6.h),
                          decoration: AppDecoration
                              .gradientPrimaryContainerToOnErrorContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder45),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder38),
                            child: Container(
                              height: 77.adaptSize,
                              width: 77.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: AppDecoration.gradientIndigoToIndigoC
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder38),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgReplicatePredi67x67,
                                      height: 67.adaptSize,
                                      width: 67.adaptSize,
                                      radius: BorderRadius.circular(33.h),
                                      alignment: Alignment.center),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 64.adaptSize,
                                      width: 64.adaptSize,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIce164x64,
                                              height: 64.adaptSize,
                                              width: 64.adaptSize,
                                              radius:
                                                  BorderRadius.circular(32.h),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLogo61x61,
                                              height: 61.adaptSize,
                                              width: 61.adaptSize,
                                              radius:
                                                  BorderRadius.circular(30.h),
                                              alignment: Alignment.center)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 19.v),
                Text("Your Biomedical Text Companion",
                    style: theme.textTheme.headlineSmall),
                Spacer(flex: 40),
                _buildTextOrDocumentTextField(
                  context,
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildTextOrDocumentTextField(
        //   context,
        // ),
      ),
    );
  }

  // Section Widget
  Widget _buildHeaderRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcons8Back96Xxxhdpi,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
              onTap: () {
                onTapImgIconsBackXxxhdpi(context);
              }),
          GestureDetector(
              onTap: () {
                onTapTxtBack(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text("Back", style: theme.textTheme.headlineSmall))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgEllipsisVIcon,
              height: 28.v,
              width: 7.h,
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  // Section Widget
  Widget _buildTextOrDocumentTextField(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: 150.0, // Set a maximum height for the text field
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0), // Adjust color as needed
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0xff8ECFFD)),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Handle attachment icon tap
            },
            icon: Icon(
              Icons.attach_file_outlined,
              color: Color(0xff8ECFFD),
              size: 35,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                style: TextStyle(color: Color(0xff8ECFFD)),
                maxLines: 5,
                minLines: 1,
                maxLength: null,
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  hintStyle: TextStyle(color: Color(0xff8ECFFD)),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle send icon tap
              Navigator.pushNamed(context, AppRoutes.displayScreen);
            },
            icon: Icon(
              Icons.send,
              color: Color(0xff8ECFFD),
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

  // Navigates to the splashScreen when the action is triggered.
  onTapImgIconsBackXxxhdpi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  // Navigates to the splashScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }
}

//  import 'package:flutter/material.dart';

//  class MyWidget extends StatelessWidget {
//    const MyWidget({Key? key}) : super(key: key);

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Column(
//          children: [
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: [
//                TextButton.icon(
//                  onPressed: () {},
//                  icon: Icon(Icons.arrow_back_ios_new_outlined),
//                  label: Text(
//                    "back",
//                  ),
//                ),
//              ],
//            ),

// //         ],
// //       ),
// //     );
// //   }
// // }
