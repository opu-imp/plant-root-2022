# fine-tuningについて


## 事前準備
* `srsu/saved_output/unet`の直下に[学習済みmodelパラメータファイル](https://zenodo.org/record/3484015)を配置
* データセットを次のように配置
  * photosにセグメンテーション対象のRGB画像
  * annotationsにセグメンテーションマスク画像

![picture 0](../../images/44e344ea66d457b4c1cdf97309c39767efa3929dd90188b99803f5d0737a93ed.png)  


## 実行手順
```sh
docker build -t srsu_seg:gpu .
docker run --gpus all --rm -it -v /disk023/usrs/USERNAME/PATH_TO_DIR:/work srsu_seg:gpu /bin/bash

cd /work/plant-root/srsu/src/ && python3 unet/finetune.py
```

## その他
* 実行環境: GPU23
* 画像サイズによって精度が大きく変動