#!/bin/bash
mkdir -p inputs
mkdir -p outputs/midas
mkdir -p outputs/leres

wget https://sfu.ca/~yagiz/CVPR21/latest_net_G.pth
#gdown https://drive.google.com/u/0/uc?id=1cU2y-kMbt0Sf00Ns4CN2oO9qPJ8BensP&export=download

# Downloading merge model weights
mkdir -p pix2pix/checkpoints/mergemodel/
mv latest_net_G.pth pix2pix/checkpoints/mergemodel/

# Downloading Midas weights
wget https://github.com/AlexeyAB/MiDaS/releases/download/midas_dpt/midas_v21-f6b98070.pt
mv midas_v21-f6b98070.pt midas/model.pt

# # Downloading LeRes weights
wget https://cloudstor.aarnet.edu.au/plus/s/lTIJF4vrvHCAI31/download
mv download res101.pth


# python run.py --Final --data_dir inputs --output_dir  outputs/midas/ --depthNet 0
# python run.py --Final --data_dir inputs --output_dir  outputs/leres/ --depthNet 2
