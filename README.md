# OBS-HLSL-for-ZOOM-meeting
screen effect shader for video meeting

## OBSでシェーダーを描いて、zoomミーティングをシェーダーライブコーディング環境にしよう！  
![OBS zoom shader](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/obs-zoom-3x3-shader.png "OBS zoom shader")

「リモートワークで毎日zoomを使って打ち合わせをしているけど、かわりばえのしないビデオ画面にもううんざり！」

そんな風に感じていませんか？！

ぜひOBSで簡単なシェーダーを描いて、ちょっとしたエフェクトで打ち合わせ相手をびっくりさせてみましょう！

やり方はむずかしくはありません！以下の手順でインストールし、このリポジトリのシェーダーをダウンロードして適用してみましょう！

## 導入  
1. もしまだなら[zoom](https://zoom.us/jp-jp/meetings.html)をインストールします  
2. [OBS](https://obsproject.com/ja/download)をインストールします  
3. バーチャルカメラを使うために[VirtualCamプラグイン](https://obsproject.com/forum/resources/obs-virtualcam.539/)を追加します  
4. シェーダーを使うために[Shaderfilterプラグイン](https://obsproject.com/forum/resources/obs-shaderfilter-v1-0-update.775/)も追加します  

OBS StudioのインストールフォルダにコピーすればOK

Windows環境でデフォルトのパスに入れた場合、以下のようになります

C:\Program Files\obs-studio\data\obs-plugins\obs-shaderfilter\examples

5. OBSを起動してセットアップします  

![boot OBS](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/boot-obs.png "boot OBS")

ソースのところに外付けのカメラや、ノートPC組み込みのカメラを指定します

ツール->VirtualCamでStartをクリックすると映像が出るようになります

![tool virtual cam](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/tool-virtual-cam.png "tool virtual cam")

6. zoomの設定で、ビデオ->カメラからOBSのVirtualCamを指定します  

![zoom config](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/zoom-configure.png "zoom config")

ソースのカメラ右クリックからフィルタをクリックするとシェーダーを選択できます

![apply shader](https://raw.githubusercontent.com/sayachang/OBS-HLSL-for-ZOOM-meeting/develop/images/apply-shader.png "apply shader")

User-defined shaderからLoad shader text from fileのチェックを入れ、参照ボタンからシェーダーファイルを選ぶとエフェクトを追加できます

このリポジトリのvideo3x3.shaderを適用すれば、一番上にある画像のような映像になります。

