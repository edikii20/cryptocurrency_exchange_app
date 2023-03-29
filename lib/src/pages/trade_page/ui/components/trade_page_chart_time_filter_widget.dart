part of '../trade_page.dart';

class _TradePageChartTimeFilterWidget extends StatefulWidget {
  const _TradePageChartTimeFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TradePageChartTimeFilterWidget> createState() =>
      _TradePageChartTimeFilterWidgetState();
}

class _TradePageChartTimeFilterWidgetState
    extends State<_TradePageChartTimeFilterWidget> {
  int _selectedIndex = 0;

  void _onTapTimeFilter({required int index}) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChartFilterButtonWidget(
          index: 0,
          selectedIndex: _selectedIndex,
          title: 'Time',
          onTap: _onTapTimeFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 1,
          selectedIndex: _selectedIndex,
          title: '5m',
          onTap: _onTapTimeFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 2,
          selectedIndex: _selectedIndex,
          title: '15m',
          onTap: _onTapTimeFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 3,
          selectedIndex: _selectedIndex,
          title: '4H',
          onTap: _onTapTimeFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 4,
          selectedIndex: _selectedIndex,
          title: 'More',
          onTap: _onTapTimeFilter,
          fontSize: 13.sp,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/icons/filter.svg',
            width: 18.w,
            height: 18.w,
          ),
        ),
      ],
    );
  }
}
