part of '../trade_page.dart';

class _TradePageExchangesFilterWidget extends StatefulWidget {
  const _TradePageExchangesFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TradePageExchangesFilterWidget> createState() =>
      _TradePageExchangesFilterWidgetState();
}

class _TradePageExchangesFilterWidgetState
    extends State<_TradePageExchangesFilterWidget> {
  int _selectedIndex = 0;

  void _onTapExchangesFilter({required int index}) {
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
          title: 'Order Book',
          onTap: _onTapExchangesFilter,
          fontSize: 14.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 1,
          selectedIndex: _selectedIndex,
          title: 'Trades',
          onTap: _onTapExchangesFilter,
          fontSize: 14.sp,
        ),
        SizedBox(width: 10.w),
        ChartFilterButtonWidget(
          index: 2,
          selectedIndex: _selectedIndex,
          title: 'Info',
          onTap: _onTapExchangesFilter,
          fontSize: 14.sp,
        ),
      ],
    );
  }
}
