part of testx;

extension StringMatchers on String {
  String shouldBeBlank() {
    _assert(isBlank, '$str should contain only whitespace');
    return this;
  }

  String shouldNotBeBlank() {
    _assert(isBlank, '$str should not contain only whitespace');
    return this;
  }

  String shouldBeEmpty() {
    _assert(isEmpty, '$str should be empty');
    return this;
  }

  String shouldNotBeEmpty() {
    _assert(!isEmpty, '$str should not be empty');
    return this;
  }

  String shouldBeLowerCase() {
    _assert(isLowerCase, '$str should be lower case');
    return this;
  }

  String shouldNotBeLowerCase() {
    _assert(!isLowerCase, '$str should not be lower case');
    return this;
  }

  String shouldBeUpperCase() {
    _assert(isUpperCase, '$str should be upper case');
    return this;
  }

  String shouldNotBeUpperCase() {
    _assert(!isUpperCase, '$str should not be upper case');
    return this;
  }

  String shouldContain(String substr) {
    _assert(
      contains(substr),
      '$str should contain the substring ${substr.str}',
    );
    return this;
  }

  String shouldNotContain(String substr) {
    _assert(
      !contains(substr),
      '$str should not contain the substring ${substr.str}',
    );
    return this;
  }

  String shouldContainOnlyOnce(String substr) {
    _assert(
      indexOf(substr) != -1 && indexOf(substr) == lastIndexOf(substr),
      '$str should contain the substring ${substr.str} exactly once',
    );
    return this;
  }

  String shouldNotContainOnlyOnce(String substr) {
    _assert(
      indexOf(substr) == -1 || indexOf(substr) != lastIndexOf(substr),
      '$str should not contain substring ${substr.str} exactly once',
    );
    return this;
  }

  String shouldContainOnlyDigits() {
    _assert(
      chars.all((it) => it.isInt),
      '$str should contain only digits',
    );
    return this;
  }

  String shouldNotContainOnlyDigits() {
    _assert(
      chars.any((it) => !it.isInt),
      '$str should not contain only digits',
    );
    return this;
  }

  String shouldContainADigit() {
    _assert(
      chars.any((it) => it.isInt),
      '$str should contain at least one digit',
    );
    return this;
  }

  String shouldNotContainADigit() {
    _assert(
      chars.none((it) => it.isInt),
      '$str should not contain any digit',
    );
    return this;
  }

  String shouldStartWith(String substr) {
    _assert(
      startsWith(substr),
      '$str should start with ${substr.str}',
    );
    return this;
  }

  String shouldNotStartWith(String substr) {
    _assert(
      !startsWith(substr),
      '$str should not start with ${substr.str}',
    );
    return this;
  }

  String shouldEndWith(String substr) {
    _assert(
      endsWith(substr),
      '$str should end with ${substr.str}',
    );
    return this;
  }

  String shouldNotEndWith(String substr) {
    _assert(
      !endsWith(substr),
      '$str should not end with ${substr.str}',
    );
    return this;
  }

  String shouldHaveLenght(int length) {
    _assert(
      this.length == length,
      '$str should have length $length but was ${this.length}',
    );
    return this;
  }

  String shouldNotHaveLenght(int length) {
    _assert(
      this.length != length,
      '$str should not have length $length',
    );
    return this;
  }

  String shouldHaveMinLenght(int minLength) {
    _assert(
      length >= minLength,
      '$str should have minimum length of $minLength',
    );
    return this;
  }

  String shouldNotHaveMinLenght(int minLength) {
    _assert(
      length < minLength,
      '$str should have maximum length of ${minLength - 1}',
    );
    return this;
  }

  String shouldHaveMaxLenght(int maxLength) {
    _assert(
      length <= maxLength,
      '$str should have maximum length of $maxLength',
    );
    return this;
  }

  String shouldNotHaveMaxLenght(int maxLength) {
    _assert(
      length > maxLength,
      '$str should have minimum length of ${maxLength + 1}',
    );
    return this;
  }

  String shouldHaveSameLengthAs(String other) {
    _assert(
      length == other.length,
      '$str should have the same length as ${other.str}',
    );
    return this;
  }

  String shouldNotHaveSameLengthAs(String other) {
    _assert(
      length != other.length,
      '$str should not have the same length as ${other.str}',
    );
    return this;
  }
}
