.source stdin
.class  public Main
.super  java/lang/Object

.field private static buffer Ljava/lang/String;
.field static x I
.field static y I
; >> FUNCTION max <<
.method static max(II)I
.limit stack 32
.limit locals 32
iload 0
iload 1
if_icmpgt Label1
iconst_0
goto Label0
Label1:
iconst_1
Label0:
ifeq IfFirstLabel2
iload 0
ireturn
goto IfLastLabel3
IfFirstLabel2:
iload 1
ireturn
IfLastLabel3:
return
.end method

; >> FUNCTION main <<
.method public static main([Ljava/lang/String;)V
.throws java/io/IOException
.limit stack 32
.limit locals 32
invokestatic Main/myRead()I
putstatic Main/x I
invokestatic Main/myRead()I
putstatic Main/y I
getstatic java/lang/System/out Ljava/io/PrintStream;
getstatic Main/x I
getstatic Main/y I
invokestatic Main/max(II)I
invokevirtual java/io/PrintStream/println(I)V
return
.end method

; >> READ METHOD <<
.method                  public static myRead()I
   .limit stack          3
   .limit locals         2
   .line                 14
   getstatic             Main/buffer Ljava/lang/String;
   ifnull                LABEL0x12
   getstatic             Main/buffer Ljava/lang/String;
   invokevirtual         java/lang/String/trim()Ljava/lang/String;
   invokevirtual         java/lang/String/length()I
   ifne                  LABEL0x22
   .line                 15
LABEL0x12:
   new                   java/util/Scanner
   dup                   
   getstatic             java/lang/System/in Ljava/io/InputStream;
   invokespecial         java/util/Scanner/<init>(Ljava/io/InputStream;)V
   invokevirtual         java/util/Scanner/nextLine()Ljava/lang/String;
   putstatic             Main/buffer Ljava/lang/String;
   .line                 16
LABEL0x22:
   new                   java/util/Scanner
   dup                   
   getstatic             Main/buffer Ljava/lang/String;
   invokevirtual         java/lang/String/trim()Ljava/lang/String;
   invokespecial         java/util/Scanner/<init>(Ljava/lang/String;)V
   astore_0              
   .line                 17
   new                   java/util/Scanner
   dup                   
   getstatic             Main/buffer Ljava/lang/String;
   invokespecial         java/util/Scanner/<init>(Ljava/lang/String;)V
   invokevirtual         java/util/Scanner/nextInt()I
   istore_1              
   .line                 18
   aload_0               
   invokevirtual         java/util/Scanner/close()V
   .line                 19
   getstatic             Main/buffer Ljava/lang/String;
   new                   java/lang/StringBuilder
   dup                   
   invokespecial         java/lang/StringBuilder/<init>()V
   ldc                   ""
   invokevirtual         java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
   iload_1               
   invokevirtual         java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
   ldc                   "[ ]+"
   invokevirtual         java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
   invokevirtual         java/lang/StringBuilder/toString()Ljava/lang/String;
   ldc                   ""
   invokevirtual         java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
   putstatic             Main/buffer Ljava/lang/String;
   .line                 20
   iload_1               
   ireturn               
.end method

; >> CONSTRUCTOR <<
.method <init>()V
.limit stack 1
.limit locals 1
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method

; >> CLASS INIT FOR GLOBAL ARRAYS <<
.method static <clinit>()V
.limit stack 1
.limit locals 0
return
.end method

