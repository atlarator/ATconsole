{ config, pkgs, ... }:



{
  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Select internationalisation properties.
  i18n.defaultLocale = "zh_CN.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };

  i18n.inputMethod = {
    type = "fcitx5"; 
    enable = true; 
    fcitx5.addons = with pkgs; [ 
      fcitx5-gtk # alternatively, 
      kdePackages.fcitx5-qt 
      kdePackages.fcitx5-with-addons
      qt6Packages.fcitx5-chinese-addons
      fcitx5-pinyin-moegirl
      fcitx5-pinyin-minecraft
      fcitx5-mozc
      fcitx5-nord # a color theme 
    ]; 
  };

  # 安装中文字体
  fonts.packages = with pkgs; [
    noto-fonts-cjk-sans   # Noto 字体
  ];

}
