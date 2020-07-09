const bool _isProduction = bool.fromEnvironment('dart.vm.product');

const _PROD = {
  'baseUrl': 'https://github.com/andreciornavei/desafio-mobile/blob/master/api.json',
  'databaseName': 'i9xp_commerce.db',
  'databaseVersion': 1,
};

const _DEV = {
  'baseUrl': 'https://github.com/andreciornavei/desafio-mobile/blob/master/api.json',
  'databaseName': 'dev_i9xp_commerce.db',
  'databaseVersion': 1,
};

final environment = _isProduction ? _PROD : _DEV;
