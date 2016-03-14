The Not So Short Introduction To LaTeX (中文版 lshort)
===

编译要求
---
将 ctex 宏包、xeCJK 宏包更新到最新，并确认 lshort-style.sty 引用的宏包都已正确安装。  
lshort 中文版使用 Fandol 宏包作为中文字体。fontspec 会对此字体报 script-not-exist 的警告，可以忽视。

按照以下顺序编译：
```
xelatex lshort-new-zh-cn
makeindex lshort-new-zh-cn
xelatex lshort-new-zh-cn
```

进度：

- [x] 第一章 简介
- [ ] 第二章 排版文字
- [ ] 第三章 文档元素
- [x] 第四章 排版公式
- [ ] 第五章 样式
- [ ] 第六章 文献、索引、超链接等
- [ ] 第七章 画图
- [ ] 第八章 宏包
- [ ] 附录A  安装
- [ ] 附录B  错误、帮助、宏包列表
