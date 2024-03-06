很少有人详细了解过Git做多分支协同开发时，常见的问题，我这里做一下总结。

#### 单分支操作

只有一条分支：master

两个本地：本地1、本地2

两个文件：

A文件内容：AAAAA

B文件内容：BBBBB

#### 多分支操作

有三条分支：

主分支：master

本地1开发分支：

本地2开发分支：dev_local2

两个文件：

A文件内容：AAAAA

B文件内容：BBBBB

如何创建分支并推到远程，并建立本地和远程的关联关系？这里我们以 dev_local1 为例

创建分支

```bash
git checkout -b dev
```

推到远程并建立关联关系

```bash
git push --set-upstream origin dev_local1
```

查看当前分支关联的远程关联分支

```bash
git status -sb
```

更新远程分支引用

```bash
git fetch --all
```

查看所有远程分支在本地的引用

```bash
git branch -r   // 查看所有远程分支在本地的引用
git branch -a   // 查看所有本地分支以及远程分支在本地的引用
```

