"Segmentation of Roots in Soil with U-Net"の著者実装を一部改変して使用

https://github.com/Abe404/segmentation_of_roots_in_soil_with_unet



## Docker環境
    > docker pull t12nakatani/srsu_nakatani:latest


## 使用した時のコマンド
    > cd */plant-root/srsu/src_
    > python3 ./unet/test_resized.py

## 詳細:

入力画像の指定はunet/test.pyの次の部分で行う．

```
def process_test_set(checkpoint_path):
    segment_dir_with_unet(
        checkpoint_path,
        '../seed-pack2_resized', #入力
        '../output/seed_pack2_resized_seg' #出力
    )
    print_metrics_from_dirs(
        '../data/test/annotations', # 使わない
        '../output/seed_pack2_seg' # 使わない
    )
```

ネットワークのパラメータは，著者が紹介しているものに対し画像11枚でfine-tuningしたものを用いた．fine-tuningの結果はsrsu/checkpoint_10.txt
