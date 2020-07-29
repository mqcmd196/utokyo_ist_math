# 東京大学情報理工学系研究科数学過去問議論用リポジトリ

#### build status
![release](https://github.com/mqcmd196/utokyo_ist_math/workflows/release/badge.svg)
![develop](https://github.com/mqcmd196/utokyo_ist_math/workflows/develop/badge.svg)

## 概要
本リポジトリは，有志の方々によって情報理工学系研究科の数学の過去問の解答を議論することを目的としています．協力していただける方は，issueやpull requestを積極的に活用して，解答の議論をしていただけると助かります．

## PDFのリンク
https://github.com/mqcmd196/utokyo_ist_math/releases/latest

## 仕組み
各年のフォルダにはその年の問題のURL`problem.txt`及び解答のTeXファイル`answer.tex`が格納されています．masterブランチのTeXファイルの変更があると，GitHubのActionが走ってTeXファイルがPDFにコンパイルされreleaseとしてアップロードされます．各自のPCでcloneして閲覧したい場合は，`compile.sh`を実行することで各年の`answer.pdf`が生成されます．

```bash
cd utokyo_ist_math
./compile.sh
```

なおこれを実行するにはuplatex，latexmkなどが動作する環境が必要です．詳しくは[こちら](https://github.com/mqcmd196/utokyo_ist_math/blob/master/.github/actions/latex/Dockerfile)のDockerFileの`apt-get install`でインストールされている箇所を参照してください．個人のPCでTeX環境を構築するのが面倒な方は，OverleafやCloud LaTeXなどをお使いください．

## 貢献していただける方へ

### Issue
誤りや別解等を発見したが，GitHubの操作に慣れていないという方は，[Issuesというタブ](https://github.com/mqcmd196/utokyo_ist_math/issues)を開いていただき，そちらにNew issueとしてスレッドを作成してください．

### Pull request
GitHubの操作に慣れていて，かつ誤りや別解，バグを発見された方は，本リポジトリをforkしていただき，本リポジトリのdevelopブランチへのPull requestをお願いいたします．developブランチへのPull requestが確認されると，CIがTeXファイルのビルドを行い，結果を表示します．ビルド結果及び解答の内容から，メンテナがdevelopブランチにマージします．なおdefaultのブランチはdevelopブランチです．

## おことわり
本リポジトリに上がっている解答は，必ずしも正しいとは限りません．間違っていた場合の責任は負いかねます．また間違いを見つけた場合には，issueにてその旨を報告していただくか，pull requestにて修正をしていただけると助かります．  
CIも開発途中ですので，うまい仕組みがあればぜひ教えてください．