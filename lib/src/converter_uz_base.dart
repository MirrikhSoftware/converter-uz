class ConverterUz {
  static ConverterUz instance = ConverterUz._();
  ConverterUz._();

  ConvertType _convertType = ConvertType.crToLt;
  ConvertType get convertType => _convertType;
  set setConvertType(ConvertType convertType) => _convertType = convertType;

  final Map<String, String> _letters = {
    'А': 'A',
    'Б': 'B',
    'В': 'V',
    'Г': 'G',
    'Д': 'D',
    'Е': 'E',
    'З': 'Z',
    'И': 'I',
    'Й': 'Y',
    'К': 'K',
    'Л': 'L',
    'М': 'M',
    'Н': 'N',
    'О': 'O',
    'П': 'P',
    'Р': 'R',
    'С': 'S',
    'Т': 'T',
    'У': 'U',
    'Ф': 'F',
    'Х': 'X',
    'Ц': 'C',
    'Ы': 'I',
    'а': 'a',
    'б': 'b',
    'в': 'v',
    'г': 'g',
    'д': 'd',
    'е': 'e',
    'з': 'z',
    'и': 'i',
    'й': 'y',
    'к': 'k',
    'л': 'l',
    'м': 'm',
    'н': 'n',
    'о': 'o',
    'п': 'p',
    'р': 'r',
    'с': 's',
    'т': 't',
    'у': 'u',
    'ф': 'f',
    'х': 'x',
    'ц': 'c',
    'ы': 'i',
    "'": '',
    '"': '',
    'Э': 'E',
    'э': 'e',
    "Қ": "Q",
    "қ": "q",
    "Ҳ": "H",
    "ҳ": "h"
  };

  final Map<String, String> _complicatedSymbols = {
    'Ё': 'Yo',
    'Ж': 'J',
    'Щ': 'Sh',
    'Ш': 'Sh',
    'Ч': 'Ch',
    'Э': 'E',
    'Ю': 'Yu',
    'Я': 'Ya',
    "Ў": "O`",
    "Ғ": "G'",
    'ё': 'yo',
    'ж': 'zh',
    'щ': 'sh',
    'ш': 'sh',
    'ч': 'ch',
    'э': 'e',
    'ъ': '"',
    'ь': "'",
    'ю': 'yu',
    'я': 'ya',
    "ў": "o`",
    "ғ": "g'",
  };

  String toCyrillic({required String source}) {
    if (source.isEmpty) return source;

    var regExp = RegExp(
      r'([a-z]+)',
      caseSensitive: false,
      multiLine: true,
    );

    if (!regExp.hasMatch(source)) return source;

    var sourceSymbols = [];
    var unTranslit = [];
    var deTransliteratedSymbol = {};

    _complicatedSymbols.forEach((key, value) {
      source = source.replaceAll(value, key);
    });

    sourceSymbols = source.split('');

    _letters.forEach((key, value) {
      deTransliteratedSymbol[value] = key;
    });

    for (final element in sourceSymbols) {
      unTranslit.add(deTransliteratedSymbol.containsKey(element)
          ? deTransliteratedSymbol[element]
          : element);
    }

    return unTranslit.join();
  }

  String toLatin({required String source}) {
    if (source.isEmpty) return source;

    var regExp = RegExp(
      r'([а-я]+)',
      caseSensitive: false,
      multiLine: true,
    );

    if (!regExp.hasMatch(source)) return source;

    var translit = [];
    var sourceSymbols = [];

    sourceSymbols = source.split('');

    _letters.addAll(_complicatedSymbols);

    for (final element in sourceSymbols) {
      translit.add(_letters.containsKey(element) ? _letters[element] : element);
    }

    return translit.join();
  }

  String convert({required String source}) => _convertType == ConvertType.crToLt
      ? toLatin(source: source)
      : toCyrillic(source: source);
}

extension ConverterExtension on String {
  String toCyrillic() => ConverterUz.instance.toCyrillic(source: this);
  String toLatin() => ConverterUz.instance.toLatin(source: this);
  String convert() => ConverterUz.instance.convert(source: this);
}

enum ConvertType { crToLt, ltToCr }
