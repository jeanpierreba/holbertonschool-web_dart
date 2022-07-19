int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamA_FT = teamA['Free throws']!;
  int teamA_2P = teamA['2 pointer']! * 2;
  int teamA_3P = teamA['3 pointer']! * 3;
  int teamB_FT = teamB['Free throws']!;
  int teamB_2P = teamB['2 pointer']! * 2;
  int teamB_3P = teamB['3 pointer']! * 3;
  int teamA_total = teamA_FT + teamA_2P + teamA_3P;
  int teamB_total = teamB_FT + teamB_2P + teamB_3P;
  if (teamA_total < teamB_total) return 2;
  else if (teamB_total < teamA_total) return 1;
  return 0;
}
