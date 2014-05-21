local zlibfiles = {
	"adler32.c",
    "compress.c",
    "crc32.c",
    "deflate.c",
    "gzclose.c",
    "gzlib.c",
    "gzread.c",
    "gzwrite.c",
    "inflate.c",
    "infback.c",
    "inftrees.c",
    "inffast.c",
    "trees.c",
    "uncompr.c",
    "zutil.c"}

project "zlib"
	version = "1.2.8"
	
	kind ("StaticLib")
	language "C"
	
	includedirs { "." }
	files ( zlibfiles )
	
	targetdir( LDIR_THIRDPARTY_LIB )
	location( LDIR_THIRDPARTY_BUILD )

	suffix_macro ( version, true )