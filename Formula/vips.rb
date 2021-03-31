require 'formula'

class Vips < Formula
  homepage 'http://www.vips.ecs.soton.ac.uk/'
  url 'https://github.com/libvips/libvips/archive/refs/tags/v7.30.0.tar.gz'
  sha256 'a04f15f57b5560daa4498bd8a57e0cd7bb3354affbe11ce3e8b445b83b85f29a'

  depends_on 'pkg-config' => :build
  depends_on 'libpng'
  depends_on 'fontconfig'
  depends_on 'gettext'
  depends_on 'glib'
  depends_on 'openslide' => :optional
  depends_on 'jpeg' => :optional
  depends_on 'libtiff' => :optional
  depends_on 'imagemagick' => :optional
  depends_on 'fftw' => :optional
  depends_on 'little-cms' => :optional
  depends_on 'pango' => :optional
  depends_on 'libexif' => :optional
  depends_on 'liboil' => :optional
  depends_on 'openexr' => :optional
  depends_on 'cfitsio' => :optional

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
