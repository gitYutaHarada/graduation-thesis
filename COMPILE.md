# LaTeX コンパイル手順

このドキュメントでは、論文の LaTeX ファイルを PDF にコンパイルする方法を説明します。

## 通常のコンパイル方法

通常は以下のコマンドで PDF を生成できます:

```powershell
latexmk -pdfdvi tex/form.tex
```

このコマンドは以下の処理を自動的に実行します:
1. LaTeX のコンパイル
2. BibTeX による参考文献の処理
3. DVI から PDF への変換

## BibTeX の問題が発生した場合の回避策

`latexmk` が BibTeX の実行中に停止する場合は、以下の手動手順で PDF を生成できます:

### 手順 1: LaTeX のコンパイル

```powershell
cd tex
uplatex form.tex
```

必要に応じて複数回実行して、相互参照を解決します:

```powershell
uplatex form.tex
uplatex form.tex
```

### 手順 2: DVI から PDF への変換

```powershell
dvipdfmx form.dvi
```

これで `form.pdf` が生成されます。

### 注意事項

この方法では BibTeX を実行しないため、参考文献リストが更新されません。既存の `.bbl` ファイルが使用されます。

## トラブルシューティング

### BibTeX のメモリ問題

BibTeX (`upbibtex`) が大量のメモリを再割り当てし続ける場合:

1. 既存の中間ファイルを削除:
   ```powershell
   cd tex
   Remove-Item *.aux, *.bbl, *.blg, *.log
   ```

2. 再度コンパイルを試行

### PDF が生成されない場合

1. DVI ファイルが存在することを確認:
   ```powershell
   ls tex\form.dvi
   ```

2. エラーログを確認:
   ```powershell
   cat tex\form.log
   ```

## ファイル構成

- `tex/form.tex` - メインの LaTeX ファイル
- `tex/bib/biblio.bib` - 参考文献データベース
- `tex/chapters/` - 各章の LaTeX ファイル
- `latexmkrc` - latexmk の設定ファイル
