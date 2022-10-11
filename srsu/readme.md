"Segmentation of Roots in Soil with U-Net"の著者実装を一部改変して使用

https://github.com/Abe404/segmentation_of_roots_in_soil_with_unet

## 事前準備
ネットワークのパラメータファイル[checkpoint_10.pkl](https://drive.google.com/file/d/1fm4DYDOPmbt3ec7IVtd0_zqnHoiFXI6_/view?usp=sharing)をsrsuの直下に配置する



## Docker環境
```sh
docker pull t12nakatani/srsu_nakatani:latest
```


## 使用した時のコマンド
```
cd ./srsu/src
python3 ./unet/test_resized.py
```

## 詳細:

入力画像の指定はunet/test.pyの次の部分で行う．

```py
def process_test_set(checkpoint_path):
    segment_dir_with_unet(
        checkpoint_path,
        '../seed-pack2_resized', #入力ディレクトリ
        '../output/seed_pack2_resized_seg' #出力ディレクトリ
    )
    print_metrics_from_dirs(
        '../data/test/annotations', # 使わない
        '../output/seed_pack2_seg' # 使わない
    )
```

ネットワークのパラメータは，著者が紹介しているものに対し画像11枚でfine-tuningしたものを用いた．fine-tuningの際のログははsrsu/checkpoint_10_log.txt
