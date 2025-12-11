# bthesis (LaTeX project)

このリポジトリは upLaTeX + dvipdfmx で組版する卒論／報告書プロジェクトです。

## 主なファイルとディレクトリ
```
bthesis/
├─ tex/                    # TeX ソース一式
│  ├─ form.tex             # メインファイル（ここをコンパイル）
│  ├─ chapters/            # 各章
│  ├─ appendix/            # 付録
│  ├─ frontmatter/         # 謝辞など
│  └─ bib/                 # 参考文献データベース
├─ img/                    # 図版（例: sample.pdf）
├─ sty/                    # スタイルファイル（TitlePage など）
├─ jlisting.sty            # listings 拡張スタイル
├─ latexmkrc               # latexmk 設定（MiKTeX 用に write18 有効）
└─ abstract.tex            # 別途の要約文書
```

## ビルド方法
MiKTeX 環境で `latexmk` を利用します（`latexmkrc` は `uplatex + dvipdfmx`、`-enable-write18` を設定済み）。

```pwsh
# プロジェクトルートで実行
latexmk -pdfdvi tex/form.tex
```

### 手動ステップ（参考）
```pwsh
uplatex -halt-on-error tex/form.tex
upbibtex tex/form    # 参考文献を解決する場合
uplatex -halt-on-error tex/form.tex
uplatex -halt-on-error tex/form.tex
dvipdfmx tex/form.dvi
```

## 生成物
`tex/` 配下に `form.pdf` ほか `form.log`, `form.aux` などが生成されます。クリーンアップは `latexmk -c`（または `-C` で PDF 含む全削除）を利用してください。

## 依存
- MiKTeX（upLaTeX, dvipdfmx, upbibtex を含む）
- 日本語フォントマップ（ptex-fontmaps 等）が導入済みであること

## メモ
- 画像は `img/` に配置し、`
  \graphicspath{{../img/}}
  \includegraphics{sample.pdf}
  ` のように利用します。
- スタイルファイルは `sty/` とルートの `jlisting.sty` を読み込みます。
# graduation-thesis
