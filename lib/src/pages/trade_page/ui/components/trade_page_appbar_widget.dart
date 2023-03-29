part of '../trade_page.dart';

class _TradePageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const _TradePageAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size(double.infinity, 95.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 11.h),
            const _TabBarWidget(),
            SizedBox(height: 16.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/arrow_left.svg',
                    width: 7.w,
                    height: 13.h,
                  ),
                ),
                SizedBox(width: 18.w),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/stripes.svg',
                    width: 15.w,
                    height: 9.h,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  'BTC/USDT',
                  style: AppTextStyles.semiBold(
                    fontSize: 20.sp,
                    color: Colors.white,
                    font: Font.gothic,
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 64.w,
                  height: 24.h,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: AppColors.mainGreen.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(6.w),
                  ),
                  child: Text(
                    '+2.38%',
                    style: AppTextStyles.medium(
                      fontSize: 14.sp,
                      color: AppColors.mainGreen,
                      font: Font.gothic,
                    ).copyWith(
                      height: 10.h / 7.sp,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/scaling.svg',
                    height: 20.w,
                    width: 20.w,
                  ),
                ),
                SizedBox(width: 20.w),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 20.w,
                    width: 20.w,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TabBarWidget extends StatefulWidget {
  const _TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_TabBarWidget> createState() => __TabBarWidgetState();
}

class __TabBarWidgetState extends State<_TabBarWidget> {
  int _selectedIndex = 1;

  void _onTapTabBar({required int index}) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.w),
        border: Border.all(
          color: AppColors.mainActiveBlue,
          width: 0.5,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Row(
        children: [
          _TabBarTabWidget(
            index: 0,
            selectedIndex: _selectedIndex,
            title: 'Charts',
            onTap: _onTapTabBar,
          ),
          _TabBarTabWidget(
            index: 1,
            selectedIndex: _selectedIndex,
            title: 'Trade',
            onTap: _onTapTabBar,
          ),
        ],
      ),
    );
  }
}

class _TabBarTabWidget extends StatelessWidget {
  const _TabBarTabWidget({
    Key? key,
    required int index,
    required int selectedIndex,
    required String title,
    required void Function({required int index}) onTap,
  })  : _index = index,
        _selectedIndex = selectedIndex,
        _title = title,
        _onTap = onTap,
        super(key: key);

  final int _index;
  final int _selectedIndex;
  final String _title;
  final void Function({required int index}) _onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onTap(index: _index),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _selectedIndex == _index
                ? AppColors.mainActiveBlue
                : Colors.transparent,
            borderRadius: BorderRadius.circular(6.w),
          ),
          child: Text(
            _title,
            style: _selectedIndex == _index
                ? AppTextStyles.semiBold(
                    fontSize: 14.sp,
                    color: Colors.white,
                    font: Font.gothic,
                  ).copyWith(
                    height: 11.h / 7.sp,
                  )
                : AppTextStyles.bold(
                    fontSize: 14.sp,
                    color: AppColors.mainDisable,
                    font: Font.gothic,
                  ).copyWith(
                    height: 11.h / 7.sp,
                  ),
          ),
        ),
      ),
    );
  }
}
