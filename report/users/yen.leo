<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ahshoe.20161120121808.1" a="E"><vh>@settings</vh>
<v t="ahshoe.20170315212615.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="ahshoe.20170315212626.1"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="yen.20170429110328.1" a="E"><vh>Installation</vh>
<v t="yen.20170429110336.1"><vh>Ubuntu 14.04</vh></v>
<v t="leo.20171119233721.1"><vh>Windows</vh></v>
<v t="leo.20171119233845.1"><vh>fontspec error</vh></v>
</v>
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh></v>
<v t="yen.20170429132400.1"><vh>協同著作規劃</vh></v>
<v t="yen.20170429103742.1" a="E"><vh>@path ./../</vh>
<v t="yen.20170429103940.1" a="E"><vh>@path markdown</vh>
<v t="40323230.20170130135731.1"><vh>@edit template.tex</vh></v>
<v t="ahshoe.20170322182713.1"><vh>@edit reference.md</vh></v>
<v t="ahshoe.20170322181453.1"><vh>@edit refer.bib</vh></v>
<v t="leo.20171119234752.1" a="E"><vh>封面以及摘要</vh>
<v t="ahshoe.20161120122151.1" a="E"><vh>@clean cover_and_abstract.md</vh>
<v t="ahshoe.20170317115820.1"><vh>摘要</vh></v>
</v>
</v>
<v t="leo.20171119234822.1" a="E"><vh>各章節內容</vh>
<v t="yen.20170429214845.1" a="E"><vh>@path paragraph</vh>
<v t="yen.20170429214838.1" a="E"><vh>@clean foreword.md</vh>
<v t="yen.20170429214838.3"><vh>前言</vh></v>
</v>
<v t="yen.20170429215041.1" a="E"><vh>@clean onshape.md</vh>
<v t="leo.20190105111002.1"><vh>Base</vh></v>
<v t="yen.20170429215130.1"><vh>Spindle</vh></v>
<v t="leo.20190105111005.1" a="M"><vh>Motor Seat</vh></v>
<v t="leo.20190105111008.1" a="M"><vh>Base Cover</vh></v>
<v t="leo.20190105110934.1"><vh>Arms</vh></v>
<v t="yen.20170429215205.1"><vh>Jaws Disk</vh></v>
<v t="leo.20190104182107.1" a="M"><vh>Gears</vh></v>
<v t="leo.20190105091307.1"><vh>Jaws</vh></v>
<v t="leo.20190105093945.1"><vh>images</vh></v>
</v>
<v t="yen.20170429215252.1" a="E"><vh>@clean divide_the_work.md</vh>
<v t="yen.20170429215308.1"><vh>分工</vh></v>
</v>
<v t="yen.20170429215416.1" a="E"><vh>@clean computer_programming.md</vh>
<v t="yen.20170429215446.2"><vh>C</vh></v>
<v t="yen.20170429215446.3"><vh>Python</vh></v>
<v t="yen.20170429215446.4"><vh>Brython</vh></v>
<v t="yen.20170429215446.5"><vh>PyQt</vh></v>
</v>
<v t="yen.20170429215617.1" a="E"><vh>@clean computer_aided_design.md</vh>
<v t="yen.20170429215851.1"><vh>自動控制</vh></v>
<v t="yen.20170429215830.1"><vh>機械系統模擬</vh></v>
<v t="yen.20170429215802.1"><vh>演化運算</vh></v>
</v>
<v t="yen.20170429215922.1" a="E"><vh>@clean leo_editor.md</vh>
<v t="yen.20170429220001.1"><vh>Scripting</vh></v>
</v>
<v t="yen.20170429220128.1" a="E"><vh>@clean github.md</vh>
<v t="yen.20170429220137.1"><vh>Github</vh></v>
</v>
<v t="yen.20170429220231.1" a="E"><vh>@clean fossil.md</vh>
<v t="yen.20170429220231.2"><vh>Fossil commands</vh></v>
</v>
</v>
</v>
</v>
<v t="ahshoe.20170129120932.1" a="E"><vh>Readme</vh>
<v t="ahshoe.20170129120858.1"><vh>@edit README.md</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170123213451.1">@language python
filename = "report"
import os, platform
import chapter
# 更換目錄到 markdown 
os.chdir("./../markdown")

# 若在 Linux 環境則使用 ukai.ttc 系統字形
if platform.system().lower()=="linux": font = "ukai.ttc"
# 在 windows 環境使用 SimSun 字形
elif platform.system().lower()=="windows": font = "SimSun"
else: font = "Arial"
fontsize = "12"
margin = "1in"
# --pdf-engine 使用 xelatex
# lang 請參照 https://tools.ietf.org/html/bcp47, 這裡的 zh-cmn 為 Mandarin Chinese 國語
# -V lang=zh-cmn 為一組 key=value 對應的 Variable 設定
# -N 表示 Number section headings in LaTeX, ConTeXt, HTML, or EPUB output. By default, sections are not numbered.
settingFlag = "--pdf-engine=xelatex -V lang=zh-cmn -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --filter pandoc-tablenos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2} --bibliography=refer.bib --csl=ieee.csl".format(font, fontsize, margin)
print("---Pandoc---")

