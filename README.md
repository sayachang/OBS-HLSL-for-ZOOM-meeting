# OBS-HLSL-for-ZOOM-meeting
screen effect shader for video meeting

## OBSでシェーダーを描いて、zoomミーティングをシェーダーライブコーディング環境にしよう！  
「リモートワークで毎日zoomを使って打ち合わせをしているけど、かわりばえのしないビデオ画面にもううんざり！」

そんな風に感じていませんか？！

ぜひOBSで簡単なシェーダーを描いて、ちょっとしたエフェクトで打ち合わせ相手をびっくりさせてみましょう！

やり方はむずかしくはありません！以下の手順でインストールし、このリポジトリのシェーダーをダウンロードして適用してみましょう！

## 導入  
1.もしまだなら[zoom](https://zoom.us/jp-jp/meetings.html)をインストールします
1.[OBS](https://obsproject.com/ja/download)をインストールします
1.バーチャルカメラを使うために[VirtualCamプラグイン](https://obsproject.com/forum/resources/obs-virtualcam.539/)を追加します
1.シェーダーを使うために[Shaderfilterプラグイン](https://obsproject.com/forum/resources/obs-shaderfilter-v1-0-update.775/)も追加します

OBS StudioのインストールフォルダにコピーすればOK

Windows環境でデフォルトのパスに入れた場合、以下のようになります

C:\Program Files\obs-studio\data\obs-plugins\obs-shaderfilter\examples

1.OBSを起動してセットアップします

ソースのところに外付けのカメラや、ノートPC組み込みのカメラを指定します

ツール->VirtualCamでStartをクリックすると映像が出るようになります

1.zoomの設定で、ビデオ->カメラからOBSのVirtualCamを指定します

ソースのカメラ右クリックからフィルタをクリックするとシェーダーを選択できます

User-defined shaderからLoad shader text from fileのチェックを入れ、参照ボタンからシェーダーファイルを選ぶとエフェクトを追加できます


