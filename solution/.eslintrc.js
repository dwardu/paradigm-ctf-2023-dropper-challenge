module.exports = {
    "env": {
        "es2021": true,
        "node": true
    },
    "extends": "standard-with-typescript",
    "overrides": [
        {
            "env": {
                "node": true
            },
            "files": [
                ".eslintrc.{js,cjs}"
            ],
            "parserOptions": {
                "sourceType": "script"
            }
        }
    ],
    "parserOptions": {
        "ecmaVersion": "latest",
        "sourceType": "module"
    },
    "rules": {
        '@typescript-eslint/semi': ['error', 'always'],
        '@typescript-eslint/space-before-function-paren': ['error', 'never'],
        '@typescript-eslint/no-unused-vars': 'warn',
        '@typescript-eslint/explicit-function-return-type': 'off',
        'no-multiple-empty-lines': ['error', { "max": 2, "maxBOF": 0, "maxEOF": 0 }],
    }
}
