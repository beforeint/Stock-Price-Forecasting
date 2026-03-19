#!/bin/bash

#SBATCH --job-name=StockMixer       # 스케줄러에 표시될 작업 이름
#SBATCH --partition=gpu1            # 사용할 파티션 
#SBATCH --nodes=1                   # 사용할 노드 수 
#SBATCH --gres=gpu:1                # 사용할 GPU 개수 
#SBATCH --cpus-per-task=4           # 할당받을 CPU 코어 수 
#SBATCH --output=train_log_%j.out   # 정상 출력 로그 저장 파일명 
#SBATCH --error=train_err_%j.err    # 에러 로그 저장 파일명

# 1. 가상환경 활성화 (주석 해제됨)
source ~/.bashrc
conda activate estimate

# 2. 폴더 이동 및 실행
mkdir -p log  # 로그 저장 폴더 생성
cd src
python train.py