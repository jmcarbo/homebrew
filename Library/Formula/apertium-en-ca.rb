require 'formula'
require 'apertium'

class ApertiumEnCa <Formula
  url 'http://downloads.sourceforge.net/project/apertium/apertium-en-ca/0.9.1/apertium-en-ca-0.9.1.tar.gz'
  homepage 'http://www.apertium.org'
  md5 '6de04d420ac1d273b620b4b82ac41f61'
  depends_on 'pkg-config' => :build
  depends_on 'pcre'
  depends_on 'lttoolbox'
  depends_on 'apertium'


  def install
    apertium_path = Apertium.new('apertium').installed_prefix
    system "./configure", "--prefix=#{apertium_path}"
    system "make install"
  end
end
