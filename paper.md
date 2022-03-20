## 反射光除去(reflection removal)

* **Single Image Reflection Removal Through Cascaded Refinement** 

  Chao Li, Yixiao Yang, Kun He, Stephen Lin, John E. Hopcroft; Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR), 2020, pp. 3565-3574. [(github)](https://github.com/JHL-HUST/IBCLN)

  <img width="1180" alt="IBCLN_fig1" src="https://user-images.githubusercontent.com/51512765/159189483-df01809c-fffc-4687-8a77-d96b4d25f0ab.png">

  一枚の画像を頼りに，反射光を含む画像から反射光を取り除くSingle Image Reflection Removalというタスクを扱った論文．
  
  画像が透過光と反射光の線形結合で構成されているという仮定のもと，それら2つに分解しお互いを相補的に学習していく．この際，一度に透過光画像と反射光画像を推定するのではなく，あるネットワークで不完全な透過光画像と反射光画像からスタートし，繰り返し処理により後続のネットワークで少しずつ改良していく．これは，透過光画像と反射光画像のうち一方が良い推定を行えば，もう一方も良い推定を行いやすいというタスクの特性に適している．ただし，ネットワークが深くなると勾配消失問題が発生するため，中間層にLSTMを組み込みこれを解決している．
  
  

<!-- 

 最初に用意した画像はアクリル板に反射による像が映り込んでいたのでその除去を試みた．上の画像が処理前で下の画像が処理後．想定していたよりも反射光が残ったため，光の環境を整えた状態で撮影を行う方針に変更．

![138-1_0315_real_I_00](https://user-images.githubusercontent.com/51512765/158955584-420d82ef-51fe-47f1-bbf4-de6548dcf2a8.png)

![138-1_0315_fake_Ts_03](https://user-images.githubusercontent.com/51512765/158955765-173b851c-beb1-44db-8d20-c9b457c3f160.png)

-->

<br><br><br>

## 根のセグメンテーション

* **Segmentation of Roots in Soil with U-Net** 

  Smith, A.G., Petersen, J., Selvan, R. *et al.* Segmentation of roots in soil with U-Net. *Plant Methods* 16, 13 (2020). [(github)](https://github.com/Abe404/segmentation_of_roots_in_soil_with_unet)

  <img width="985" alt="srsu_fig7" src="https://user-images.githubusercontent.com/51512765/159189557-3af608b5-b817-411b-89dd-14a9a74b44c1.png">

  根の分析方法の一つである線分交差法を行うために，セグメンテーションを扱っている論文．

  チコリ(Cichorium intybus L.)の根を対象とした[U-Net](https://link.springer.com/chapter/10.1007/978-3-319-24574-4_28)の有効性を独自データセットで検証．独自データセットはピクセルレベルでアノーテーションされたチコリの根の画像48枚(train:29枚, val:9枚, test:10枚)で構成される．評価実験により，手動による線分交差法を自動セグメンテーションで置き換えることが可能であることを示した．(手動アノーテーションと自動セグメンテーション結果のF1値は0.7となった．)

  <!-- U-Netの元実装に合わせて，画像を小さな領域に分割し，その小領域に対しセグメンテーションを行う．その際，下図のように出力の領域(青:572x572)よりも大きな領域(緑:388x388)を入力とし領域の端の部分の周辺情報を確保している．

  <img width="256" alt="srsu_fig3" src="https://user-images.githubusercontent.com/51512765/159189064-c7bd896e-bcd4-4310-af21-974c3cb9b5b9.png">

  -->

  

  







