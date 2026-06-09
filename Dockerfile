FROM runpod/worker-comfyui:5.8.5-base
RUN comfy-node-install comfyui_ipadapter_plus
RUN comfy-node-install comfyui-gguf
