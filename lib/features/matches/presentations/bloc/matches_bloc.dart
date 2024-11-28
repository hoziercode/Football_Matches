import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_matches/features/matches/data/models/match.dart';
import 'package:football_matches/features/matches/data/models/season_type.dart';
import 'package:football_matches/gen/assets.gen.dart';

part 'matches_event.dart';
part 'matches_state.dart';

class MatchesBloc extends Bloc<MatchesEvent, MatchesState> {
  MatchesBloc() : super(MatchesInitial()) {
    on<SeasonIndexChange>(_onSeasonIndexChange);
  }

  // List to hold the fetched matches
  List<MatchModel> pastMatches = [];

  // List of available seasons
  List<SeasonType> seasons = [
    SeasonType(
      icon: Assets.icons.network.svg(),
      title: "All",
    ),
    SeasonType(
      icon: Assets.images.epl.image(width: 28.w),
      title: "EPL",
    ),
    SeasonType(
      icon: Assets.images.laliga.image(width: 28.w),
      title: "La Liga",
    ),
    SeasonType(
      icon: Assets.images.serieA.image(width: 28.w),
      title: "Serie A",
    ),
    SeasonType(
      icon: Assets.images.bun.image(width: 32.w),
      title: "Bundesliga",
    ),
    SeasonType(
      icon: Assets.images.league1.image(width: 39.w),
      title: "Ligue 1",
    ),
  ];

  // Event handler for season index change
  Future<void> _onSeasonIndexChange(
      SeasonIndexChange event, Emitter<MatchesState> emit) async {
    try {
      pastMatches = await fetchMatches();
      emit(MatchesLoaded(matches: pastMatches));
    } catch (e) {
      emit(MatchesError(errorMessage: 'Failed to load matches'));
    }
    emit(MatchesSeasonIndexUpdated(seasonIndex: event.seasonIndex));
  }

  // Function to fetch matches from the JSON file
  Future<List<MatchModel>> fetchMatches() async {
    try {
      final String response = await rootBundle.loadString(Assets.json.matches);

      final Map<String, dynamic> jsonData = json.decode(response);

      final List<dynamic> matchesData = jsonData['matches'];

      return matchesData.map((match) => MatchModel.fromJson(match)).toList();
    } catch (e) {
      throw Exception('Failed to parse matches JSON');
    }
  }
}
