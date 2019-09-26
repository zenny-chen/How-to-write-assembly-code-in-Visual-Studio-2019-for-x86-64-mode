# How to write assembly code in Visual Studio 2019 for x86-64-mode
如何在Visual Studio 2019下对x86_64模式使用汇编语言

<br />

本博文将详细为大家介绍如何在Visual Studio 2019中创建一个包含C语言源文件与汇编源文件的项目工程，并能在C源文件中调用汇编语言实现的过程（procedure）。
本项目采用的是新建一个控制台程序的形式。如果各位创建的是Win32桌面应用程序，那么设置过程其实也差不多。下面开始进入正题。

<br />

我们先创建一个新项目。首先打开Visual Studio 2019（笔者用的是community版本）。在首界面的右侧（“开始使用”）一栏点击“创建新项目”，如图1所示。

![图1](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/1.JPG)

<br />

