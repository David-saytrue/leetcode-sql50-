# LeetCode — SQL 50

Прогресс: отмечай здесь (LeetCode не синхронится с GitHub сам).

| Done | # | Topic |
|------|---|--------|
| [x] | 1757 | Select |
| [x] | 584 | Select |
| [x] | 595 | Select |
| [ ] | 1148 | Select |
| [ ] | 1683 | Select |
| … | | см. [SQL 50 study plan](https://leetcode.com/studyplan/top-sql-50/) |

## Как сохранять решение

1. Решил на LeetCode → Accepted.
2. Скопируй запрос в файл: `NNNN-slug-from-url.sql` (см. примеры 01757, 00584).
3. Коммит:

```powershell
cd C:\prep_for_job
git add leetcode/
git commit -m "leetcode: SQL50 — 1148 Article Views I"
git push
```

Шаблон для новой задачи: скопируй `_template.sql`.

## Public vs private

| | **Public** `data-engineer-prep` | **Private** репозиторий |
|---|--------------------------------|-------------------------|
| Зелёные квадраты на профиле | да | да (на бесплатном GitHub тоже) |
| Ссылка в резюме / LinkedIn | да | нет — только «есть GitHub» |
| Кто видит LeetCode-код | все | только ты |

**Рекомендация:** основной репо **public** — там betlive и Karpov, это портфолио. LeetCode-решения не секрет, их публикуют тысячи людей; папка `leetcode/` нормально смотрится как «SQL interview practice».

### Если хочешь только LeetCode в private

1. https://github.com/new → имя `sql50-private` → **Private** → без README.
2. Локально (один раз):

```powershell
mkdir C:\prep_for_job_leetcode
cd C:\prep_for_job_leetcode
git init
git remote add origin https://github.com/David-saytrue/sql50-private.git
# копируй сюда только leetcode/sql50 или работай в этой папке
git add .
git commit -m "leetcode: SQL50 start"
git push -u origin main
```

Коммиты в **оба** репо = больше активности, но обычно хватит **одного public** с папкой `leetcode/`.

### Сделать весь `data-engineer-prep` private

Repo → **Settings** → **Danger zone** → Change visibility → Private.  
Активность на графике останется, но ссылку `github.com/David-saytrue/data-engineer-prep` в CV лучше убрать или попросить доступ у рекрутера.
