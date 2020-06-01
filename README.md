# 数据库系统概念
![Demo](https://i.loli.net/2020/06/01/ZMxIN1PkDJbH7zQ.png)

## Usage

Take the smallRelationsInsertFile as an example

### For Sqlite3

```sql
@ sqlite3 university.db
>.read DDL.db
>.redl smallRelationsInsertFile.sql
```

### For Mysql

```sql
mysql> use university;
mysql> set names utf8;
mysql> source ./DDL.sql;
mysql> source ./smallRelationsInsertFile.sql;
```
