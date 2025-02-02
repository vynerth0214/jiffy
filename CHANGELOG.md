## 2.1.1

- Minor bug fixes on ordinal date formating
Previously

`Jiffy([2014, 4, 23]).format("EEEE MMMM do, yyyy"); // Wednesday April 23o, 2014`

Updated

`Jiffy([2014, 4, 23]).format("EEEE MMMM do, yyyy"); // Wednesday April 23rd, 2014`

## 2.1.0

- Ordinal date parsing and formating
In Jiffy you can now parse and format with ordinal date. e.g
```dart
Jiffy().format("MMM do yyyy"); // Oct 19th 2019
```
It also supports locales for the following

`"en", "es", "fr", "frch", "frca", "it", "itch", "ja", "ko", "pt", "ptbr", "zh", "zhcn", "zhhk", "zhtw", "de", "deat", "dech"`

- Added `daysInMonth` method to get number of days for specific months .e.g
```dart
Jiffy([2016, 1]).daysInMonth; // 31
Jiffy([2016, 2]).daysInMonth; // 28
Jiffy([2017, 2]).daysInMonth; // 29
```

## 2.0.0

Added params to add and subtract methods
Example
```dart
Jiffy().add(days: 1);
Jiffy().add(years: 2, months: 1, duration: Duration(days: 1, hours: 30));
```

## 1.1.0

Add more functionality to parsing. These are
- Array parsing `Jiffy([2019, 10, 21]);`
- Map parsing `Jiffy({"year": 2019, "month": 10});`
- Dart DateTime parsing `Jiffy(DateTime.now());`
- String parsing `Jiffy("2019-10-21");`

## 1.0.0

- Initial version, created by Stagehand
