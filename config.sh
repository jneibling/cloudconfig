#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://..."

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
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
	"https://github.com/cubiq/ComfyUI_essentials"
	"https://github.com/chflame163/ComfyUI_LayerStyle"
	"https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
	"https://github.com/chrisgoringe/cg-use-everywhere"
	"https://github.com/BadCafeCode/execution-inversion-demo-comfyui"
	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/WASasquatch/was-node-suite-comfyui"
)

CLIP=(
	"https://huggingface.co/calcuis/sd3.5-large-gguf/blob/main/clip_g.safetensors"
	"https://huggingface.co/calcuis/sd3.5-large-gguf/blob/main/clip_g.safetensors"
	"https://huggingface.co/calcuis/sd3.5-large-gguf/blob/main/t5xxl_fp8_e4m3fn.safetensors"
)
	
CLIP_VISION=(
	"https://huggingface.co/Comfy-Org/sigclip_vision_384/blob/main/sigclip_vision_patch14_384.safetensors"

)
STYLE_MODELS=(
	"https://huggingface.co/black-forest-labs/FLUX.1-Redux-dev/resolve/main/flux1-redux-dev.safetensors?download=true"

WORKFLOWS=(
	"https://github.com/calcuis/comfy/blob/main/workflow-sd3.5-gguf.json"
	"https://civitai.com/api/download/models/986437?type=Archive&format=Other"
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

UNET_MODELS=(

)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
	"https://civitai.com/api/download/models/963656?type=Model&format=SafeTensor"
	"https://civitai.com/api/download/models/779596?type=Model&format=SafeTensor"
	"https://civitai.com/api/download/models/1055141?type=Model&format=SafeTensor"
	"https://civitai.com/api/download/models/1019304?type=Model&format=SafeTensor"
	"https://civitai.com/api/download/models/1115050?type=Model&format=SafeTensor"
	"https://civitai.com/api/download/models/1143513?type=Model&format=SafeTensor"
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

VAE_MODELS=(
	"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
	"https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro/resolve/main/diffusion_pytorch_model.safetensors?download=true"
	"https://huggingface.co/depth-anything/Depth-Anything-V2-Large/resolve/main/depth_anything_v2_vitl.pth?download=true"
	
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/checkpoints" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/upscale_models" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/clip" \
        "${CLIP[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/clip_vision" \
        "${CLIP_VISION[@]}"
    provisioning_get_models \
        "${WORKSPACE}/ComfyUI/models/style_models" \
        "${STYLE_MODELS[@]}"
		
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

provisioning_start