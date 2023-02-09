class Burc {
  final String _burcName;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcSmallResim;
  final String _burcBigResim;
  get burcName => _burcName;

  get burcTarih => _burcTarih;

  get burcDetay => _burcDetay;

  get burcSmallResim => _burcSmallResim;

  burcBigResim() => _burcBigResim;

  Burc(this._burcName, this._burcTarih, this._burcDetay, this._burcSmallResim,
      this._burcBigResim);

  @override
  String toString() {
    return "$_burcName, $_burcBigResim";
  }
}
