.source stdin
.class  public Main
.super  java/lang/Object

.field private static buffer Ljava/lang/String;
.field static aNumber1 I
.field static aNumber2 I
.field static anArray [I
.field static aVariable I
.field static anotherArray [I
; >> FUNCTION function1 <<
.method static function1()V
.limit stack 32
.limit locals 32
return
.end method

; >> FUNCTION function2 <<
.method static function2()V
.limit stack 32
.limit locals 32
ldc 5
istore 0
iload 0
ldc 8
imul
ldc 3
idiv
ldc 1
iadd
istore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
return
.end method

; >> FUNCTION readAValue <<
.method static readAValue()I
.limit stack 32
.limit locals 32
invokestatic Main/myRead()I
istore 0
iload 0
ireturn
return
.end method

; >> FUNCTION combinevalues <<
.method static combinevalues(II)I
.limit stack 32
.limit locals 32
iload 0
iload 1
imul
ldc 3
idiv
iload 0
isub
iload 1
iadd
istore 2
iload 2
ireturn
return
.end method

; >> FUNCTION manyRelationalOps <<
.method static manyRelationalOps(I)V
.limit stack 32
.limit locals 32
iload 0
ldc 10
if_icmplt Label1
iconst_0
goto Label0
Label1:
iconst_1
Label0:
ifeq IfFirstLabel2
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel3
IfFirstLabel2:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 10
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel3:
iload 0
ldc 20
if_icmple Label5
iconst_0
goto Label4
Label5:
iconst_1
Label4:
ifeq IfFirstLabel6
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 20
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel7
IfFirstLabel6:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel7:
iload 0
ldc 30
if_icmpeq Label9
iconst_0
goto Label8
Label9:
iconst_1
Label8:
ifeq IfFirstLabel10
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 30
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel11
IfFirstLabel10:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel11:
iload 0
ldc 40
if_icmpne Label13
iconst_0
goto Label12
Label13:
iconst_1
Label12:
ifeq IfFirstLabel14
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel15
IfFirstLabel14:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 40
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel15:
iload 0
ldc 50
if_icmpge Label17
iconst_0
goto Label16
Label17:
iconst_1
Label16:
ifeq IfFirstLabel18
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 50
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel19
IfFirstLabel18:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel19:
iload 0
ldc 60
if_icmpgt Label21
iconst_0
goto Label20
Label21:
iconst_1
Label20:
ifeq IfFirstLabel22
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 60
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel23
IfFirstLabel22:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel23:
iload 0
ldc 5
if_icmpgt Label25
iconst_0
goto Label24
Label25:
iconst_1
Label24:
ifeq IfFirstLabel26
iload 0
ldc 10
if_icmplt Label28
iconst_0
goto Label27
Label28:
iconst_1
Label27:
ifeq IfFirstLabel29
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 7
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel30
IfFirstLabel29:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 15
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel30:
goto IfLastLabel31
IfFirstLabel26:
iload 0
ldc 2
if_icmpgt Label33
iconst_0
goto Label32
Label33:
iconst_1
Label32:
ifeq IfFirstLabel34
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 3
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel35
IfFirstLabel34:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 0
invokevirtual java/io/PrintStream/println(I)V
IfLastLabel35:
IfLastLabel31:
return
.end method

; >> FUNCTION sumarray <<
.method static sumarray(I[I)I
.limit stack 32
.limit locals 32
ldc 300
newarray int
astore 3
ldc 0
istore 4
ldc 0
istore 2
WhileFirstLabel36:
iload 4
iload 0
if_icmplt Label38
iconst_0
goto Label37
Label38:
iconst_1
Label37:
ifeq WhileLastLabel39
aload 1
iload 4
iaload
istore 5
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 5
invokevirtual java/io/PrintStream/println(I)V
iload 2
iload 5
iadd
istore 2
iload 4
ldc 1
iadd
istore 4
goto WhileFirstLabel36
WhileLastLabel39:
iload 2
iload 0
ldc 3
imul
if_icmpgt Label41
iconst_0
goto Label40
Label41:
iconst_1
Label40:
ifeq IfFirstLabel42
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(I)V
goto IfLastLabel43
IfFirstLabel42:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 99999999
invokevirtual java/io/PrintStream/println(I)V
ldc 0
istore 2
IfLastLabel43:
iload 2
ireturn
return
.end method

; >> FUNCTION main <<
.method public static main([Ljava/lang/String;)V
.throws java/io/IOException
.limit stack 32
.limit locals 32
ldc 10
newarray int
astore 4
ldc 0
istore 1
invokestatic Main/readAValue()I
istore 2
WhileFirstLabel44:
iload 1
ldc 10
if_icmplt Label46
iconst_0
goto Label45
Label46:
iconst_1
Label45:
ifeq WhileLastLabel47
aload 4
iload 1
iload 2
iastore
iload 1
ldc 1
iadd
istore 1
goto WhileFirstLabel44
WhileLastLabel47:
ldc 10
aload 4
invokestatic Main/sumarray(I[I)I
istore 3
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 3
invokevirtual java/io/PrintStream/println(I)V
iload 3
invokestatic Main/manyRelationalOps(I)V
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
ldc 234
newarray int
putstatic Main/anotherArray [I
ldc 123
newarray int
putstatic Main/anArray [I
return
.end method

