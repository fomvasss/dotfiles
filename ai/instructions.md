## Laravel Package Development Guidelines

- Vendor пакетів - fomvasss (якщо інше не вказано)
- Використовуй `orchestra/testbench`
- Дотримуйся SemVer, веди CHANGELOG.md (Keep a Changelog), оновлюй в процесі README.md (README.uk.md якщо є такий)
- `.gitignore` пакету: `.idea`, `.vscode`,  `*.log`, `/vendor/`, `/.phpunit.cache/`, `.phpunit.result.cache`, `composer.lock`
- При роботі з пакетом, при запуску консольних команд, що стосуються php/laravel, заходь в папку пакету враховуючи середовище laradock
- В даний проект розроблювані пакети підключаються через composer.json з локального репозиторію що знаходиться в папці на рівень нижче цього проекту - `../vendor/`
- Локальні пакети зберігаються БЕЗ підпапки vendor-а: `/home/hp/Work/laravel/vendor/<package-name>` (не `fomvasss/<package-name>`)
- Перед першим запуском тестів пакету (або після очищення `vendor/`) встановити залежності: `docker exec laradock-workspace-1 bash -c "cd /home/hp/Work/laravel/vendor/<package-name> && composer install 2>&1"`
- Шаблон команди для запуску тестів пакету через Docker: `docker exec laradock-workspace-1 bash -c "cd /home/hp/Work/laravel/vendor/<package-name> && vendor/bin/phpunit 2>&1"`
- Приклад: `docker exec laradock-workspace-1 bash -c "cd /home/hp/Work/laravel/vendor/laravel-currency && vendor/bin/phpunit 2>&1"`


## Python
Environment: Python runs locally on the host machine (not in Docker).

Commands:
- python3 script.py
- pip install ...

Code style:
- Python 3.10+
- PEP 8
- Type hints (typing module)
- Prefer pathlib over os.path

## JavaScript / Node.js

Environment: Runs locally on the host machine.

Code style:
- ES2022+
- Prefer const/let over var
- Arrow functions
- async/await over .then()