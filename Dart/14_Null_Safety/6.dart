void main(List<String> args) {
  try {
    print(findLength("zxcxczöf"));
    print(findLength(null));
  } catch (e) {
    print(e);
  }
}

int findLength(String? text) {
  if (text == null) {
    throw Exception("Text Cant not be null ");
  }
  return text.length;
}
