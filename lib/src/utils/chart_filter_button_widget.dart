import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_colors.dart';
import '../config/app_text_styles.dart';

class ChartFilterButtonWidget extends StatelessWidget {
  const ChartFilterButtonWidget({
    Key? key,
    required int index,
    required int selectedIndex,
    required String title,
    required double fontSize,
    required void Function({required int index}) onTap,
  })  : _index = index,
        _selectedIndex = selectedIndex,
        _title = title,
        _onTap = onTap,
        _fontSize = fontSize,
        super(key: key);

  final int _index;
  final int _selectedIndex;
  final String _title;
  final double _fontSize;
  final void Function({required int index}) _onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(index: _index),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          color: _selectedIndex == _index
              ? AppColors.mainActiveBlue
              : Colors.transparent,
          borderRadius: BorderRadius.circular(6.w),
        ),
        child: Text(
          _title,
          style: AppTextStyles.semiBold(
            fontSize: _fontSize,
            color:
                _selectedIndex == _index ? Colors.white : AppColors.mainDisable,
            font: Font.gothic,
          ).copyWith(
            height: 20.h / 13.sp,
          ),
        ),
      ),
    );
  }
}
