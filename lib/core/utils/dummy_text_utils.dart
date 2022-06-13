class DummyTextUtils {
  static final DummyTextUtils _utils = DummyTextUtils._internal();

  factory DummyTextUtils() {
    return _utils;
  }

  static const dummyName = 'اسم تست';
  static const dummyName2 = 'اسم تست دو';
  static const dummyPhoneNumber = '9351819905';
  static const dummyPhoneNumber2 = '9194092607';
  static const dummyNationalCode = '0480918848';
  static const dummyLeftPlate = '12';
  static const dummyLetterPlate = 'ل';
  static const dummyRightPlate = '345';
  static const dummyIranPlate = '67';

  DummyTextUtils._internal();
}