{
  config,
  pkgs,
  ...
}: {
  services.ollama = {
    enable = true;
    loadModels = [
      "deepseek-r1:1.5b"
      "gemma3:4b"
      "llama3.2:3b"
      "mistral:7b"
      "openchat:7b"
      "qwen3:4b"
      "qwen2.5-coder:3b"
    ];
  };
}
