#!/bin/bash

# Provisioning script for Docker container setup

# Variables (Update these as needed)
APT_PACKAGES=(
    "curl"
    "git"
    # Add more required packages here
)

PIP_PACKAGES=(
    "numpy"
    "pandas"
    # Add more required Python packages here
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/Nourepide/ComfyUI-Allor"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/city96/ComfyUI-GGUF"
    "https://github.com/alexopus/ComfyUI-Image-Saver"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/godmt/ComfyUI-List-Utils"
    "https://github.com/shiimizu/ComfyUI-TiledDiffusion"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/chflame163/ComfyUI_LayerStyle"
    "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/BadCafeCode/execution-inversion-demo-comfyui"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
)

CHECKPOINT_MODELS=(
    "https://civitai.com/api/download/models/1193229?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/1055211?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/1003041?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/994561?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/1048219?type=Model&format=SafeTensor&size=full&fp=fp8"
    "https://civitai.com/api/download/models/1134093?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1171422?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/742904?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/897489?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1111281?type=Model&format=SafeTensor&size=full&fp=fp8"
    "https://civitai.com/api/download/models/1036974?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1038101?type=Model&format=SafeTensor&size=full&fp=fp8"
)

CLIP=(
    "https://huggingface.co/calcuis/sd3.5-large-gguf/blob/main/clip_g.safetensors"
    "https://huggingface.co/calcuis/sd3.5-large-gguf/blob/main/t5xxl_fp8_e4m3fn.safetensors"
)

STYLE_MODELS=(
    "https://huggingface.co/black-forest-labs/FLUX.1-Redux-dev/resolve/main/flux1-redux-dev.safetensors?download=true"
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro/resolve/main/diffusion_pytorch_model.safetensors?download=true"
    "https://huggingface.co/depth-anything/Depth-Anything-V2-Large/resolve/main/depth_anything_v2_vitl.pth?download=true"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

LORA_MODELS=(
    "https://civitai.com/api/download/models/963656?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/779596?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1055141?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1019304?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1115050?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1143513?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1142009?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1031573?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1026423?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/931225?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/931252?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/817637?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1157036?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/954444?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1100029?type=Model&format=SafeTensor"
    "https://civitai.com/models/968764/naked-selfies-or-flux?modelVersionId=1084686"
    "https://civitai.com/api/download/models/1101748?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1047380?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1054251?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1112151?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1169319?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1089924?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1084967?type=Model&format=SafeTensor"
)

CLIP_VISION=(
    "https://huggingface.co/Comfy-Org/sigclip_vision_384/blob/main/sigclip_vision_patch14_384.safetensors"
)

# API Keys
HUGGINGFACE_TOKEN="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"
CIVITAI_TOKEN="b4a29fbe3852655593b320959ee1ad43"

DISK_GB_REQUIRED=50
if command -v df >/dev/null 2>&1 && command -v awk >/dev/null 2>&1; then
    DISK_GB_ALLOCATED=$(df --output=avail / | tail -1 | awk '{print $1 / 1024 / 1024}')
else
    echo "ERROR: Required commands 'df' or 'awk' are not available. Cannot determine disk space."
    exit 1
fi

# Functions
print_header() {
    echo -e "\n##############################################"
    echo -e "#          Provisioning container            #"
    echo -e "##############################################\n"
    if (( $(echo "$DISK_GB_ALLOCATED < $DISK_GB_REQUIRED" | bc -l) )); then
        echo "WARNING: Available disk space is below the recommended ${DISK_GB_REQUIRED}GB."
    fi
}

print_footer() {
    echo -e "\nProvisioning complete. The container is ready.\n"
}

install_apt_packages() {
    if [[ ${#APT_PACKAGES[@]} -gt 0 ]]; then
        echo "Installing APT packages..."
        sudo apt-get update -q
        sudo apt-get install -y "${APT_PACKAGES[@]}"
    fi
}

install_pip_packages() {
    if [[ ${#PIP_PACKAGES[@]} -gt 0 ]]; then
        echo "Installing Python packages..."
        pip install --no-cache-dir "${PIP_PACKAGES[@]}"
    fi
}

download_models() {
    local dir=$1
    shift
    local urls=("$@")
    mkdir -p "$dir"
    for url in "${urls[@]}"; do
        echo "Downloading: $url"
        if [[ $url =~ huggingface\.co ]]; then
            wget --header="Authorization: Bearer $HUGGINGFACE_TOKEN" -q --show-progress -P "$dir" "$url"
        elif [[ $url =~ civitai\.com ]]; then
            wget --header="Authorization: Bearer $CIVITAI_TOKEN" -q --show-progress -P "$dir" "$url"
        else
            wget -q --show-progress -P "$dir" "$url"
        fi
    done
}

clone_or_update_nodes() {
    for repo in "${NODES[@]}"; do
        local dir="/workspace/ComfyUI/custom_nodes/$(basename "$repo" .git)"
        if [[ -d "$dir" ]]; then
            echo "Updating node: $repo"
            git -C "$dir" pull
        else
            echo "Cloning node: $repo"
            git clone "$repo" "$dir"
        fi
    done
}

# Main Execution
set -e  # Exit on any error
set -o pipefail

print_header
install_apt_packages
install_pip_packages

# Example of downloading models
download_models "/workspace/ComfyUI/models/checkpoints" "${CHECKPOINT_MODELS[@]}"
download_models "/workspace/ComfyUI/models/clip" "${CLIP[@]}"
download_models "/workspace/ComfyUI/models/style_models" "${STYLE_MODELS[@]}"
download_models "/workspace/ComfyUI/models/vae" "${VAE_MODELS[@]}"
download_models "/workspace/ComfyUI/models/controlnet" "${CONTROLNET_MODELS[@]}"
download_models "/workspace/ComfyUI/models/upscale_models" "${ESRGAN_MODELS[@]}"
download_models "/workspace/ComfyUI/models/lora" "${LORA_MODELS[@]}"
download_models "/workspace/ComfyUI/models/clip_vision" "${CLIP_VISION[@]}"

# Example of cloning/updating nodes
clone_or_update_nodes

print_footer
