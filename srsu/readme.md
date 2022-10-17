# セグメンテーション
"Segmentation of Roots in Soil with U-Net"の[著者実装](https://github.com/Abe404/segmentation_of_roots_in_soil_with_unet)を一部改変



## 事前準備
* ネットワークのパラメータ[checkpoint_10.pkl](https://drive.google.com/file/d/1fm4DYDOPmbt3ec7IVtd0_zqnHoiFXI6_/view?usp=sharing)を`srsu`の直下に配置する
* 入力画像[seed_pack2_resized](https://drive.google.com/drive/folders/1xGZAnCrbeDCEjXytR7PmIMPBmYiGS3sN?usp=sharing)から数枚選んで`srsu/input/seed-pack2_resized`の直下に配置する


## Dockerを用いた実行環境
* GPU利用(推奨)
```sh
docker build -t srsu_seg:gpu .
docker run --gpus all --rm -it -v /disk023/usrs/USERNAME/PATH_TO_DIR:/work srsu_seg:gpu /bin/bash
```
* CPU利用
```sh
docker build -t srsu_seg:cpu -f Dockerfile_cpu .
docker run --rm -it -v /disk023/usrs/USERNAME/PATH_TO_DIR:/work srsu_seg:cpu /bin/bash
```


## 使用するコマンド
```
cd srsu/src
python ./unet/test.py
```

## その他:

* 入力画像の指定はunet/test.pyの次の部分で行う．

```py
def process_test_set(checkpoint_path):
    segment_dir_with_unet(
        checkpoint_path,
        '../input/seed-pack2_resized', #入力ディレクトリ
        '../output/seed_pack2_resized_seg' #出力ディレクトリ
    )
```

* ネットワークのパラメータは，著者が公開しているパラメータに対し画像11枚でfine-tuningしたものを用いた．fine-tuningの際のログは`srsu/checkpoint_10_log.txt`に保存している．
