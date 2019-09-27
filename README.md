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

在所弹出的对话框中，我们勾选上“masm”这一项即可让当前项目工程使用MASM汇编器，如图6所示，勾选完之后点击“确定”按钮关闭对话框。

![图6](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/6.JPG)

<br />

完成之后，我们在工具栏中将当前平台设置为“ **x64** ”，表示将当前程序变为为x86架构的64位模式。如图7所示：

![图7](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/7.JPG)

<br />

然后，我们在菜单栏中找到“项目”，点击后再选择最后的“属性”那一项。如图8所示：

![图8](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/8.JPG)

<br />

在弹出的属性页对话框中，我们先选择“配置”项的“所有配置”，然后右边的“平台”项默认应该已经是“活动(x64)”。展开左侧的“C/C++”，点击“预编译头”，然后再中间“预编译头”那一项选择“不使用预编译头”。如图9所示：

![图9](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/9.JPG)

<br />

此时，我们如果直接点击工具栏中绿色三角箭头按钮的话构建可能会失败，由于我们新增的汇编源文件没有参与编译。如果碰到这种情况，那么我们鼠标右键点击汇编源文件，然后再点击“属性”那一项，如图10所示：

![图10](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/10.JPG)

<br />

最后，我们在“常规”项中找到“项类型”，再选择“Microsoft Macro Assembler”，这就是MASM的全称了。😄 如图11所示：

![图11](https://github.com/zenny-chen/How-to-write-assembly-code-in-Visual-Studio-2019-for-x86-64-mode/blob/master/11.JPG)

<br />

本教程提供了完整的demo，各位可以下载自行构建，源代码也很简单，便于学习。最后附赠微软官方的x86_64模式的函数调用约定：[x64 calling convention](https://docs.microsoft.com/en-us/cpp/build/x64-calling-convention?view=vs-2019)。    
下面再提供x86_64模式下的MASM文档：[MASM for x64 (ml64.exe)](https://docs.microsoft.com/en-us/cpp/assembler/masm/masm-for-x64-ml64-exe?view=vs-2019)。

<br />

### 以下是关于Visual Studio工具或MSVC编译工具相关的资料

1. [Visual Studio 2019中，用于调试的即时窗口](https://docs.microsoft.com/zh-cn/visualstudio/ide/reference/immediate-window?view=vs-2019)
2. [VC使用CRT调试功能检测内存泄漏](https://blog.csdn.net/lvwx369/article/details/41776965)

