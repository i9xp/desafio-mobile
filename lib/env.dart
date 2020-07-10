const bool _isProduction = bool.fromEnvironment('dart.vm.product');

const _PROD = {
  'baseUrl': 'https://5f07638b9c5c250016306ea6.mockapi.io/api/v1/',
  'databaseName': 'i9xp_commerce.db',
  'databaseVersion': 2,
};

const _DEV = {
  'baseUrl': 'https://5f07638b9c5c250016306ea6.mockapi.io/api/v1/',
  'databaseName': 'dev_i9xp_commerce.db',
  'databaseVersion': 2,
};

final environment = _isProduction ? _PROD : _DEV;
