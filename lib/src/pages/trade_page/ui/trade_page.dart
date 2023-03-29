import 'package:cryptocurrency_exchange_app/src/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../config/app_colors.dart';
import '../../../domain/entities/candle_item.dart';
import '../../../utils/chart_filter_button_widget.dart';

part 'components/trade_page_bottom_navbar_widget.dart';
part 'components/trade_page_appbar_widget.dart';
part 'components/trade_page_prices_widget.dart';
part 'components/trade_page_chart_time_filter_widget.dart';
part 'components/trade_page_chart_content_filter_widget.dart';
part 'components/trade_page_exchanges_filter_widget.dart';
part 'components/trade_page_exchanges_list_widget.dart';
part 'components/trade_page_main_chart_widget.dart';
part 'components/trade_page_vertical_chart_widget.dart';

class TradePageWidget extends StatelessWidget {
  const TradePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColors.mainBlue,
        appBar: const _TradePageAppBarWidget(),
        bottomNavigationBar: const _TradePageBottomNavBarWidget(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Column(
            children: [
              const _TradePagePricesWidget(
                totalPrice: '43,810.58',
                hightPrice: '45,504.32',
                lowPrice: '42,128.40',
                volume: '205.08M',
              ),
              SizedBox(height: 16.h),
              const _TradePageChartTimeFilterWidget(),
              const _TradePageMainChartWidget(),
              SizedBox(height: 10.h),
              const _TradePageVerticalChartWidget(),
              SizedBox(height: 16.h),
              const _TradePageChartContentFilterWidget(),
              SizedBox(height: 24.h),
              const _TradePageExchangesFilterWidget(),
              SizedBox(height: 17.h),
              Row(
                children: [
                  const Expanded(
                    child: _TradePageExchangesListWidget(
                      exchangesListType: ExchangesListType.buy,
                      exchanges: {
                        '0.1600343': '43,805',
                        '0.2500543': '43,804',
                        '0.324341': '43,798',
                        '0.340584': '43,796',
                        '1.249345': '43,794',
                        '1.342242': '43,790',
                      },
                    ),
                  ),
                  SizedBox(width: 6.w),
                  const Expanded(
                    child: _TradePageExchangesListWidget(
                      exchangesListType: ExchangesListType.sell,
                      exchanges: {
                        '43,805': '0.1600343',
                        '43,804': '0.2500543',
                        '43,798': '0.324341',
                        '43,796': '0.340584',
                        '43,794': '1.249345',
                        '43,790': '1.342242',
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
