# How to write assembly code in Visual Studio 2019 for x86-64-mode
如何在Visual Studio 2019下对x86_64模式使用汇编语言

<br />

本博文将详细为大家介绍如何在Visual Studio 2019中创建一个包含C语言源文件与汇编源文件的项目工程，并能在C源文件中调用汇编语言实现的过程（procedure）。
本项目采用的是新建一个控制台程序的形式。如果各位创建的是Win32桌面应用程序，那么设置过程其实也差不多。下面开始进入正题。

<br />

我们先创建一个新项目。首先打开Visual Studio 2019（笔者用的是community版本）。在首界面的右侧（“开始使用”）一栏点击“创建新项目”，如图1所示。

![图1](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/1.JPG)

<br />

随后选择“控制台应用”，再点击“下一步”，如图2所示：

![图2](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/2.JPG)

<br />

在“配置新项目”界面中，我们填上自己所要创建项目的名称，然后选择存放项目的路径。这里需要注意的是，项目路径应该以项目名称结尾。然后我们可以勾选上“将解决方案和项目放在同一目录中”。如图3所示：

![图3](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/3.JPG)

<br />

完成之后我们就进入了项目编辑界面。这里，我们可以将项目自动生成的cpp源文件删除，然后新增自己的C源文件和汇编源文件。在Visual Studio中，汇编源文件一般以 **.asm** 作为后缀名。然后，我们选中“解决方案”下方的项目名。如图4所示：

![图4](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/4.JPG)

<br />

随后我们鼠标右键点击选中的项目名，然后选择“生成依赖项”中的“生成自定义”。如图5所示：

![图5](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/5.JPG)

<br />

