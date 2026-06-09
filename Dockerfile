FROM runpod/worker-comfyui:5.8.5-base
RUN cd /comfyui/custom_nodes && git clone --depth 1 https://github.com/cubiq/ComfyUI_IPAdapter_plus.git && git clone --depth 1 https://github.com/city96/ComfyUI-GGUF.git && pip install --upgrade gguf
RUN rm -rf /comfyui/models/ipadapter /comfyui/models/clip_vision && ln -s /runpod-volume/models/ipadapter /comfyui/models/ipadapter && ln -s /runpod-volume/models/clip_vision /comfyui/models/clip_vision