# 選擇所要納入的 Markdown 檔案, 不納入的檔案名稱前方加上  # 即可
chapter_list = " ".join("./paragraph/" + i for i in [
#"computer_hardware.md",
#"operating_system.md", 
"foreword.md",
"onshape.md",
"divide_the_work.md", 
#"computer_network.md", 
"computer_programming.md", 
"computer_aided_design.md", 
"leo_editor.md", 
"github.md", 
"fossil.md", 
#"onshape.md", 
"cmsimfly.md", 
"pygrouf.md", 
"pyslvs.md", 
#"pylinkage.md", 
#"pyduino.md", 
])

# 若系統並未正確轉檔, 可以將 os.system 改為 g.es 表示要使用 Leo Editor 的 global 物件中的 echo string 將指令印在 log 區
# 然後複製指令, 然後在命令列視窗中的 markdown 目錄中執行, 就可以得到錯誤訊息
# 或許可以再從 https://stackoverflow.com/questions/26005583/return-value-of-x-os-system 中的建議改進此一指令
os.system("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("PDF 轉換完畢")
print('-'*12)</t>
<t tx="ahshoe.20161120121808.1"></t>
<t tx="ahshoe.20161120122151.1">---
university_zh: '國立虎尾科技大學'
institute_zh: '機械設計工程系'
category_zh: '電腦輔助設計實習 bg1 期末報告'
title_zh: '機械手臂'
title_en: ' Mechanical arms'
author:
- 設計二乙 40623201 王君庭
- 設計二乙 40623204 張晏晴
- 設計二乙 40623212 魏有泉
- 設計二乙 40623221 蔡和勳
- 設計二乙 40623227 張耀元
- 設計二乙 40623241 何冠均
advisor_zh: '嚴家銘'
date: '2018.12.24'
---

@others
</t>
<t tx="ahshoe.20170129120932.1"></t>
<t tx="ahshoe.20170315212615.1">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="ahshoe.20170315212626.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="ahshoe.20170317115820.1">---
abstract: |
    因為在未來是往自動化工業發展，許多技術都將被汰換，而人工的工作也都將被機械手臂取代，只剩下基層人員及開發研究員這兩種極端化的現象，因此我們在選擇專題時，決定選擇開發我們自己國家的機械手臂，從程式到設計一併研究，選擇增進自己，不被社會淘汰，為未來做準備。

    ![Mechanical arms][]
    
    稱為圖 {@fig:機械手臂}。
    
    [Mechanical arms]: ../markdown/images/clean cover_and_abstract/Mechanical arms.png {#fig:機械手臂}


    
---


</t>
<t tx="leo.20171119233721.1">1. 下載可攜pandoc-2.0.2與 miktex_portable

2. 安裝 pandoc-fignos, pandoc-tablenos filters

python -m pip install pandoc-fignos pandoc-tablenos

3. 若需要安裝 package, 需要用 administrator 身分啟動

c:\users\cadlab\desktop\mde\python2017fall_36\data\miktex_portable\miktex-portable.cmd</t>
<t tx="leo.20171119233845.1">https://sourceforge.net/p/miktex/discussion/33790/thread/fcf98fa1/</t>
<t tx="leo.20171119234752.1"></t>
<t tx="leo.20171119234822.1"></t>
<t tx="leo.20190104182107.1">Gears 齒輪
---

齒輪的目的在於如何使夾爪嚙合時達到同步的動作，運用齒輪傳遞也可減少馬達的使用，但目前在測試中，暫無放上去組合。

齒輪特徵列表上的變數，目的在於利用設定模數、齒數、壓力角達到可變動之節圓直徑、大徑、小徑等，可以針對齒輪不同大小而做更動，但有些無法設變數之地方還是需要手動更改。


    
</t>
<t tx="leo.20190105091307.1">Jaws 夾爪
---

夾爪的目的在於夾取物品，夾爪的形狀會影響夾持力道及夾持的物件外型限制，因此夾爪外型主要取決於要夾什麼樣的東西。而我們選擇的夾爪為最常見可以夾外型簡單的物品，而中間的凹槽為放置齒輪的地方。

夾爪前視圖上可看出有畫鍵槽，是為了搭配軸而設計的，軸上再接馬達則可使夾爪做開合運動，而達到夾取物品的動作。




    


</t>
<t tx="leo.20190105093945.1">![Base Top][]

[Base Top]: ../markdown/images/onshape/base Top.jpg {#fig:底座上視圖}

![Base Bottom][]

[Base Bottom]: ../markdown/images/onshape/base Bottom.jpg {#fig:底座下視圖}

![Base Right][]

[Base Right]: ../markdown/images/onshape/base Right.jpg {#fig:底座右側視圖}

![Spindle][]

[Spindle]: ../markdown/images/onshape/spindle.jpg {#fig:主軸}

![Spindle Front][]

[Spindle Front]: ../markdown/images/onshape/spindle Front.jpg {#fig:主軸前視圖}

![Spindle Right][]

[Spindle Right]: ../markdown/images/onshape/spindle Right.jpg {#fig:主軸右側視圖}

![Spindle Top][]

[Spindle Top]: ../markdown/images/onshape/spindle Top.jpg {#fig:主軸上視圖}

![Motor Seat][]

[Motor Seat]: ../markdown/images/onshape/motor seat.jpg {#fig:馬達座}

![Motor Seat Right][]

[Motor Seat Right]: ../markdown/images/onshape/motor seat Right.jpg {#fig:馬達座右側視圖}

![Motor Seat Left][]

[Motor Seat Left]: ../markdown/images/onshape/motor seat Left.jpg {#fig:馬達座左側視圖}

![Motor Seat Top][]

[Motor Seat Top]: ../markdown/images/onshape/motor seat Top.jpg {#fig:馬達座上視圖}

![Base Cover][]

[Base Cover]: ../markdown/images/onshape/base cover.jpg {#fig:底座蓋}

![Base Cover Top][]

[Base Cover Top]: ../markdown/images/onshape/base cover Top.jpg {#fig:底座蓋上視圖}

![Arm Features][]

[Arm Features]: ../markdown/images/onshape/arm Features.png {#fig:手臂特徵列表}

![Arm1-1][]

[Arm1-1]: ../markdown/images/onshape/arm1-1.png {#fig:手臂1-1}

![Arm1-2][]

[Arm1-2]: ../markdown/images/onshape/arm1-2.png {#fig:手臂1-2}

![Arm1-3][]

[Arm1-3]: ../markdown/images/onshape/arm1-3.png {#fig:手臂1-3}

![Arm1-4][]

[Arm1-4]: ../markdown/images/onshape/arm1-4.png {#fig:手臂1-4}

![Arm1-5][]

[Arm1-5]: ../markdown/images/onshape/arm1-5.png {#fig:手臂1-5}

![Arm2-1][]

[Arm2-1]: ../markdown/images/onshape/arm2-1.png {#fig:手臂2-1}

![Arm2-2][]

[Arm2-2]: ../markdown/images/onshape/arm2-2.png {#fig:手臂2-2}

![Arm3-1][]

[Arm3-1]: ../markdown/images/onshape/arm3-1.png {#fig:手臂3-1}

![Arm3-2][]

[Arm3-2]: ../markdown/images/onshape/arm3-2.png {#fig:手臂3-2}

![Arm3-3][]

[Arm3-3]: ../markdown/images/onshape/arm3-3.png {#fig:手臂3-3}

![Arm3-4][]

[Arm3-4]: ../markdown/images/onshape/arm3-4.png {#fig:手臂3-4}

![Arm][]

[Arm]: ../markdown/images/onshape/arm.png {#fig:手臂}

![Jaws Disk][]

[Jaws Disk]: ../markdown/images/onshape/Jaws Disk.png {#fig:夾爪圓盤}

![Gear Features][]

[Gear Features]: ../markdown/images/onshape/Gear Features.png {#fig:齒輪特徵列表}

![Gear][]

[Gear]: ../markdown/images/onshape/Gear.png {#fig:齒輪}

![Gear Front][]

[Gear Front]: ../markdown/images/onshape/Gear Front.png {#fig:齒輪前視圖}

![Jaws][]

[Jaws]: ../markdown/images/onshape/jaws.png {#fig:夾爪}

![Jaws Front][]

[Jaws Front]: ../markdown/images/onshape/Jaws Front.png {#fig:夾爪前視圖}

![Mechanical Arms Overall][]

[Mechanical Arms Overall]: ../markdown/images/onshape/mechanical arms overall.png {#fig:機械手臂整體}

![Mechanical Arms Right][]

[Mechanical Arms Right]: ../markdown/images/onshape/mechanical arms Right.png {#fig:機械手臂右側視圖}

</t>
<t tx="leo.20190105110934.1">Arms 手臂
---

手臂是因為要配合夾爪作動，在手臂的規劃也是很重要的，因此在畫時選擇做三節式的手臂，能有更多的自由度可以運動。

手臂特徵列表是因為我們這組機械手臂零件是一起畫的，因此我們在設計尺寸時，都是以變數去定義我們所要的尺寸，這樣在最後個別要做組配時就能因應大家需求去組配了。      
    


</t>
<t tx="leo.20190105111002.1">Base 底座
---

底座是配合主軸設計的，有孔為了跟主軸配合組裝旁邊有設計放置馬達的地方為了帶動主軸旋轉。
    


</t>
<t tx="leo.20190105111005.1">Motor Seat 馬達座
---

馬達座是為了放置馬達讓馬達位置固定，左邊孔洞目的是配合馬達形狀而設置。
    


</t>
<t tx="leo.20190105111008.1">Base Cover 底座蓋
---

底座蓋是為了使底座的馬達以及主軸順利運動而設計，也避免有其他異物勿入導致馬達無法順利運作。
    


</t>
<t tx="yen.20170429103742.1"></t>
<t tx="yen.20170429103940.1"></t>
<t tx="yen.20170429110328.1"></t>
<t tx="yen.20170429110336.1">1. 下載並安裝 Pandoc：

https://github.com/jgm/pandoc/releases/

2. 安裝 texlive (安裝 texlive-lang-cjk 而非 16.04 的 texlive-lang-chinese)

sudo apt install texlive texlive-xetex texlive-lang-cjk etoolbox

3. 安裝 pandoc-fignos, pandoc-tablenos filters

sudo pip3 install pandoc-fignos pandoc-tablenos

4. 安裝 ukai.ttc 字型

sudo apt-get install fonts-arphic-ukai</t>
<t tx="yen.20170429132400.1">每一位協同人員各在 users 目錄中建立一個 .leo 檔案

除非必要否則不更動 markdown 目錄下的 template.tex 檔案</t>
<t tx="yen.20170429214838.1">前言
===



@others
</t>
<t tx="yen.20170429214838.3">我們製作的是機械手臂，而我們的夾爪是由兩個機件組合，雖然不具備多功能不過可以使我們工作更加快速以及順利，使用機械手臂取代人力。人力會被取代不過我們的腦袋是不會的，所以我們就選擇了設計機械手臂做為我們這組的主題，機械手臂擁有360度的旋轉以及搖擺設計。
</t>
<t tx="yen.20170429214845.1"></t>
<t tx="yen.20170429215041.1">Onshape
===

機械手臂各部位介紹

@others
</t>
<t tx="yen.20170429215130.1">Spindle 主軸
---

主軸是為了配合手臂旋轉所以設計成圓柱狀，並且為了讓手臂搖擺所以有設計凹槽，還有在手臂旋轉旁邊設計了放置馬達的地方以帶動手臂搖擺。
    


</t>
<t tx="yen.20170429215205.1">Jaws Disk 夾爪圓盤
---

夾爪圓盤目的在於連結夾爪及手臂，並使用馬達達到夾爪可旋轉增加自由度。




</t>
<t tx="yen.20170429215252.1">Divide the Work
===



@others
</t>
<t tx="yen.20170429215308.1">Mechanical arms draw 機械手臂繪製
---

Table: Onshape繪製組員分工 {#tbl:工作分配表}

| Student Nember | Name | Work |
|:--------------------:|:----------:|:--------------------------------------------------------------:|
| 40623201 | 王君庭 | 繪製Onshape夾爪部分 |
| 40623204 | 張晏晴 | 繪製Onshape夾爪部分 |
| 40623212 | 魏有泉 | 繪製Onshape手臂部分、機械手臂組合 |
| 40623221 | 蔡和勳 | 繪製Onshape底座部分 |
| 40623227 | 張耀元 | 繪製Onshape手臂部分、機械手臂組合 |
| 40623240 | 何冠均 | 繪製Onshape底座部分 |
</t>
<t tx="yen.20170429215416.1">計算機程式
===

計算機程式 的概要

@others</t>
<t tx="yen.20170429215446.2">C
---

C 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215446.3">Python
---

Python 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215446.4">Brython
---

Brython 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215446.5">PyQt
---

PyQt 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215617.1">電腦輔助設計
===

電腦輔助設計 的概要

@others</t>
<t tx="yen.20170429215802.1">演化運算 (Evolutionary Computation)
---

演化運算 (Evolutionary Computation) 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215830.1">機械系統模擬
---

機械系統模擬 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215851.1">自動控制
---

自動控制 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215922.1">Leo Editor
===

Leo Editor 的概要

@others</t>
<t tx="yen.20170429220001.1">Scripting
---

Scripting 的內容</t>
<t tx="yen.20170429220128.1">Github
===

Github 的概要

@others</t>
<t tx="yen.20170429220137.1">Github
---

Github 的內容</t>
<t tx="yen.20170429220231.1">Fossil SCM
===

Fossil SCM 的概要

@others</t>
<t tx="yen.20170429220231.2">Fossil Commands
---

Fossil Commands 的內容</t>
</tnodes>
</leo_file>
