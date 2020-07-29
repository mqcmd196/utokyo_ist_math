# 情報理工学系研究科数学過去問

#### build status
![release](https://github.com/mqcmd196/utokyo_ist_math/workflows/release/badge.svg)
![develop](https://github.com/mqcmd196/utokyo_ist_math/workflows/develop/badge.svg)

## 概要
本リポジトリは，有志によって情報理工学系研究科の数学の過去問の解答を制作することを目的としています．協力していただける方は，issueやpull requestを積極的に活用して，解答の議論をしていただけると助かります．

## 仕組み
各年のフォルダにはその年の問題のPDF`problem.pdf`及び解答のTeXファイル`answer.tex`が格納されています．masterブランチのTeXファイルの変更があると，GitHubのCIが走ってTeXファイルがコンパイルされます．各自のPCでcloneして閲覧したい場合は，`compile.sh`を実行することで`answer.pdf`が生成されます．

```bash
cd utokyo_ist_math
./compile.sh
```

## おことわり
本リポジトリに上がっている解答は，必ずしも正しいとは限りません．間違っていた場合の責任は負いかねます．また間違いを見つけた場合には，issueにてその旨を報告していただくか，pull requestにて修正をしていただけると助かります．  
CIも開発途中ですので，うまい仕組みがあればぜひ教えてください．