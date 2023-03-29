part of '../trade_page.dart';

class _TradePageBottomNavBarWidget extends StatelessWidget {
  const _TradePageBottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: AppColors.mainBlue,
        border: Border(
          top: BorderSide(
            color: AppColors.mainActiveBlue,
            width: 0.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BottomNavBarButtonWidget(
            color: AppColors.mainGreen,
            title: 'Buy',
            onTap: () {},
          ),
          _BottomNavBarButtonWidget(
            color: AppColors.mainRed,
            title: 'Sell',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _BottomNavBarButtonWidget extends StatelessWidget {
  const _BottomNavBarButtonWidget({
    Key? key,
    required Color color,
    required String title,
    required void Function()? onTap,
  })  : _title = title,
        _color = color,
        _onTap = onTap,
        super(key: key);

  final Color _color;
  final String _title;
  final void Function()? _onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40.h,
          width: 160.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(6.w),
          ),
          child: Text(
            _title,
            style: AppTextStyles.semiBold(
              fontSize: 16.sp,
              color: Colors.white,
              font: Font.gothic,
            ).copyWith(
              height: 11.h / 8.sp,
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _onTap,
              splashFactory: NoSplash.splashFactory,
              borderRadius: BorderRadius.circular(6.w),
            ),
          ),
        ),
      ],
    );
  }
}
