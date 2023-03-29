part of '../trade_page.dart';

class _TradePageChartContentFilterWidget extends StatefulWidget {
  const _TradePageChartContentFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TradePageChartContentFilterWidget> createState() =>
      _TradePageChartContentFilterWidgetState();
}

class _TradePageChartContentFilterWidgetState
    extends State<_TradePageChartContentFilterWidget> {
  int _selectedIndex = 0;

  void _onTapContentFilter({required int index}) {
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
          title: 'MA',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 5.w),
        ChartFilterButtonWidget(
          index: 1,
          selectedIndex: _selectedIndex,
          title: 'BOLL',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 5.w),
        ChartFilterButtonWidget(
          index: 2,
          selectedIndex: _selectedIndex,
          title: 'EMA',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 5.w),
        ChartFilterButtonWidget(
          index: 3,
          selectedIndex: _selectedIndex,
          title: 'Volume',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 5.w),
        ChartFilterButtonWidget(
          index: 4,
          selectedIndex: _selectedIndex,
          title: 'MACD',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
        SizedBox(width: 5.w),
        ChartFilterButtonWidget(
          index: 5,
          selectedIndex: _selectedIndex,
          title: 'More',
          onTap: _onTapContentFilter,
          fontSize: 13.sp,
        ),
      ],
    );
  }
}
