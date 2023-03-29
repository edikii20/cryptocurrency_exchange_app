part of '../trade_page.dart';

class _TradePageVerticalChartWidget extends StatefulWidget {
  const _TradePageVerticalChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TradePageVerticalChartWidget> createState() =>
      __TradePageVerticalChartWidgetState();
}

class __TradePageVerticalChartWidgetState
    extends State<_TradePageVerticalChartWidget> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart();
  }
}
