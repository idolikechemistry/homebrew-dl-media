class DlMedia < Formula
  desc "Media downloader and muxer (Built with Rust)"
  homepage "https://github.com/idolikechemistry/dl-media"
  
  url "https://github.com/idolikechemistry/dl-media/releases/download/v0.2.4/dl-media-mac-arm64"
  version "0.2.4"
  
  sha256 "3025c69e78b32dcfb266ede7fe447fafa8f33ae73f25a3effe9b93dca46992dd"

  def install
    # 這一行就等同於你原本指令裡的：
    # mv dl-media-mac-arm64 /usr/local/bin/dl-media
    bin.install "dl-media-mac-arm64" => "dl-media"
  end

  test do
    # 測試安裝是否成功
    system "#{bin}/dl-media", "--version"
  end
end