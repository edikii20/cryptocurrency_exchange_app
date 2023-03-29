part of '../trade_page.dart';

class _TradePageMainChartWidget extends StatefulWidget {
  const _TradePageMainChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TradePageMainChartWidget> createState() =>
      _TradePageMainChartWidgetState();
}

class _TradePageMainChartWidgetState extends State<_TradePageMainChartWidget> {
  late ZoomPanBehavior _zoomPanBehavior;
  final List<CandleItem> _wickList = [
    CandleItem.fromJson(
      {
        "time": 1667651400000,
        "open": 21379.78,
        "high": 21379.78,
        "low": 21329.8,
        "close": 21329.8,
      },
    ),
    CandleItem.fromJson(
      {
        "time": 1667653200000,
        "open": 21304.06,
        "high": 21328.06,
        "low": 21299.17,
        "close": 21299.17,
      },
    ),
  ];

  @override
  void initState() {
    super.initState();
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      enableDoubleTapZooming: true,
      enableSelectionZooming: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      zoomPanBehavior: _zoomPanBehavior,
      series: <CandleSeries>[
        CandleSeries<CandleItem, DateTime>(
          dataSource: _wickList,
          bearColor: AppColors.mainRed,
          bullColor: AppColors.mainGreen,
          enableTooltip: true,
          xValueMapper: (CandleItem wick, _) {
            int x = int.parse(wick.time.toString());
            DateTime time = DateTime.fromMillisecondsSinceEpoch(x);
            return time;
          },
          lowValueMapper: (CandleItem wick, _) => wick.low,
          highValueMapper: (CandleItem wick, _) => wick.high,
          openValueMapper: (CandleItem wick, _) => wick.open,
          closeValueMapper: (CandleItem wick, _) => wick.close,
        )
      ],
      primaryXAxis: DateTimeAxis(
        visibleMinimum: DateTime.fromMillisecondsSinceEpoch(
          int.parse(_wickList[0].time.toString()),
        ),
        visibleMaximum: DateTime.fromMillisecondsSinceEpoch(
          int.parse(_wickList[_wickList.length - 1].time.toString()),
        ),
        interval: 5,
        labelStyle: AppTextStyles.medium(
          fontSize: 12.sp,
          color: AppColors.mainDisable,
          font: Font.gothic,
        ),
        intervalType: DateTimeIntervalType.minutes,
        minorGridLines: const MinorGridLines(width: 0),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
        opposedPosition: true,
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.mainDisable.withOpacity(0.08),
        ),
        axisLine: const AxisLine(width: 0),
        labelStyle: AppTextStyles.medium(
          fontSize: 12.sp,
          color: AppColors.mainDisable,
          font: Font.gothic,
        ),
        majorTickLines: const MajorTickLines(width: 0),
      ),
      margin: EdgeInsets.only(top: 20.h),
    );
  }
}
