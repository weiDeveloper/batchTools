@echo off
title=WinTools
color 3f
REM 湖蓝色背景，白色字

:mainPage
cls
echo 欢迎使用WinTools_V0.1
echo.
echo.
echo 1.测试网络连接情况
echo 2.显示系统信息
echo 3.帮助
set /p input1=请输入数字编号: 
if %input1% EQU 1 (
goto 1
)
if %input1% EQU 2 (
goto 2
)
if %input1% EQU 3 (
goto 3
)
else (
goto error1
)

REM 以下是标签1
:1
cls
ping 127.0.0.1
ipconfig /all
goto gtmp

REM 标签2
:2
cls
echo 完善中，敬请期待(•̀ω•́ )
goto gtmp

REM 标签3
:3
cls
echo 帮助
echo help
echo
echo 测试
echo test
goto gtmp

REM 错误信息1
:error1
cls
echo 程序运行错误，错误代码1
echo error,error code:1
goto gtmp

REM 转到mainPage
:gtmp
set /p input2=是否返回桌面？[Y/N]
if %input2% EQU Y (
goto mainPage
)
if %input2% EQU N (
exit
)
else (
goto error2
)

REM 错误信息2
:error2
echo 命令未找到
echo cmd nt fd
goto gtmp
