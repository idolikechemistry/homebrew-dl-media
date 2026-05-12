class DlMedia < Formula
  desc "Media downloader and muxer (Built with Rust)"
  homepage "https://github.com/idolikechemistry/dl-media"
  
  url "https://github.com/idolikechemistry/dl-media/releases/download/v0.2.8/dl-media-mac-arm64"
  version "0.2.8"
  
  sha256 "dbad6d0dbbe50e1b38a51aab56b459f4851f9e0aeb71fa220656b0ed54326ffd"

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