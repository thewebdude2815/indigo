import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:indigo/components/bizInfoWidget.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/salesReportCategoryWidget.dart';
import 'package:indigo/components/salesReportFoodWidget.dart';
import 'package:indigo/components/salesReportPaymentWidget.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({super.key});

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  late List<_ChartDataPayment> dataPayment;
  late TooltipBehavior tooltipPayment;
  @override
  void initState() {
    dataPayment = [
      _ChartDataPayment('David', 25),
      _ChartDataPayment('Steve', 38),
      _ChartDataPayment('Jack', 34),
      _ChartDataPayment('Others', 52)
    ];
    tooltipPayment = TooltipBehavior(enable: true);
    data = [
      _ChartData('08', 12),
      _ChartData('10', 15),
      _ChartData('12', 30),
      _ChartData('14', 6.4),
      _ChartData('16', 14),
      _ChartData('18', 14),
      _ChartData('20', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    initialFocusDate: DateTime(2023, 5),
    initialDateSelected: DateTime(2022, 3, 15),
    endDateSelected: DateTime(2022, 3, 20),
  );
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Sales Report',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  Container(
                    color: kWhiteColor,
                    height: isPortrait ? 560.h : 640.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pick Date',
                              style: coolGraySB16.copyWith(color: kCoolGray2),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.close,
                                color: kCoolGray,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        SizedBox(
                          height: 300.h,
                          child: ScrollableCleanCalendar(
                            padding: EdgeInsets.zero,
                            calendarController: calendarController,
                            monthTextStyle:
                                coolGraySB16.copyWith(color: kCoolGray2),
                            weekdayTextStyle: coolGraySB12.copyWith(
                                color: kCoolGray2, fontSize: 10.sp),
                            dayTextStyle:
                                coolGrayR14.copyWith(color: kCoolGray2),
                            daySelectedBackgroundColor: kIndigo50,
                            dayDisableColor: kOtherRed,
                            daySelectedBackgroundColorBetween: kIndigo100,
                            layout: Layout.BEAUTY,
                            dayRadius: 50,
                            calendarCrossAxisSpacing: 0,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    border: Border.all(color: kCoolGray6)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 13.h),
                                child: Center(
                                  child: Text(
                                    '1 May 2020',
                                    style:
                                        coolGrayR12.copyWith(color: kCoolGray2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Container(
                              height: 2.h,
                              width: 20.w,
                              decoration: const BoxDecoration(color: kCoolGray),
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    border: Border.all(color: kCoolGray6)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 13.h),
                                child: Center(
                                  child: Text(
                                    '1 May 2020',
                                    style:
                                        coolGrayR12.copyWith(color: kCoolGray2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 56.h,
                        ),
                        const IndigoButton(
                            border: false, text: 'Set Filter Date', color: true)
                      ],
                    ),
                  ),
                  isScrollControlled: true,
                );
              },
              child: Container(
                height: isPortrait ? 56.h : 102.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: kCoolGray3,
                child: Row(
                  children: [
                    Text(
                      'Today - 15 May 2020',
                      style: coolGrayR14.copyWith(color: kCoolGray5),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: kCoolGray5,
                      size: 24,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SALES SUMMARY',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: true,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SeperatorWidget(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HOURLY SALES',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SfCartesianChart(
                      plotAreaBorderWidth: 0,
                      primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(width: 0),
                      ),
                      primaryYAxis: NumericAxis(
                        majorGridLines: const MajorGridLines(width: 0),
                        minimum: 0,
                        maximum: 40,
                        interval: 10,
                      ),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries<_ChartData, String>>[
                        ColumnSeries<_ChartData, String>(
                            dataSource: data,
                            xValueMapper: (_ChartData data, _) => data.x,
                            yValueMapper: (_ChartData data, _) => data.y,
                            borderRadius: BorderRadius.circular(4.r),
                            color: kIndigo400)
                      ])
                ],
              ),
            ),
            const SeperatorWidget(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 24.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BY PAYMENT TYPE',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SfCircularChart(
                    tooltipBehavior: _tooltip,
                    annotations: [
                      CircularChartAnnotation(
                        widget: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'TOTAL COLLECTED',
                              style: coolGraySB12.copyWith(color: kCoolGray),
                              children: [
                                TextSpan(
                                  text: '\n\$200',
                                  style: coolGraySB16.copyWith(
                                      fontWeight: FontWeight.w700),
                                )
                              ]),
                        ),
                      ),
                    ],
                    series: [
                      DoughnutSeries<_ChartDataPayment, String>(
                          innerRadius: '100',
                          cornerStyle: CornerStyle.bothCurve,
                          radius: '80%',
                          dataSource: dataPayment,
                          xValueMapper: (_ChartDataPayment data, _) => data.x,
                          yValueMapper: (_ChartDataPayment data, _) => data.y,
                          name: 'Gold')
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  const SalesReportPaymentWidget(
                    upperBorder: true,
                  ),
                  const SalesReportPaymentWidget(
                    upperBorder: false,
                  ),
                  const SalesReportPaymentWidget(
                    upperBorder: false,
                  ),
                  const SalesReportPaymentWidget(
                    upperBorder: false,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: kCoolGray3),
                    )),
                    child: Row(
                      children: [
                        Text(
                          'Total Collected',
                          style: coolGraySB14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          '2',
                          style: coolGraySB14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          '\$140',
                          style: coolGraySB14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SeperatorWidget(),
            SizedBox(
              height: 24.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    'TOP PRODUCT',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                ),
                const SalesReportFoodWidget(showBorder: true),
                const SalesReportFoodWidget(showBorder: true),
                const SalesReportFoodWidget(showBorder: true),
                const SalesReportFoodWidget(showBorder: false),
              ],
            ),
            const SeperatorWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    'TOP CATEGORY',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const SalesReportCategoryWidget(showBorder: true),
                const SalesReportCategoryWidget(showBorder: true),
                const SalesReportCategoryWidget(showBorder: true),
                const SalesReportCategoryWidget(showBorder: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

class _ChartDataPayment {
  _ChartDataPayment(this.x, this.y);

  final String x;
  final double y;
}
