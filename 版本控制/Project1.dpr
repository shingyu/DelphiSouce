program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{
版本控制：对软件开发过程中各种代码、配置文件及说明文档
等文件变更的管理
常用工具：CVS（淘汰）SVN（主流）GIT（流行）
使用的管理平台：GitHub、coding.net（国内）oschina（国内）
常用命令：
 1.初始化仓库：git init
 2.加入暂存区 git add  文件名
    2.1 查看暂存区信息 git status
       git add * 把剩下的全部纳入暂存区
 3.从暂存区提交到本地仓库 git commit -m'本次提交的说明内容'
       3.1在提交前需要设置提交人的信息
                git config --global user.email"you@example.com"
                git config --global user.name"your name"

            若不想全局  git config  user.email"you@example.com"
    ctrl+ l 清空
   4. git push
   git remote -v    检测地址
   若与远程不一致
  git remote set-url origin git@github.com:shingyu/Delphisource.git
    origin 后面为远程的地址

  5.把文件下载到本地
  git pull
 本地没有远程仓库 下载下来：
  git clone 地址


}

begin

end.
