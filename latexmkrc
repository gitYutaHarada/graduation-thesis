# LaTeXコンパイルコマンド（uplatex: 日本語対応、エラーで停止、外部コマンド実行を許可）
$latex            = 'uplatex -halt-on-error -enable-write18';
# サイレントモード用LaTeXコンパイルコマンド（バッチモードで対話を抑制）
$latex_silent     = 'uplatex -halt-on-error -enable-write18 -interaction=batchmode';
# BibTeX（参考文献処理）コマンド
$bibtex           = 'bibtex';
# DVI→PDF変換コマンド（dvipdfmx使用）
$dvipdf           = 'dvipdfmx %O -o %D %S';
# 索引生成コマンド（mendex: 日本語対応の索引作成ツール）
$makeindex        = 'mendex %O -o %D %S';
# 最大繰り返しコンパイル回数（相互参照を解決するため）
$max_repeat       = 5;
# ソースファイルのディレクトリに移動してコンパイル
$do_cd            = 1;
# PDF生成モード（3 = DVIファイル経由でPDFを生成）
$pdf_mode	      = 3;

# タイプセット後にlatexmkがPDFを削除しないようにする
# これによりSkimが自動的にPDFの更新を追跡できる
$pvc_view_file_via_temporary = 0;

# PDFビューアとしてSkimを使用（macOS用設定）
$pdf_previewer    = "open -ga /Applications/Skim.app";

# 自動リフレッシュ設定
$pdf_update_method = 4; # 以下のコマンドを呼び出す
# $pdf_update_command = "open -a Preview %S;sleep 0.1;hoge.app";
$pdf_update_command = "open -ga /Applications/Skim.app";

