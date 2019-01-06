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
<v t="leo.20180827201556.1"><vh>@settings</vh>
<v t="leo.20180827201556.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20180827201556.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20180827201621.1" a="E"><vh>編輯 reveal</vh>
<v t="leo.20180827201621.2" a="E"><vh>@path ./../reveal</vh>
<v t="leo.20180827201621.3" a="E"><vh>@clean index.html</vh>
<v t="leo.20180827201621.4" a="E"><vh>html</vh>
<v t="leo.20180827201621.5"><vh>head</vh></v>
<v t="leo.20180827201621.6" a="E"><vh>body</vh>
<v t="leo.20180827201621.7" a="E"><vh>reveal div</vh>
<v t="leo.20180827201621.8" a="E"><vh>slides div</vh>
<v t="leo.20180827201621.9" a="E"><vh>封面投影片</vh>
<v t="leo.20180827201621.10"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20180827201621.11" a="E"><vh>快捷鍵</vh>
<v t="leo.20180827201621.12"><vh>投影片快捷鍵</vh></v>
</v>
<v t="leo.20180827201621.13" a="E"><vh>機械手臂內容</vh>
<v t="leo.20180827201621.14"><vh>摘要</vh>
<v t="leo.20180827201621.15"><vh>內容</vh></v>
</v>
<v t="leo.20180827201621.16"><vh>前言</vh>
<v t="leo.20180827201621.17"><vh>內容</vh></v>
</v>
<v t="leo.20190106100459.1"><vh>使用軟體</vh>
<v t="leo.20190106100459.2"><vh>內容</vh></v>
</v>
<v t="leo.20190106103652.1" a="E"><vh>機械手臂各部位介紹-1</vh>
<v t="leo.20190106103652.2"><vh>內容</vh></v>
</v>
<v t="leo.20190106104016.1" a="E"><vh>機械手臂各部位介紹-2</vh>
<v t="leo.20190106104016.2"><vh>內容</vh></v>
</v>
<v t="leo.20190106104632.1" a="E"><vh>機械手臂各部位介紹-3</vh>
<v t="leo.20190106104632.2"><vh>內容</vh></v>
</v>
<v t="leo.20190106104802.1" a="E"><vh>機械手臂各部位介紹-4</vh>
<v t="leo.20190106104802.2"><vh>內容</vh></v>
</v>
<v t="leo.20180827201621.18"><vh>導入影片</vh>
<v t="leo.20180827201621.19"><vh>iframe 導入影片</vh></v>
</v>
</v>
<v t="leo.20190106093749.1" a="E"><vh>第十週</vh>
<v t="leo.20190106093749.2" a="E"><vh>分支(向下)</vh>
<v t="leo.20190106093749.3"><vh>內容</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20180827201556.1"></t>
<t tx="leo.20180827201556.2">QTreeWidget {
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
<t tx="leo.20180827201556.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20180827201621.1"></t>
<t tx="leo.20180827201621.10">## BG1分組簡報

虎科大機械設計工程系

mechanical arms

機械手臂

Members

40623201 王君庭40623204 張晏晴40623212 魏有泉40623221 蔡和勳40623227 張耀元40623240 何冠均

指導教授：嚴家銘

&lt;small&gt;
Created by [bg1](https://github.com/mdecadp2018/finalproject-bg1)
&lt;/small&gt;

[bg1分組網誌](https://mdecadp2018.github.io/finalproject-bg1/blog/index.html)


</t>
<t tx="leo.20180827201621.11">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180827201621.12"># 投影片快捷鍵

* 利用箭頭上下前後換頁
* 按 f 鍵進入全螢幕模式 (full screen)
* 按 s 鍵可以顯示投影片筆記 (show)
* 按 o 鍵可以切換單張或全域檢視 (overview)
* 按 b 或 . 鍵可以切換螢幕黑屏 (black)
* 按 Esc 可以退出全螢幕或全域檢視 (Escape)

</t>
<t tx="leo.20180827201621.13">&lt;section&gt;
@others
&lt;/section&gt;

</t>
<t tx="leo.20180827201621.14">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180827201621.15"># 摘要

機械手臂夾爪是由兩個機件組合，雖然不具備多功能不過可以使我們工作更加快速以及順利。設計目標為讓機械手臂擁有360度的旋轉以及搖擺設計。
</t>
<t tx="leo.20180827201621.16">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180827201621.17"># 前言

因為在未來是往自動化工業發展，許多技術都將被機械手臂取代，只剩下基層人員及開發研究員這兩種極端化的現象，因次我們在選擇專題時決定選擇開發我們自己國家的機械手臂，從程式到設計一併研究，選擇增進自己，不被社會淘汰，為未來做準備
</t>
<t tx="leo.20180827201621.18">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180827201621.19">## 使用 iframe 導入影片

### 導入影片 template

&lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
</t>
<t tx="leo.20180827201621.2"></t>
<t tx="leo.20180827201621.3">@language xml
@tabwidth -4
@others

</t>
<t tx="leo.20180827201621.4">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="leo.20180827201621.5">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;
2018 Fall 分組網際簡報
&lt;/title&gt;
    &lt;meta name="description" content="A framework for easily creating beautiful presentations using HTML"&gt;
    &lt;meta name="author" content="Hakim El Hattab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="lib/css/zenburn.css"&gt;

    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'css/print/pdf.css' : 'css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
&lt;/head&gt;

</t>
<t tx="leo.20180827201621.6">&lt;body&gt;
@others
&lt;script src="lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="js/reveal.js"&gt;&lt;/script&gt;
&lt;script&gt;
        // More info https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,

            transition: 'slide', // none/fade/slide/convex/concave/zoom

            // More info https://github.com/hakimel/reveal.js#dependencies
            dependencies: [
                { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'plugin/zoom-js/zoom.js', async: true },
                { src: 'plugin/notes/notes.js', async: true },
                { src: 'plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;

</t>
<t tx="leo.20180827201621.7">&lt;div class="reveal"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180827201621.8">&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180827201621.9">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20190106093749.1">&lt;section&gt;
@others
&lt;/section&gt;

</t>
<t tx="leo.20190106093749.2">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106093749.3">### Week 1

* 內容

在github帳號下，新增一個New repository
名為 : 學號.github.io

1.將自己新增的倉儲與老師的倉儲 clone 下來綁定帳號及用 SciTE 確認是否正確

2.用 git status 查看所有檔案目前的狀況，之後再  git add . &gt; git commit -m "initial add " &gt;git push ，將剛剛新增的檔案推上去

</t>
<t tx="leo.20190106100459.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106100459.2"># 軟體

[Onshape]

[Onshape]:https://www.onshape.com/

[V-rep]

[V-rep]:http://www.coppeliarobotics.com/

</t>
<t tx="leo.20190106103652.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106103652.2"># 機械手臂設計介紹

* Base 底座：是配合主軸設計的，有孔為了跟主軸配合組裝旁邊有設計放置馬達的地方為了帶動主軸旋轉。
* Spindle 主軸：主軸是為了配合手臂旋轉所以設計成圓柱狀，並且為了讓手臂搖擺所以有設計凹槽，還有在手臂旋轉旁邊設計了放置馬達的地方以帶動手臂搖擺。
* Motor Seat 馬達座：馬達座是為了放置馬達讓馬達位置固定，左邊孔洞目的是配合馬達形狀而設置。



</t>
<t tx="leo.20190106104016.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106104016.2">* Base Cover 底座蓋：底座蓋是為了使底座的馬達以及主軸順利運動而設計，也避免有其他異物勿入導致馬達無法順利運作。
* Arms 手臂：手臂是因為要配合夾爪作動，在手臂的規劃也是很重要的，因此在畫時選擇做三節式的手臂，能有更多的自由度可以運動。
手臂特徵列表是因為我們這組機械手臂零件是一起畫的，因此我們在設計尺寸時，都是以變數去定義我們所要的尺寸，這樣在最後個別要做組配時就能因應大家需求去組配了。
* Jaws Disk 夾爪圓盤：夾爪圓盤目的在於連結夾爪及手臂，並使用馬達達到夾爪可旋轉增加自由度。
</t>
<t tx="leo.20190106104632.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106104632.2">* Gears 齒輪：齒輪的目的在於如何使夾爪嚙合時達到同步的動作，運用齒輪傳遞也可減少馬達的使用，但目前在測試中，暫無放上去組合。
齒輪特徵列表上的變數，目的在於利用設定模數、齒數、壓力角達到可變動之節圓直徑、大徑、小徑等，可以針對齒輪不同大小而做更動，但有些無法設變數之地方還是需要手動更改。
* Jaws 夾爪：夾爪的目的在於夾取物品，夾爪的形狀會影響夾持力道及夾持的物件外型限制，因此夾爪外型主要取決於要夾什麼樣的東西。而我們選擇的夾爪為最常見可以夾外型簡單的物品，而中間的凹槽為放置齒輪的地方。
夾爪前視圖上可看出有畫鍵槽，是為了搭配軸而設計的，軸上再接馬達則可使夾爪做開合運動，而達到夾取物品的動作。

</t>
<t tx="leo.20190106104802.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20190106104802.2">* Gears 齒輪
齒輪的目的在於如何使夾爪嚙合時達到同步的動作，運用齒輪傳遞也可減少馬達的使用，但目前在測試中，暫無放上去組合。
齒輪特徵列表上的變數，目的在於利用設定模數、齒數、壓力角達到可變動之節圓直徑、大徑、小徑等，可以針對齒輪不同大小而做更動，但有些無法設變數之地方還是需要手動更改。
* Jaws 夾爪
夾爪的目的在於夾取物品，夾爪的形狀會影響夾持力道及夾持的物件外型限制，因此夾爪外型主要取決於要夾什麼樣的東西。而我們選擇的夾爪為最常見可以夾外型簡單的物品，而中間的凹槽為放置齒輪的地方。
夾爪前視圖上可看出有畫鍵槽，是為了搭配軸而設計的，軸上再接馬達則可使夾爪做開合運動，而達到夾取物品的動作。

</t>
</tnodes>
</leo_file>
