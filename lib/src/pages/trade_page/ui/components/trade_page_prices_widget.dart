part of '../trade_page.dart';

class _TradePagePricesWidget extends StatelessWidget {
  const _TradePagePricesWidget({
    Key? key,
    required String totalPrice,
    required String hightPrice,
    required String lowPrice,
    required String volume,
  })  : _totalPrice = totalPrice,
        _hightPrice = hightPrice,
        _lowPrice = lowPrice,
        _volume = volume,
        super(key: key);

  final String _totalPrice;
  final String _hightPrice;
  final String _lowPrice;
  final String _volume;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _totalPrice,
                style: AppTextStyles.bold(
                  fontSize: 24.sp,
                  color: AppColors.mainGreen,
                  font: Font.gothic,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                '~ \$$_totalPrice',
                style: AppTextStyles.semiBold(
                  fontSize: 13.sp,
                  color: AppColors.mainDisable,
                  font: Font.gothic,
                ),
              ),
            ],
          ),
        ),
        Text(
          '24h Hight\n24h Low\n24h Volume',
          style: AppTextStyles.semiBold(
            fontSize: 13.sp,
            color: AppColors.mainDisable,
            font: Font.gothic,
          ).copyWith(
            height: 20.h / 13.sp,
          ),
        ),
        SizedBox(width: 32.w),
        Text(
          '$_hightPrice\n$_lowPrice\n$_volume',
          textAlign: TextAlign.right,
          style: AppTextStyles.medium(
            fontSize: 13.sp,
            color: Colors.white,
            font: Font.jost,
          ).copyWith(
            height: 20.h / 13.sp,
          ),
        ),
      ],
    );
  }
}
