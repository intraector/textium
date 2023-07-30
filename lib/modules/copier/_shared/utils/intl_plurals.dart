import 'package:intl/intl.dart';

import '../../../../core/_shared/utils/extensions/string.dart';
import '../../../../core/l10n/generated/l10n.dart';

abstract class IntlPlurals {
  static String showYear(String count, {required String ifZero}) {
    return Intl.plural(
      int.tryParse(count) ?? 0,
      zero: ifZero,
      one: '$count ${S.current.god}',
      two: '$count ${S.current.goda}',
      few: '$count ${S.current.goda}',
      many: '$count ${S.current.let}',
      other: '$count ${S.current.let}',
    );
  }

  static String totalVacancies(String count) {
    return Intl.plural(
      int.tryParse(count) ?? 0,
      one: '$count ${S.current.singleVacancy}',
      two: '$count ${S.current.vacancyCount2}',
      few: '$count ${S.current.vacancyCount2}',
      many: '$count ${S.current.vacancyCount3}',
      other: '$count ${S.current.vacancyCount3}',
    );
  }

  static String showVacancies(String count) {
    return Intl.plural(
      int.tryParse(count) ?? 0,
      one: '$count ${S.current.vacancyCount1}',
      two: '$count ${S.current.vacancyCount2}',
      few: '$count ${S.current.vacancyCount2}',
      many: '$count ${S.current.vacancyCount3}',
      other: '$count ${S.current.vacancyCount3}',
    );
  }

  static String? formattedPeriod(
    String? beginDate,
    String? endDate,
    bool? untilNow, {
    required String ifZero,
  }) {
    final startDate = beginDate?.toDate;
    if (startDate == null) return null;
    final monthFormat = DateFormat('LLLL y');
    var output = '';
    output += monthFormat.format(startDate).capitalize()!;
    DateTime? finishDate;
    if (untilNow == true) {
      finishDate = DateTime.now();
      output += ' - ${S.current.presentTime}';
    } else {
      finishDate = endDate.toDate;
      if (finishDate == null) return output;
      output += ' - ';
      output += monthFormat.format(finishDate).capitalize()!;
    }
    final diff = finishDate.difference(startDate).inDays ~/ 365;
    final diffString = IntlPlurals.showYear(diff.toString(), ifZero: ifZero).toLowerCase();
    return output += ' ($diffString)';
  }
}
