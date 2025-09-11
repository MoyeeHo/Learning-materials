在GitHub仓库中，我们常会看到名为`README.md`的说明文件，其中，`.md`后缀代表这是Markdown格式的文件。

Markdown是一种轻量级标记语言，其设计出众是让文本编辑更简洁高效，同时兼顾内容的可读性与格式转换的灵活性。它用简单直观的标记符号代替复杂的排版代码，语法简洁易懂，即便非专业人士也能快速上手。
GitHub上其实也有相关的[入门训练营](https://www.github-zh.com/getting-started/communicate-using-markdown)可供自学，而本文则是我基于自身学习体验整理的Markdown理解与总结。

# Markdown基本语法
## 1 标题使用
创建标题时，需在文字前增加`#`，`#`的数量对应标题级别。
> 注意：
> - `#`与标题文字中间必须保留一个空格
> - 标题需要单独放在一行的开头，若嵌入表格单元格中，可能无法被正确识别为标题格式。

预览效果及用法↓
# Heading level 1
```
# Heading level 1

Heading level 1
===============
```
## Heading level 2
```
## Heading level 2

Heading level 2
---------------
```
### Heading level 3
  ```
### Heading level 3
```
#### Heading level 4
  ```
#### Heading level 4
  ```
##### Heading level 5
  ```
##### Heading level 5
  ```
###### Heading level 6
  ```
###### Heading level 6
  ```

## 2 字体使用
常用的有粗体、斜体、粗体+斜体、删除线，不同文字前后标记不同，如下所示：

①`**这是粗体**` `__这也是粗体__` **粗体**

②`*这是斜体*` *斜体*

③`***这是粗体+斜体***` `___这也是粗体+斜体___` ***粗体+斜体***

④`~这是删除线~` ~删除线~

> 快捷键Tips：对着目标字体加粗或斜体，可选定目标字体后，按`Ctrl+B`加粗，`Ctrl+I`斜体。

## 3 换行
Markdown换行方法
1. 直接在句末增加两个空格`  `
2. 两句话之间加一个空格` `
3. 如果你想在这句话的这里→<br/>断行，那么你就在那插入`<br/>`

## 4 引用
引用方法有普通引用、多段落模块引用、嵌套块引用，在文字前添加`>`即可引用，且`>`后的空格可有可无。

### 4.1 普通的文字引用
```
> 普通文字引用
```

预览效果：  
> 普通文字引用
  
### 4.2 多段落引用
```
> 多段落引用
 
> 第一段

> 第二段
```

预览效果：  
> 多段落引用
> 
> 第一段
> 
> 第二段

### 4.3 嵌套块引用
```
> 引用：
 
>> 嵌套一层
 
>>> 再嵌套一层
```

预览效果：  
> 引用：
>> 嵌套一层
>>> 再嵌套一层

## 5 列表
列表分为有序列表和无序列表：

无序列表通常使用`*`、`+`、`-`，再增加一个空格作为列表标记。  
有序列表通常在数字后增加`.`，再加一个空格作为列表标记。

注意：若要控制层级，可在列表符号前使用`Tab`。

### 5.1 无序列表
```
* 无序list 1
+ 无序list 2
  + 无序list 2.1
  - 无序list 2.2
- 无序list 3
```

预览效果：  
* 无序list 1
+ 无序list 2
  + 无序list 2.1
  - 无序list 2.2
- 无序list 3

### 5.2 有序列表

```
1. 有序list 1
2. 有序list 2
    1. 有序list 2.1
    2. 有序list 2.2
3. 有序list 3
```

预览效果：  
1. 有序list 1
2. 有序list 2
    1. 有序list 2.1
    2. 有序list 2.2
3. 有序list 3

### 5.3 在列表中嵌套其他元素

**段落**

```
- This is the first list item.
- Here's the second list item.
  I need to add another paragraph below the second list item.
- And here's the third list item.
```

预览效果：  
- This is the first list item.
- Here's the second list item.
  
  I need to add another paragraph below the second list item.
- And here's the third list item.

### 5.4 引用块
```
- This is the first list item.
- Here's the second list item.
  > A blockquote would look great below the second list item.
- And here's the third list item.
```

预览效果：  
- This is the first list item.
- Here's the second list item.
  > A blockquote would look great below the second list item.
- And here's the third list item.

### 5.5 列表
```
1. First item
2. Second item
3. Third item
    - Indented item
    - Indented item
4. Fourth item
```
预览效果：  
1. First item
2. Second item
3. Third item
    - Indented item
    - Indented item
4. Fourth item

> 2025年8月14日，由于还没学到代码块和插入图片，因此稍后更新。
>
> 2025年8月18日：代码块内容更新，建议先学习**[6 代码块](#6-代码块)**章节，再继续后续内容。
>
> 2025年8月26日：图片更新，建议先学习**[10 图片](#10-图片)**章节，再继续后续内容。

### 5.6 代码块

代码块通常采用四个空格或一个制表符缩进。当他们被放入列表里时，请将他们缩进八个空格、两个制表符或用围栏代码块。
~~~
1. Open the file.
2. Find the following code block on line 20:
   ```python
     def main():
       print('Hello world!')
   ```
3. Update the title to match the name of your website.
~~~

预览效果：   
1. Open the file.
2. Find the following code block on line 20:
   ```python
     def main():
       print('Hello world!')
   ```
3. Update the title to match the name of your website.

### 5.7 图片
```
1. Open the photo.
2. She is Sophie.
  ![Sophie](https://github.com/MoyeeHo/Learning-materials/blob/main/Material/I%20want%20to%20be%20your%20rock.jpg?raw=true "I want to be your rock")
3. Close the photo.
```

预览效果：  
1. Open the photo.
2. She is Sophie.
  ![Sophie](https://github.com/MoyeeHo/Learning-materials/blob/main/Material/I%20want%20to%20be%20your%20rock.jpg?raw=true "I want to be your rock")
3. Close the photo.

## 6 代码块
Markdown支持两种类型代码块：  
1、行内代码，使用一个反引号包裹代码内容 \` ；  
2、围栏代码块，使用三个反引号```或波浪号~~~包裹多行代码。

### 6.1 行内代码块
```
`Hello` World!
```
预览效果：
`Hello` World!

### 6.2 围栏代码块
~~~
```python
  def main():
    print('hello world!')
```
~~~
预览效果：
```python
  def main():
    print('hello world!')
```

## 7 分割线
在Markdown中创建分割线，只需在单独一行上使用**三个或多个**星号`***`、破折号`---`、下划线`___`，并且改行不包括含其他内容。

注：若在文本下方使用下划线，会导致文本被渲染为标题格式。

```
分割线：

↓使用星号分割
***

↓使用下划线分割   
___

↓使用破折号分割(不推荐使用，若要使用，可在文字与分割线之间加一空行)    

---

文本上方分割线
---
文本下方分割线（可能导致文本变为标题样式）

```
预览效果：  
分割线：

↓使用星号分割
***

↓使用下划线分割   
___

↓使用破折号分割(不推荐使用，若要使用，可在文字与分割线之间加一空行)    

---

文本上方分割线
---
文本下方分割线（可能导致文本变为标题样式）


## 8 链接
Markdown链接有三部分内容组成：  
**显示文本**（放在中括号`[]`内）、**链接地址**（放在圆括号`()`内）、（可选）**标题文本**（放在链接地址后的引号内）。    
超链接Markdown代码：`[链接显示名](链接地址 "链接title")`

### 8.1 基本语法
```
[Markdown学习](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md)
```
预览效果：  

[Markdown学习](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md)
  
### 8.2 带标题文本链接
```
[Markdown学习](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md "Markdown学习")
```
预览效果：  

[Markdown学习](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md "Title：Markdown学习")    
  （将鼠标悬停在链接上可查看标题文本）
  
### 8.3 自动连接（网址和Email）
```
我的主页
<https://github.com/MoyeeHo>

联系邮箱
<hmoyee@163.com>
```
预览效果：  

我的主页  
<https://github.com/MoyeeHo>

联系邮箱  
<hmoyee@163.com>
  
### 8.4 带格式的链接
  
  如果需要强调链接，则在链接前后增加强调符号**[2 字体使用](#2-字体使用)**  
```
  It's my Github homepage **[MoyeeHo](https://github.com/MoyeeHo)**.
  
  This is the _[Markdown Guide](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md "Markdown学习")_.
  
  See the section on[`code`](#code)
```
预览效果：  

  It's my Github homepage **[MoyeeHo](https://github.com/MoyeeHo)**.
  
  This is the _[Markdown Guide](https://github.com/MoyeeHo/Learning-materials/blob/main/Markdown.md "Markdown学习")_.
  
  See the section on[`code`](#code)

## 9 表格
Markdown中表格使用`|`来分隔不同单元格，使用三个或多个`-`来分割表头和其他行。对齐方式可通过分割线中添加`:`指定。

对齐：  
`:-`表示表头及单元格内容左对齐；  
`-:`表示表头及单元格内容右对齐；  
`:-:`表示表头及单元格内容居中对齐。

注：表格中不能添加标题、块引用、列表、水平规则、图像或HTML标签。

```
| Title 1      | Title 2       |  Title 3    |
| :-----       | :-----------: |-----------: |
|  Header      |   Title       | Here's this |
|  Paragraph   |   Text        | And more    |
```
预览效果：  
| Title 1      | Title 2 |  Title 3 |
| :----- | :-----------: |-----------: |
|  Header      |   Title       | Here's this   |
|  Paragraph   |   Text        | And more      |


## 10 图片
在Markdown中添加图片，需要在标准链接语法前添加感叹号`!`，完整图片语法包括以下部分：

感叹号`!`、**显示文本**（放在中括号`[]`内）、**链接地址**（放在圆括号`()`内）、（可选）**标题文本**（放在链接地址后的引号内）。    
插入图片Markdown代码：`![图片显示名](图片地址 "图片title")`

```
![图片描述](图片地址：本地连接或URL "图片title")
![Sunset](https://github.com/MoyeeHo/Learning-materials/blob/main/Material/sunset.jpg?raw=true "而面对夕阳，希望你回到今天")
```

预览效果：  
![Sunset](https://github.com/MoyeeHo/Learning-materials/blob/main/Material/sunset.jpg?raw=true "而面对夕阳，希望你回到今天")


**图片也可修改大小**

```
![图片描述](图片地址：本地连接或URL#pic_center =长x宽 "图片title")  
![The devil makes no promises](https://github.com/MoyeeHo/Learning-materials/blob/main/Material/The%20devil%20makes%20no%20promises.jpg?raw=true#pic_center =790x593 "仅做学习用途使用，侵权必删")

注：①等号前面有空格；②这里是x不是*；③此功能在Github上无法展示。
```

## 11 脚注
脚注用于为文档添加补充说明和参考文献，使正文内容保持简洁清晰。添加脚注后，正文会出现一个带数字的上标标识，读者点击该标识可跳转至页面底部脚注内容。查看完脚注后，可通过点击脚注后的返回链接跳转回原文位置。
```
使用Markdown[^1]可以效率的书写文档，直接转换成HTML[^2]，也可使用Typora[^T]编辑器进行书写。
[^1]:Markdown是一种纯文本标记语言.
[^2]:HtoerText Markup Language 超文本标记语言
[^T]:NEW WAY TO READ & WRITE MARKDOWN.
```

预览效果：  
使用Markdown[^1]可以效率的书写文档，直接转换成HTML[^2]，也可使用Typora[^T]编辑器进行书写。

> 脚注内容在文章末尾，跳转后按脚注后方链接可直接跳转回加注位置。

## 12 转义字符
在Markdown中，如需显示语法符号本身，而非触发其格式功能，可在符号前添加反斜线`\`进行转义。

> 由于在表格中无法显示出来，我在代码块里展示好了。
```
|符号|名称|转义写法|
|:------:|:------:|:------:|
| \      |反斜杠   |\\      |
|`       |反引号   |\`      |
|*       |星号     |*\      |
|_       |下划线   |\_      |
|{}      |花括号   |\{\}    |
|[]      |中括号   |\[\]    |
|()      |括号     |\(\)    |
|#       |井号     |\#      |
|+       |加号     |\+      |
|-       |减号     |\-      |
|.       |点       |\.      |
|!       |感叹号   |\!       |
|\|      |竖线    |\|       |
```


可转义字符：  
|符号|名称|转义写法|
|:------:|:------:|:------:|
| \ |反斜杠|\\|
|`|反引号|\`|
|*|星号|*\|
|_|下划线|\_|
|{}|花括号|\{\}|
|[]|中括号|\[\]|
|()|括号|\(\)|
|#|井号|\#|
|+|加号|\+|
|-|减号|\-|
|.|点|\.|
|!|感叹号|\!|
|\||竖线|\||

> 还会有一些特殊字符的转义`<`和`&`，用于html文件中。

# Markdown扩展用法

本文介绍了Markdown的一些常用的高级语法。如需了解更多扩展语法和高级功能，可以参考以下资源：
- [菜鸟教程: Markdown高级用法](https://www.runoob.com/markdown/md-advance.html)
- [Markdown教程：扩展语法](https://markdown.com.cn/extended-syntax/)。

## 1 内嵌HTML标签
对于Markdown语法未涵盖的格式或样式，可以在文档中使用Html标签来实现。如需使用Html，不需要额外标注这是Html或Markdown，只需要Html标签添加到Markdown文本中即可。
> github上有些格式无法展示，需要在特定软件打开才可看到相应格式的预览。

### 1.1 行级内联标签
Markdown与Html是可互补的，二者结合使用为此提供了更大的灵活性和控制力，尤其是Markdown无法满足需求时。  
诸如标题、换行、强调等格式，二者的语法都可使用。

Html的行级内联标签（如`<span>`、`<cite>`、`<del>`）不受限制，可以在Markdown的段落、列表或标题自由使用。依照个人习惯也可采用HTML标签格式化。如，`<a>`、`<img>`标签，可直接使用这些标签，而不使用Markdown提供的链接或图片语法。当需要调整元素的属性时，如文本指定颜色或图片宽度，使用Html标签会更方便些。

> Html的行级内联标签和区块标签有所不同：在行级标签内部，Markdown的语法是可以解析的。

```
这是一个Markdown段落，但我可用Html来给某个词<span style="color:red">标红</span>，也可以<span style="background-color:yello">高亮文本</span>，或者标记一个<cite>书名</cite>，甚至可以<del>删除这句话</del>.  
This <strong>world</strong> is bold. This <em>world</em> is italic.
```
预览效果：  
这是一个MARKDOWN段落，但我可用HTML来给某个词<span style="color:red">标红</span>，也可以<span style="background-color:yello">高亮文本</span>，或者标记一个<cite>书名</cite>，甚至可以<del>删除这句话</del>.  
This <strong>world</strong> is bold. This <em>world</em> is italic.
> 再次提醒：github上有些格式无法展示，需要在特定软件打开才可看到相应格式的预览。

### 1.2 区块标签

在Markdown中使用Html区块元素（如`<div>`、`<table>`、`<pre>`、`<p>`）等，为了确保样式与解析的正确性，应注意一下格式规范：
- 每个区块元素前后需保留一个空行；
- 开始与结尾标签，不应**Tab或空格来缩进**。

Markdown会自动识别这些Html区块元素，并不会在其外部额外包括<p>标签，从而避免破坏预期的html结构。

如，在Markdown文件中增加Html表格：

```
This is a paragraph.

<table>
    <tr>
      <th>A</th>
      <th>B</th>
    </tr>
    <tr>
      <td>a</td>
      <td>b</td>
    </tr>
</table>

This is another paragraph.
```

浏览效果：  
This is a regular paragraph.

<table>
    <tr>
      <th>A</th>
      <th>B</th>
    </tr>
    <tr>
      <td>a</td>
      <td>b</td>
    </tr>
</table>

This is another regular paragraph.


## 2 任务列表
任务列表可用于创建带有复选框的项目列表。在支持该功能的的Markdown应用程序中，复选框将显示在内容旁边。

语法格式如下：

- 破折号`-`、加号`+`或星号`*`，后接一个空格；
+ 然后加上方括号`[ ]`表示**未完成**，或`[x]`表示**已完成**。
* 最后写入内容。

```
- [x] 已完成内容
- [ ] 未完成内容
```
预览效果：  
- [x] 已完成内容
- [ ] 未完成内容

## 3 添加Emoji表情
若想让Markdown文本活泼起来，可直接输入Emoji（表情符号）的短码来插入Emoji。输入格式很简单：用冒号包围Emoji的名称即可。

```
这周日我要和邻居们去野餐 :camping: 啦!  
真开心!! :joy:
```
预览效果：
这周日我要和邻居们去野餐 :camping: 啦!  我是真的要去[Doge]。
真开心!! :joy:

> Tips：
> 在github中输入一个半角的冒号`:`即可唤出表情选择框（手动查找较慢😒）。
> 推荐使用[Emoji简码列表](https://gist.github.com/rxaviers/7360908)快速查询，或复制粘贴。
> 不是所有平台都支持短码功能，请以实际预览效果为准。







回到学习首页[Learning-materials]()



[^1]:Markdown是一种纯文本标记语言.
[^2]:HtoerText Markup Language 超文本标记语言
[^T]:NEW WAY TO READ & WRITE MARKDOWN.








