{ config, pkgs, ... }:

{ 
  services.ollama = {
    enable = true;
    loadModels = [
      "deepseek-r1"
      "gemma3"
      "llama3.2"
      "mistral"
      "openchat"
      "phi3"
      "qwen2.5-coder"
      "qwen3"
    ];
  };
}
