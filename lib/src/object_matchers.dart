part of testx;

extension ObjectMatchers<T> on T {
  T shouldBe(dynamic other) {
    _assert(this == other, '$str should be equal to ${other.str}');
    return this;
  }

  T shouldNotBe(dynamic other) {
    _assert(this != other, '$str should not be equal to ${other.str}');
    return this;
  }

  T shouldBeA<E>() {
    _assert(this is E, 'Type of $str should be $E');
    return this;
  }

  T shouldNotBeA<E>() {
    _assert(this is! E, 'Type of $str should not be $E');
    return this;
  }

  T shouldBeExactlyA<E>() {
    _assert(runtimeType == E,
        'Type of $str should be exactly $E but was $runtimeType');
    return this;
  }

  T shouldNotBeExactlyA<E>() {
    _assert(runtimeType != E, 'Type of $str should not be exactly $E');
    return this;
  }

  T shouldBeIdentical(dynamic other) {
    _assert(identical(this, other), '$str should be identical to $other');
    return this;
  }

  T shouldNotBeIdentical(dynamic other) {
    _assert(!identical(this, other), '$str should not be identical to $other');
    return this;
  }
}
