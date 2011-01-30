require 'formula'
class Apertium <Formula
  url 'http://downloads.sourceforge.net/project/apertium/apertium/3.2/apertium-3.2.0.tar.gz'
  homepage 'http://www.apertium.org'
  md5 '803562e5ea0a5cd9ccb5ea79cca0d76d'
  depends_on 'pkg-config' => :build
  depends_on 'pcre'
  depends_on 'lttoolbox'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
