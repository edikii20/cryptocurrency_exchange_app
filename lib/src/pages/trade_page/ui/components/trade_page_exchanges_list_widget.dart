part of '../trade_page.dart';

enum ExchangesListType { buy, sell }

class _TradePageExchangesListWidget extends StatelessWidget {
  const _TradePageExchangesListWidget({
    Key? key,
    required ExchangesListType exchangesListType,
    required Map<String, String> exchanges,
  })  : _exchangesListType = exchangesListType,
        _exchanges = exchanges,
        super(key: key);

  final ExchangesListType _exchangesListType;
  final Map<String, String> _exchanges;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _exchangesListType == ExchangesListType.buy
                  ? 'Quantity'
                  : 'Sell Price',
              style: AppTextStyles.bold(
                fontSize: 11.sp,
                color: AppColors.mainSecondary,
                font: Font.gothic,
              ).copyWith(
                height: 20.h / 11.sp,
              ),
            ),
            Text(
              _exchangesListType == ExchangesListType.buy
                  ? 'Buy Price'
                  : 'Quantity',
              style: AppTextStyles.bold(
                fontSize: 11.sp,
                color: AppColors.mainSecondary,
                font: Font.gothic,
              ).copyWith(
                height: 20.h / 11.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        ..._exchanges.entries.map(
          (exchange) => _ExchangeWidget(
            exchangesListType: _exchangesListType,
            quantity: _exchangesListType == ExchangesListType.buy
                ? exchange.key
                : exchange.value,
            price: _exchangesListType == ExchangesListType.buy
                ? exchange.value
                : exchange.key,
          ),
        )
      ],
    );
  }
}

class _ExchangeWidget extends StatelessWidget {
  const _ExchangeWidget({
    Key? key,
    required ExchangesListType exchangesListType,
    required String quantity,
    required String price,
  })  : _exchangesListType = exchangesListType,
        _quantity = quantity,
        _price = price,
        super(key: key);

  final ExchangesListType _exchangesListType;
  final String _quantity;
  final String _price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: _exchangesListType == ExchangesListType.buy
          ? Alignment.centerRight
          : Alignment.centerLeft,
      children: [
        Container(
          width: (20 * double.parse(_quantity) * 5).w,
          height: 24.h,
          color: _exchangesListType == ExchangesListType.buy
              ? AppColors.mainGreen.withOpacity(0.12)
              : AppColors.mainRed.withOpacity(0.12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _exchangesListType == ExchangesListType.buy ? _quantity : _price,
              style: AppTextStyles.semiBold(
                fontSize: 12.sp,
                color: _exchangesListType == ExchangesListType.buy
                    ? Colors.white
                    : AppColors.mainRed,
                font: Font.gothic,
              ).copyWith(
                height: 2.h / 1.sp,
              ),
            ),
            Text(
              _exchangesListType == ExchangesListType.buy ? _price : _quantity,
              style: AppTextStyles.semiBold(
                fontSize: 12.sp,
                color: _exchangesListType == ExchangesListType.buy
                    ? AppColors.mainGreen
                    : Colors.white,
                font: Font.gothic,
              ).copyWith(
                height: 2.h / 1.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
