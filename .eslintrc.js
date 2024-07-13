module.exports = {
  extends: ['airbnb-base'],
  env: {
    browser: true,
    commonjs: true,
    es6: true,
    jquery: true,
  },
  rules: {
    'import/no-cycle': 'off',
    'import/extensions': 'off',
    'import/prefer-default-export': 'off',
    'no-param-reassign': 'off',
    'no-restricted-globals': 'off',
    'no-new': 'warn',
    'no-console': 'off',
  },
};
