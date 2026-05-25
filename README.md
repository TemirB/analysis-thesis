# Академическая работа (LaTeX)
Этот репозиторий содержит LaTeX исходники для моей академической работы, включая:
- report - отчет в лабораборию
- presentation - презентация (quick-info о проделанной работе)

## Структура
- `presentation/`
- `report/`
- `delete.sh`

## Отчистка артефактов сборки
LaTeX generates a lot of auxiliary files during compilation.  
To remove them, use:

```bash
./delete.sh [directory]
```

## Требования
Проект использует linux пакет `texlive-full`


 