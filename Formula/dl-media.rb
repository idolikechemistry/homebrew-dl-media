class DlMedia < Formula
  desc "Media downloader and muxer (Built with Rust)"
  homepage "https://github.com/idolikechemistry/dl-media"
  
  url "https://github.com/idolikechemistry/dl-media/releases/download/v0.2.9/dl-media-mac-arm64"
  version "0.2.9"
  
  sha256 "2a1338252103d4783e833bd7437905f14f13e0580761a2f63a97d553dc73db93"

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