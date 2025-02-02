import 'package:jiffy/src/utils/regex.dart';

String replaceToLocaleNum(String input, String locale) {
  Map<String, List<String>> localeNumbers = {
    "en": ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    "ar": ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'],
    "hi": ['०', '१', '२', '३', '४', '५', '६', '७', '८', '९']
  };
  for (int i = 0; i < localeNumbers["en"].length; i++) {
    input = input.replaceAll(localeNumbers["en"][i], localeNumbers[locale][i]);
  }
  return input;
}

String replaceParseInput(String input) {
  return input
      .replaceFirst(' pm', ' PM')
      .replaceFirst(' am', ' AM')
      .replaceFirst(matchOrdinalDates(), "");
}

String replacePatternInput(String input) {
  return input.replaceFirst('do', 'd');
}

String replaceOrdinalDatePattern(String input, String suffix) {
  final regex = matchOrdinalDatePattern().allMatches(input);
  var pattern = input;
  regex.forEach((match) {
    if (match.group(1) == "do") {
      pattern = input.replaceRange(
          match.start, match.end, "d${suffix.isNotEmpty ? "'$suffix'" : ""}");
    }
  });
  return pattern;
}

String replaceLocateHyphen(String input) {
  return input.replaceAll(RegExp(r'[-_]'), '').toLowerCase();
}
