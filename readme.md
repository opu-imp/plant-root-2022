# Plant-root

## (反射光の除去: 不採用)

 最初に用意した画像はアクリル板に反射による像が映り込んでいたのでその除去を試みた．上の画像が処理前で下の画像が処理後．想定していたよりも反射光が残ったため，光の環境を整えた状態で撮影を行う方針に変更．

![138-1_0315_real_I_00](https://user-images.githubusercontent.com/51512765/158955584-420d82ef-51fe-47f1-bbf4-de6548dcf2a8.png)

![138-1_0315_fake_Ts_03](https://user-images.githubusercontent.com/51512765/158955765-173b851c-beb1-44db-8d20-c9b457c3f160.png)

## 根のセグメンテーション

根箱やシードパックを撮影した画像から根のセグメンテーションを行った．解析対象の画像は，成長観察のためにいくつかの個体を数回に渡り撮影したもの 
![138-P-1_211124](https://user-images.githubusercontent.com/51512765/156523396-3497deec-07c6-449a-b543-686be297dc40.png)

* srsu/src_/unet/test_resized.py  

## 位置合わせ

画像ごとに画角，被写体との距離が異なるため，×印の位置をもとに射影変換により位置合わせをした

* pynb/位置合わせ(画像中の座標取得・射影変換).ipynb

位置合わせをした後もわずかにズレが残るため，画像処理(膨張・縮小・閾値処理等)によりそれらを軽減した

* pynb/remove_noise_from_transformed.ipynb

## 差分抽出・描画

ズレが軽減できたら撮影と撮影の間での成長の度合いを確認するため，差分の描画した

* pynb/extract_diff.ipynb(差分抽出)
* pynb/draw_diff.ipynb(差分の描画)
* pynb/caption.ipynb(差分の描画に用いた画像右上のキャプションの作成)

![138-P-1_211129](https://user-images.githubusercontent.com/51512765/156688297-9decb6a6-71da-4781-8c18-63b5bcc51ede.png)



## projection profile

画像中のどの部分が活発に成長しているかを調べるため，差分画像に対しprjection profileを計算

* pynb/prjection profile.ipynb

![horizontal_138-P-1](https://user-images.githubusercontent.com/51512765/156716313-8a2dee7d-7876-4ee2-b70f-51a53c5de099.png)

## [参考文献](https://github.com/t-nakatani/plant-root/blob/main/paper.md)

[plant-root.bib](https://github.com/t-nakatani/plant-root/blob/main/plant-root.bib)