
Parsing: ${filename.c}
Exception in thread "main" java.nio.file.NoSuchFileException: ${filename.c}
	at java.base/sun.nio.fs.UnixException.translateToIOException(UnixException.java:92)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:106)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:111)
	at java.base/sun.nio.fs.UnixFileSystemProvider.newByteChannel(UnixFileSystemProvider.java:218)
	at java.base/java.nio.file.Files.newByteChannel(Files.java:380)
	at java.base/java.nio.file.Files.newByteChannel(Files.java:432)
	at java.base/java.nio.file.Files.readAllBytes(Files.java:3288)
	at java.base/java.nio.file.Files.readString(Files.java:3366)
	at java.base/java.nio.file.Files.readString(Files.java:3325)
	at ParseMain.scan(ParseMain.java:70)
	at ParseMain.<init>(ParseMain.java:19)
	at ParseMain.main(ParseMain.java:101)
