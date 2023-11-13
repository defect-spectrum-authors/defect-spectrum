# Defect Spectrum: A Granular Look of Large-Scale Defect Datasets with Rich Semantics

This is the official implementation of the synthetic data part of ***Defect Spectrum***.

Defect inspection is paramount within the closed-loop manufacturing system. However, existing datasets for defect inspection often lack precision and semantic granularity required for practical applications. In this paper, we introduce the Defect Spectrum, a comprehensive benchmark that offers precise, semantic-abundant, and large-scale annotations for a wide range of industrial defects. Building on four key industrial benchmarks, our dataset refines existing annotations and introduces rich semantic details, distinguishing multiple defect types within a single image. Furthermore, we introduce Defect-Gen, a two-stage diffusion-based generator designed to create high-quality and diverse defective images, even when working with limited datasets. The synthetic images generated by Defect-Gen significantly enhance the efficacy of defect inspection models. Overall, The Defect Spectrum dataset demonstrates its potential in defect inspection research, offering a solid platform for testing and refining advanced models.

<p align="center"> <img src="docs/pipeline.png" width="100%"> </p>

For more details, please refer to:
**Defect Spectrum: A Granular Look of Large-Scale Defect Datasets with Rich Semantics [[Paper](https://arxiv.org/abs/2310.17316)][[Project Page](https://defect-spectrum-authors.github.io/defect-spectrum/)][[Dataset](https://huggingface.co/datasets/Andyson/DefectSpectrum)]** <br />



## Installation
1. Create an environment with python==3.8.0 `conda create -n diff python==3.8.0`.
2. Activate it `conda activate diff`.
3. Install basic requirements `pip install -r requirements.txt`.

## Getting Started
### Train your own Defect-Gens
1. Specify the number of defect types in `train_[large/small].sh` corresponds to your own needs. 
2. Prepare your config yaml file for both large and small models. The input and output channel should be a total of the number of defect types, RGB channels, background channels(if needed).
3. Run it with `sh train_[large/small].sh`

### Inference
1. All the checkpoints will be save to  `/[working_dir]/checkpoint`.
2. Update your checkpoints in `inference.sh`.
3. Specify your switching point for the large and small model in `--step_inference`. 
4. Specify your defective types in `--num_defect`.
2. Run inference with `sh inference.sh`.

## Acknowledgement
-  This work is built upon the [Guided-Diffusion](https://github.com/openai/guided-diffusion) and [SinDiffusion](https://github.com/weilunwang/sindiffusion).
-  The datasets we adopted come from [Apple-Vision](https://huggingface.co/datasets/VISION-Workshop/VISION-Datasets), [MVTec-AD](https://www.mvtec.com/company/research/datasets/mvtec-ad), [DAGM-2007](https://conferences.mpi-inf.mpg.de/dagm/2007/prizes.html) and [Cotton](https://www.cottoninc.com/quality-products/textile-resources/fabric-defect-glossary/).
-  We would like to extend our greatest thanks to those who helped at SmartMore Corp., regardless of whether their contributions are recognized or remain behind the scenes.
