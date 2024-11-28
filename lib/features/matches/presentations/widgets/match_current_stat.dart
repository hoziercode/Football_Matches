// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_matches/core/config/app_colors.dart';
import 'package:football_matches/core/utils/extensions/context_extension.dart';
import 'package:football_matches/features/matches/data/models/match.dart';
import 'package:football_matches/gen/assets.gen.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class MatchCurrentStat extends StatelessWidget {
  const MatchCurrentStat({
    super.key,
    required this.match,
  });
  final MatchModel match;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      elevation: 6,
      shadowColor: AppColors.backgroundDark.withOpacity(0.15),
      child: Column(
        children: [
          Container(
            width: context.screenWidth,
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  15.r,
                ),
                topRight: Radius.circular(
                  15.r,
                ),
              ),
              color: context.colorScheme.primary,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  match.teams.home.logo,
                  width: 24.w,
                ),
                Text(
                  "Match Current Stat",
                  style: context.textTheme.bodySmall!.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
                Image.asset(
                  match.teams.away.logo,
                  width: 24.w,
                ),
              ],
            ),
          ),
          Assets.icons.line25.svg(),
        ],
      ),
    );
  }
}
