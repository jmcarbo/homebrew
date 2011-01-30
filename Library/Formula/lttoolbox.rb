require 'formula'

class Lttoolbox <Formula
  url 'http://downloads.sourceforge.net/project/apertium/lttoolbox/3.2/lttoolbox-3.2.0.tar.gz'
  md5 '708e7de837ed363f7103035ef2849fe4'
  homepage 'www.apertium.org'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
