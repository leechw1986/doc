Markdown git syntax & Git commend
=============
    (大标题)内容+ =============
>[MARKDOW](#MARKDOW);<br/>
 [Git commend](#Git);

<span id="MARKDOW"/>
MARKDOW
-------------
    (中标题)内容+ ---------
# 小标题1
    # + 空格 + 内容
## 小标题2
    ## + 空格 + 内容
### 单文本框
    两个tab之后输入文字

### 多文本框
    每行都以tab开头的

### 链接
1.[点这可以链接到GG](http://www.google.com)

### 只是显示片     
![github](http://github.com/github.png "github")     

### 想点击某个图片进入一个网页,比如我想点击github的icorn然后再进入www.github.com     
[![image]](http://www.github.com/)     
[image]: http://github.com/github.png "github"

### 文字被些字符包围,多重包围     
> 文字被些字符包围开始     
>     
> > 只要再文字前面加上>空格即可     
>     
>  > > 如果你要换行的话,新起一行,输入>空格即可,后面不接文字     
>     
> > > > 但> 只能放在行首才有效  

### 特殊字符处理     
    有一些特殊字符如<,#等,只要在特殊字符前面加上转义字符\即可
    你想换行的话其实可以直接用html标签<br />

<span id="Git"/>
# Git
### .gitconfig
    [alias]
    addremove = !git r && git add . --all
    aliases = !git config --list | grep 'alias\\.' | sed 's/alias\\.\\([^=]*\\)=\\(.*\\)/\\1\\ \t => \\2/' | sort
    all = add . --all
    amend = !git log -n 1 --pretty=tformat:%s%n%n%b | git commit -F - --amend
    br = branch -av
    brname = !git branch | grep "^*" | awk '{ print $2 }'
    brdel = branch -D
    ci = commit
    changes = "!f() { git log --pretty=format:'* %s' $1..$2; }; f"
    churn = !git log --all -M -C --name-only --format='format:' "$@" | sort | grep -v '^$' | uniq -c | sort | awk 'BEGIN {print "count,file"} {print $1 "," $2}'
    co = checkout
    details = log -n1 -p --format=fuller
    export = archive -o latest.tar.gz -9 --prefix=latest/
    unstage = reset HEAD --
    g = !git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
    in = pull --dry-run
    l = "!f() { git log $* | grep '^commit ' | cut -f 2 -d ' '; }; f"
    out = log --branches --not --remotes
    r = !git ls-files -z --deleted | xargs -0 git rm
    root = rev-parse --show-toplevel
    st = status
    subup = submodule update --init
    tags = tag -l
    this = !git init && git add . && git commit -m \"Initial commit.\"
    trim = !git reflog expire --expire=now --all && git gc --prune=now

    [credential]
    helper = osxkeychain

    [color]
    ui = true

    [color "branch"]
    current = yellow reverse
    local = yellow
    remote = green

    [color "diff"]
    meta = yellow bold
    frag = magenta bold
    old = red bold
    new = green bold

    [color "status"]
    added = yellow
    changed = green
    untracked = red

    [core]
    autocrlf = input
    compression = 9
    excludesfile = ~/.gitignore_global
    filemode = false

    [diff]
    mnemonicprefix = true

    [merge]
    log = true
    ff = false

## git commend

| init commend     |      |
| :------------- | :------------- |
| git init       | 初始化一个版本仓库         |
|git clone [url]|Clone远程版本库  |
|git remote add [shortname] [url]  |添加远程版本库origin |
|git remote -v  |查看远程仓库  |

| commit change |      |
| :------------- | :------------- |
|git add .  |添加当前修改的文件到暂存区  |
|git add -u  |如果你自动追踪文件，包括你已经手动删除的，状态为Deleted的文件  |
|git commit –m "你的注释"  |提交你的修改  |
|git push [远程名] [本地分支]:[远程分支]  |推送你的更新到远程服务器,语法为   |
|git status  |查看文件状态  |
|git add readme.txt  |跟踪新文件  |
|git rm readme.txt  |从当前跟踪列表移除文件，并完全删除  |
|git rm –cached readme.txt  |仅在暂存区删除，保留文件在当前目录，不再跟踪  |
|git mv reademe.txt readme  |重命名文件  |
|git log  |查看提交的历史记录  |
|git commit --amend  |修改最后一次提交注释的，利用–amend参数  |
|git commit –m &quot;add readme.txt&quot;  |忘记提交某些修改，下面的三条命令只会得到一个提交。  |
|git reset HEAD b |现在你只想提交a文件，不想提交b文件，应该这样  |
|git checkout –- readme.txt  |取消对文件的修改  |
