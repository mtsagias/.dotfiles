cd /Applications/TrueCrypt.app/Contents/Resources/
mkdir Library
cd /usr/local/lib/
sudo chown manolis pkgconfig/
mv libmacfuse_i32.2.dylib /Applications/TrueCrypt.app/Contents/Resources/Library/libmacfuse_i32.2.dylib
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libmacfuse_i32.2.dylib libmacfuse_i32.2.dylib
mv libmacfuse_i64.2.dylib /Applications/TrueCrypt.app/Contents/Resources/Library/libmacfuse_i64.2.dylib
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libmacfuse_i64.2.dylib libmacfuse_i64.2.dylib
mv libosxfuse_i32.2.dylib /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i32.2.dylib
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i32.2.dylib libosxfuse_i32.2.dylib
mv libosxfuse_i64.2.dylib /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i64.2.dylib
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i64.2.dylib libosxfuse_i64.2.dylib
mv libosxfuse_i32.la /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i32.la
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i32.la libosxfuse_i32.la
mv libosxfuse_i64.la /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i64.la
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/libosxfuse_i64.la libosxfuse_i64.la
mkdir /Applications/TrueCrypt.app/Contents/Resources/Library/pkgconfig
mv pkgconfig/osxfuse.pc /Applications/TrueCrypt.app/Contents/Resources/Library/pkgconfig/osxfuse.pc
ln -s /Applications/TrueCrypt.app/Contents/Resources/Library/pkgconfig/osxfuse.pc pkgconfig/osxfuse.pc

