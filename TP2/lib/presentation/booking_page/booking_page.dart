import '../booking_page/widgets/thirteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:siti_s_application1/core/app_export.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlineBlack,
                child: SizedBox(
                    height: 701.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      _buildSeventeen(context),
                      CustomImageView(
                          imagePath: ImageConstant.imgIstockphoto112,
                          height: 375.v,
                          alignment: Alignment.bottomCenter),
                      _buildTen(context),
                      _buildEight(context),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 50.h, top: 228.v),
                              child: Text("20",
                                  style: CustomTextStyles.mitrWhiteA700))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 301.v, right: 53.h),
                              child: Text("Februari 2024",
                                  style: CustomTextStyles
                                      .titleLargeMitrWhiteA700))),
                      _buildEighteen(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(32.h, 41.v, 40.h, 639.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      width: 13.h,
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 21.adaptSize,
                      width: 21.adaptSize)
                ])));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 336.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIstockphoto112336x390,
                  height: 336.v,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 23.h, top: 34.v, right: 23.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 110.h),
                                child: Text("BOOKING",
                                    style: theme.textTheme.headlineSmall)),
                            SizedBox(height: 16.v),
                            SizedBox(
                                height: 113.v,
                                width: 344.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 110.h,
                                                  top: 24.v,
                                                  right: 48.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "dr. Muhamad Irfan, S, Ked.",
                                                        style: CustomTextStyles
                                                            .bodyLargeMontagaWhiteA700),
                                                    SizedBox(height: 14.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 50.h),
                                                        child: Text("Dr. Umum",
                                                            style: CustomTextStyles
                                                                .bodyLargeMontagaWhiteA700))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineBlack
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle139,
                                                    height: 113.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 34.v,
                                                        bottom: 23.v),
                                                    child: Column(children: [
                                                      Text(
                                                          "Dr. Ridho Alif Naufaldy",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      Text("Dokter Gigi",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]))
                                              ])))
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 3.v),
            decoration: AppDecoration.fillBlueGrayCc
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text("Available at :",
                          style: theme.textTheme.bodyMedium)),
                  SizedBox(height: 160.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("Rp. 45.000",
                          style: CustomTextStyles.bodyLargeMitrWhiteA700)),
                  SizedBox(height: 8.v)
                ])));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 4.h, bottom: 31.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                      runSpacing: 11.v,
                      spacing: 11.h,
                      children: List<Widget>.generate(
                          6, (index) => ThirteenItemWidget())),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 43.v,
                      width: 358.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 43.v,
                                width: 358.h,
                                decoration: BoxDecoration(
                                    color: appTheme.tealA400,
                                    borderRadius:
                                        BorderRadius.circular(20.h)))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: Text("Konsultasi Sekarang",
                                    style: theme.textTheme.bodyMedium)))
                      ]))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
