.class public final Ltmsdkobf/jv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/jv$a;
    }
.end annotation


# static fields
.field private static final xx:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    const/16 v0, 0x45

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "3gp"

    aput-object v2, v1, v4

    const-string v2, "video/3gpp"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "apk"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.android.package-archive"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "asf"

    aput-object v2, v1, v4

    const-string v2, "video/x-ms-asf"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "class"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cpp"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "doc"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "docx"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jar"

    aput-object v3, v2, v4

    const-string v3, "application/java-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "java"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "log"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4a"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4b"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4p"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4u"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-m4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp2"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mpohn.certificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "msg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-outlook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pdf"

    aput-object v3, v2, v4

    const-string v3, "application/pdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pptx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prop"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rar"

    aput-object v3, v2, v4

    const-string v3, "application/x-rar-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rc"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rmvb"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmv"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xml"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zip"

    aput-object v3, v2, v4

    const-string v3, "application/zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "epub"

    aput-object v3, v2, v4

    const-string v3, "application/epub+zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "*/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/jv;->xx:[[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "wupObject"
    .parameter "label"
    .parameter "fileName"

    .prologue
    .line 398
    const/4 v3, -0x2

    .line 399
    .local v3, err:I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 400
    :cond_0
    const/16 v6, -0x39

    .line 435
    :goto_0
    return v6

    .line 403
    :cond_1
    const/4 v4, 0x0

    .line 405
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p3, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 407
    new-instance v5, Ltmsdkobf/cw;

    invoke-direct {v5}, Ltmsdkobf/cw;-><init>()V

    .line 408
    .local v5, uniAttribute:Ltmsdkobf/cw;
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v5, p2, p1}, Ltmsdkobf/cw;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    invoke-virtual {v5}, Ltmsdkobf/cw;->F()[B

    move-result-object v1

    .line 412
    .local v1, encodedData:[B
    const/4 v6, 0x0

    invoke-static {v1, v6}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v2

    .line 413
    .local v2, encryptData:[B
    if-eqz v2, :cond_2

    .line 414
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 415
    const/4 v3, 0x0

    .line 426
    :cond_2
    if-eqz v4, :cond_3

    .line 428
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #encodedData:[B
    .end local v2           #encryptData:[B
    .end local v5           #uniAttribute:Ltmsdkobf/cw;
    :cond_3
    :goto_1
    move v6, v3

    .line 435
    goto :goto_0

    .line 429
    .restart local v1       #encodedData:[B
    .restart local v2       #encryptData:[B
    .restart local v5       #uniAttribute:Ltmsdkobf/cw;
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #encodedData:[B
    .end local v2           #encryptData:[B
    .end local v5           #uniAttribute:Ltmsdkobf/cw;
    :catch_1
    move-exception v0

    .line 418
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v3, -0x1

    .line 419
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    if-eqz v4, :cond_3

    .line 428
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 429
    :catch_2
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 420
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 421
    .restart local v0       #e:Ljava/io/IOException;
    const/16 v3, -0x1b58

    .line 422
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 426
    if-eqz v4, :cond_3

    .line 428
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 429
    :catch_4
    move-exception v0

    .line 430
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 426
    if-eqz v4, :cond_3

    .line 428
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 429
    :catch_6
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_4

    .line 428
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 431
    :cond_4
    :goto_2
    throw v6

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "fileName"
    .parameter "path"

    .prologue
    .line 249
    const-class v9, Ltmsdkobf/jv;

    monitor-enter v9

    if-eqz p2, :cond_0

    :try_start_0
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 255
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p2

    .line 259
    const/4 v4, 0x0

    .line 260
    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 262
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "MToken.zip"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "rule_store.sys"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p0}, Ltmsdkobf/jv;->o(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_4
    const-string v8, "qv_base.amf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p0}, Ltmsdkobf/jv;->p(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    const-string v8, "rule_store.sys"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "qv_base.amf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {p0, p1}, Ltmsdkobf/jv;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 267
    :cond_6
    invoke-static {v3}, Ltmsdkobf/jv;->b(Ljava/io/File;)V

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, p1, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 270
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 271
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v0, v8, [B

    .line 272
    .local v0, dbBuffer:[B
    const/4 v5, -0x1

    .line 273
    .local v5, lenght:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_a

    .line 274
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    .end local v0           #dbBuffer:[B
    .end local v5           #lenght:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 278
    .end local v3           #file:Ljava/io/File;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    const-string v8, "getCommonFilePath"

    const-string v10, "getCommonFilePath error"

    invoke-static {v8, v10}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v8, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    if-eqz v4, :cond_7

    .line 283
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    .line 289
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_8
    :goto_3
    move-object p2, v8

    .line 294
    .end local v2           #e:Ljava/io/IOException;
    .end local p2
    :cond_9
    :goto_4
    monitor-exit v9

    return-object p2

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v0       #dbBuffer:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #lenght:I
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local p2
    :cond_a
    move-object v6, v7

    .line 281
    .end local v0           #dbBuffer:[B
    .end local v5           #lenght:I
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_b
    if-eqz v4, :cond_c

    .line 283
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 287
    :cond_c
    :goto_5
    if-eqz v6, :cond_9

    .line 289
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 290
    :catch_1
    move-exception v8

    goto :goto_4

    .line 281
    .end local v3           #file:Ljava/io/File;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v4, :cond_d

    .line 283
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 287
    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    .line 289
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 291
    :cond_e
    :goto_8
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 249
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 284
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_5

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 290
    :catch_4
    move-exception v10

    goto :goto_3

    .line 284
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v10

    goto :goto_7

    .line 290
    :catch_6
    move-exception v10

    goto :goto_8

    .line 281
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 277
    .end local v3           #file:Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "label"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p3, obj:Ljava/lang/Object;,"TT;"
    const/4 v11, 0x0

    .line 504
    const/4 v9, 0x0

    .line 506
    .local v9, wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-object v11

    .line 510
    :cond_1
    const/4 v6, 0x0

    .line 511
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 513
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 514
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    .line 515
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    :try_start_1
    new-array v2, v11, [B

    .line 516
    .local v2, buf:[B
    const/4 v7, -0x1

    .line 517
    .local v7, readLen:I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 518
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d

    goto :goto_1

    .line 529
    .end local v2           #buf:[B
    .end local v7           #readLen:I
    :catch_0
    move-exception v11

    move-object v0, v1

    .line 536
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v6, :cond_2

    .line 538
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 543
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 545
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_4
    move-object v11, v9

    .line 551
    goto :goto_0

    .line 520
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v7       #readLen:I
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 521
    .local v3, cacheBuf:[B
    new-instance v8, Ltmsdkobf/cw;

    invoke-direct {v8}, Ltmsdkobf/cw;-><init>()V

    .line 522
    .local v8, uniAttribute:Ltmsdkobf/cw;
    const-string v11, "UTF-8"

    invoke-virtual {v8, v11}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 524
    const/4 v11, 0x0

    invoke-static {v3, v11}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v4

    .line 525
    .local v4, decryptData:[B
    invoke-virtual {v8, v4}, Ltmsdkobf/cw;->b([B)V

    .line 526
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d

    .line 527
    .end local v9           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .local v10, wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :try_start_5
    invoke-virtual {v10, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v8, p1, v10}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e

    .line 536
    .end local v10           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    if-eqz v6, :cond_5

    .line 538
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 543
    :cond_5
    :goto_5
    if-eqz v1, :cond_a

    .line 545
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .line 548
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 539
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v5

    .line 540
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 546
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 547
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 548
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 539
    .end local v2           #buf:[B
    .end local v3           #cacheBuf:[B
    .end local v4           #decryptData:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #readLen:I
    .end local v8           #uniAttribute:Ltmsdkobf/cw;
    :catch_3
    move-exception v5

    .line 540
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 546
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 547
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 531
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 536
    :goto_6
    if-eqz v6, :cond_6

    .line 538
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 543
    :cond_6
    :goto_7
    if-eqz v0, :cond_3

    .line 545
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    .line 546
    :catch_6
    move-exception v5

    .line 547
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 539
    .end local v5           #e:Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 540
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 533
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    .line 536
    :goto_8
    if-eqz v6, :cond_7

    .line 538
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 543
    :cond_7
    :goto_9
    if-eqz v0, :cond_3

    .line 545
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_4

    .line 546
    :catch_9
    move-exception v5

    .line 547
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 539
    .end local v5           #e:Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 540
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 536
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_a
    if-eqz v6, :cond_8

    .line 538
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 543
    :cond_8
    :goto_b
    if-eqz v0, :cond_9

    .line 545
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 548
    :cond_9
    :goto_c
    throw v11

    .line 539
    :catch_b
    move-exception v5

    .line 540
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 546
    .end local v5           #e:Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 547
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 536
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #cacheBuf:[B
    .restart local v4       #decryptData:[B
    .restart local v7       #readLen:I
    .restart local v8       #uniAttribute:Ltmsdkobf/cw;
    .restart local v10       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    goto :goto_a

    .line 533
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v3           #cacheBuf:[B
    .end local v4           #decryptData:[B
    .end local v7           #readLen:I
    .end local v8           #uniAttribute:Ltmsdkobf/cw;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #cacheBuf:[B
    .restart local v4       #decryptData:[B
    .restart local v7       #readLen:I
    .restart local v8       #uniAttribute:Ltmsdkobf/cw;
    .restart local v10       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catch_e
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    goto :goto_8

    .line 531
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v3           #cacheBuf:[B
    .end local v4           #decryptData:[B
    .end local v7           #readLen:I
    .end local v8           #uniAttribute:Ltmsdkobf/cw;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #cacheBuf:[B
    .restart local v4       #decryptData:[B
    .restart local v7       #readLen:I
    .restart local v8       #uniAttribute:Ltmsdkobf/cw;
    .restart local v10       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catch_10
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    goto :goto_6

    .line 529
    .end local v2           #buf:[B
    .end local v3           #cacheBuf:[B
    .end local v4           #decryptData:[B
    .end local v7           #readLen:I
    .end local v8           #uniAttribute:Ltmsdkobf/cw;
    :catch_11
    move-exception v11

    goto/16 :goto_2

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #cacheBuf:[B
    .restart local v4       #decryptData:[B
    .restart local v7       #readLen:I
    .restart local v8       #uniAttribute:Ltmsdkobf/cw;
    .restart local v10       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :catch_12
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v9       #wupObjectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    goto/16 :goto_2

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_a
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static a(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .parameter "root"
    .parameter
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    .local p1, ignorePaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportGetAllApkFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ltmsdkobf/ln;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Ltmsdkobf/jv;->b(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;[BZ)V
    .locals 2
    .parameter "context"
    .parameter "file"
    .parameter "text"
    .parameter "append"

    .prologue
    .line 1437
    const/4 v1, 0x0

    invoke-static {p2, v1}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v0

    .line 1438
    .local v0, str:[B
    invoke-static {p1, v0, p3}, Ltmsdkobf/jv;->a(Ljava/io/File;[BZ)V

    .line 1439
    return-void
.end method

.method private static a(Ljava/io/File;Ltmsdkobf/jv$a;Z[Ljava/lang/String;Ljava/util/List;I)V
    .locals 14
    .parameter "dir"
    .parameter "callback"
    .parameter "isStrictMode"
    .parameter "ignoredDirNames"
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ltmsdkobf/jv$a;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1292
    .local p4, scannedDirMd5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v2, p1, Ltmsdkobf/jv$a;->xB:Z

    if-eqz v2, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-virtual {p1}, Ltmsdkobf/jv$a;->eU()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1296
    const/4 v2, 0x1

    iput-boolean v2, p1, Ltmsdkobf/jv$a;->xB:Z

    goto :goto_0

    .line 1300
    :cond_2
    const/16 v2, 0xf

    move/from16 v0, p5

    if-gt v0, v2, :cond_0

    .line 1303
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 1304
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_0

    array-length v2, v10

    if-lez v2, :cond_0

    .line 1305
    move-object v7, v10

    .local v7, arr$:[Ljava/io/File;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v1, v7, v11

    .line 1307
    .local v1, f:Ljava/io/File;
    iget-boolean v2, p1, Ltmsdkobf/jv$a;->xB:Z

    if-nez v2, :cond_0

    .line 1310
    invoke-virtual {p1}, Ltmsdkobf/jv$a;->eU()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1311
    const/4 v2, 0x1

    iput-boolean v2, p1, Ltmsdkobf/jv$a;->xB:Z

    goto :goto_0

    .line 1315
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1316
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ltmsdkobf/jv;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1305
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1322
    :cond_5
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/emulated/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1323
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdkobf/kd;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1324
    .local v13, md5:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1325
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v6, p5, 0x1

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Ltmsdkobf/jv;->a(Ljava/io/File;Ltmsdkobf/jv$a;Z[Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1329
    .end local v13           #md5:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1330
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1333
    .end local v8           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1334
    .local v9, filename:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_8

    invoke-static {v1}, Ltmsdkobf/jv;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1335
    :cond_7
    const-string v2, "apk: "

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1336
    invoke-virtual {p1, v1}, Ltmsdkobf/jv$a;->g(Ljava/io/File;)V

    goto :goto_2

    .line 1339
    :cond_8
    invoke-virtual {p1, v1}, Ltmsdkobf/jv$a;->h(Ljava/io/File;)V

    goto :goto_2
.end method

.method public static a(Ljava/io/File;[BZ)V
    .locals 7
    .parameter "file"
    .parameter "text"
    .parameter "append"

    .prologue
    .line 1447
    if-nez p0, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1450
    :cond_1
    const/4 v2, 0x0

    .line 1452
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Ltmsdkobf/jv;->e(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_2

    .line 1463
    if-eqz v2, :cond_0

    .line 1465
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1466
    :catch_0
    move-exception v1

    .line 1467
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "UserLog"

    invoke-static {v5, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1455
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1456
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_3
    array-length v4, p1

    .line 1457
    .local v4, len:I
    invoke-static {v4}, Ltmsdkobf/jo;->bn(I)[B

    move-result-object v0

    .line 1458
    .local v0, byteLen:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1459
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1463
    if-eqz v3, :cond_4

    .line 1465
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 1468
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1466
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1467
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "UserLog"

    invoke-static {v5, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 1468
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1460
    .end local v0           #byteLen:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #len:I
    :catch_2
    move-exception v1

    .line 1461
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v5, "UserLog"

    invoke-static {v5, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1463
    if-eqz v2, :cond_0

    .line 1465
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1466
    :catch_3
    move-exception v1

    .line 1467
    const-string v5, "UserLog"

    invoke-static {v5, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1463
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_3

    .line 1465
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1468
    :cond_3
    :goto_3
    throw v5

    .line 1466
    :catch_4
    move-exception v1

    .line 1467
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "UserLog"

    invoke-static {v6, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1463
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1460
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #byteLen:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #len:I
    :cond_4
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/io/File;[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .parameter "filePath"
    .parameter "ignoreDirNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, scannedDirs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 905
    if-eqz p2, :cond_2

    .line 906
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 907
    .local v1, dir:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 906
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 916
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dir:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/storage/emulated"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 920
    move-object v3, p1

    .line 921
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, path:Ljava/lang/String;
    move-object v4, v3

    .line 922
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 923
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    move-object v4, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_2

    .line 927
    :cond_3
    :try_start_3
    invoke-virtual {p3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 930
    invoke-virtual {p3, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 935
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 936
    .local v8, subFiles:[Ljava/io/File;
    if-eqz v8, :cond_0

    .line 937
    move-object v0, v8

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_0

    aget-object v9, v0, v5

    .line 938
    .local v9, subPath:Ljava/io/File;
    invoke-static {p0, v9, p2, p3}, Ltmsdkobf/jv;->a(Ljava/util/ArrayList;Ljava/io/File;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 937
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 931
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #subFiles:[Ljava/io/File;
    .end local v9           #subPath:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 932
    .local v2, e:Ljava/io/IOException;
    :goto_4
    goto :goto_0

    .line 942
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 943
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 931
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #path:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_4
.end method

.method public static a(Ljava/util/List;Ltmsdkobf/jv$a;Z[Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "callback"
    .parameter "isStrictMode"
    .parameter "ignoredDirNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ltmsdkobf/jv$a;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, scanDirs:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v4, scannedDirMd5s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1264
    .local v0, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 1266
    .local v8, path:Ljava/lang/String;
    const-string v1, "/storage/emulated/0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/HWUserData"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    invoke-static {v8}, Ltmsdkobf/kd;->ci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1268
    .local v7, md5:Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Ltmsdkobf/jv;->a(Ljava/io/File;Ltmsdkobf/jv$a;Z[Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1273
    .end local v7           #md5:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1277
    .end local v0           #dir:Ljava/io/File;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1278
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ignoredDirNames"
    .parameter "dirName"

    .prologue
    .line 1354
    if-eqz p0, :cond_1

    .line 1355
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1356
    .local v2, ignored:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1357
    const/4 v4, 0x1

    .line 1361
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #ignored:Ljava/lang/String;
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 1355
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #ignored:Ljava/lang/String;
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1361
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #ignored:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .parameter "root"
    .parameter
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 982
    .local p1, ignorePaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v0, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ltmsdkobf/jv$1;

    invoke-direct {v3, p1, p2, v0}, Ltmsdkobf/jv$1;-><init>(Ljava/util/List;ZLjava/util/List;)V

    .line 999
    .local v3, filter:Ljava/io/FileFilter;
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 1000
    .local v1, dirs:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/io/File;>;"
    invoke-virtual {p0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1001
    .local v4, filterFiles:[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 1002
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1006
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1007
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1008
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2

    .line 1018
    .end local v2           #file:Ljava/io/File;
    :cond_1
    return-object v0

    .line 1012
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1013
    if-eqz v4, :cond_0

    .line 1014
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 347
    :cond_0
    return-void
.end method

.method public static bY(Ljava/lang/String;)Z
    .locals 6
    .parameter "dir"

    .prologue
    .line 827
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 830
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v0, dirFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 832
    :cond_1
    const/4 v4, 0x0

    .line 846
    :goto_0
    return v4

    .line 834
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 835
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_3

    .line 836
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_0

    .line 838
    :cond_3
    array-length v3, v1

    .line 839
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 840
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 841
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/jv;->deleteFile(Ljava/lang/String;)Z

    .line 839
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 843
    :cond_4
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/jv;->bY(Ljava/lang/String;)Z

    goto :goto_2

    .line 846
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_0
.end method

.method public static bZ(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 856
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static c([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "ignoreDirNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v2, scannedDirs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    invoke-static {v1, v0, p0, v2}, Ltmsdkobf/jv;->a(Ljava/util/ArrayList;Ljava/io/File;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 885
    :cond_0
    :goto_0
    return-object v1

    .line 875
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v3, "/mnt/sdcard"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 877
    invoke-static {v1, v0, p0, v2}, Ltmsdkobf/jv;->a(Ljava/util/ArrayList;Ljava/io/File;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 879
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v3, "/mnt/sdcard-ext"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 881
    invoke-static {v1, v0, p0, v2}, Ltmsdkobf/jv;->a(Ljava/util/ArrayList;Ljava/io/File;[Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)[Ljava/lang/String;
    .locals 9
    .parameter "srcFile"

    .prologue
    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 558
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 559
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 560
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v4, v7, [B

    .line 561
    .local v4, buffer:[B
    const/4 v6, 0x0

    .line 562
    .local v6, len:I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 563
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 566
    .end local v4           #buffer:[B
    .end local v6           #len:I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 567
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    if-eqz v2, :cond_0

    .line 573
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 577
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v2, 0x0

    .line 579
    :cond_0
    if-eqz v0, :cond_1

    .line 581
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 585
    :goto_3
    const/4 v0, 0x0

    .line 588
    :cond_1
    :goto_4
    const/4 v7, 0x0

    :goto_5
    return-object v7

    .line 565
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    :cond_2
    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v7

    .line 571
    if-eqz v3, :cond_7

    .line 573
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 577
    :goto_6
    const/4 v2, 0x0

    .line 579
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :goto_7
    if-eqz v1, :cond_6

    .line 581
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 585
    :goto_8
    const/4 v0, 0x0

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 574
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    .line 575
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 582
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v5

    .line 583
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 574
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #len:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 575
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 582
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 583
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 568
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 569
    .restart local v5       #e:Ljava/io/IOException;
    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 571
    if-eqz v2, :cond_3

    .line 573
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 577
    :goto_a
    const/4 v2, 0x0

    .line 579
    :cond_3
    if-eqz v0, :cond_1

    .line 581
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 585
    :goto_b
    const/4 v0, 0x0

    goto :goto_4

    .line 574
    :catch_6
    move-exception v5

    .line 575
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 582
    :catch_7
    move-exception v5

    .line 583
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 571
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_c
    if-eqz v2, :cond_4

    .line 573
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 577
    :goto_d
    const/4 v2, 0x0

    .line 579
    :cond_4
    if-eqz v0, :cond_5

    .line 581
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 585
    :goto_e
    const/4 v0, 0x0

    :cond_5
    throw v7

    .line 574
    :catch_8
    move-exception v5

    .line 575
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 582
    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 583
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 571
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .line 568
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 566
    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    :cond_6
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :cond_7
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7
.end method

.method public static ca(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "absolutePath"

    .prologue
    .line 1044
    const/4 v2, 0x0

    .line 1045
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 1047
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1048
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1049
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v4, v8, [B

    .line 1050
    .local v4, buffer:[B
    const/4 v6, 0x0

    .line 1051
    .local v6, len:I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1052
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 1056
    .end local v4           #buffer:[B
    .end local v6           #len:I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 1057
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1061
    if-eqz v0, :cond_0

    .line 1063
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1067
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v0, 0x0

    .line 1069
    :cond_0
    if-eqz v2, :cond_1

    .line 1071
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1075
    :goto_3
    const/4 v2, 0x0

    .line 1078
    :cond_1
    :goto_4
    const-string v7, ""

    :goto_5
    return-object v7

    .line 1054
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    :cond_2
    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 1061
    .local v7, result:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1063
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1067
    :goto_6
    const/4 v0, 0x0

    .line 1069
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_7
    if-eqz v3, :cond_6

    .line 1071
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1075
    :goto_8
    const/4 v2, 0x0

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 1064
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    .line 1065
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1072
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v5

    .line 1073
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1064
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v6           #len:I
    .end local v7           #result:Ljava/lang/String;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 1065
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1072
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 1073
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1058
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 1059
    .restart local v5       #e:Ljava/io/IOException;
    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1061
    if-eqz v0, :cond_3

    .line 1063
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1067
    :goto_a
    const/4 v0, 0x0

    .line 1069
    :cond_3
    if-eqz v2, :cond_1

    .line 1071
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1075
    :goto_b
    const/4 v2, 0x0

    goto :goto_4

    .line 1064
    :catch_6
    move-exception v5

    .line 1065
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1072
    :catch_7
    move-exception v5

    .line 1073
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 1061
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_c
    if-eqz v0, :cond_4

    .line 1063
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1067
    :goto_d
    const/4 v0, 0x0

    .line 1069
    :cond_4
    if-eqz v2, :cond_5

    .line 1071
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1075
    :goto_e
    const/4 v2, 0x0

    :cond_5
    throw v8

    .line 1064
    :catch_8
    move-exception v5

    .line 1065
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 1072
    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 1073
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 1061
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .line 1058
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 1056
    :catch_c
    move-exception v5

    goto :goto_1

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    .restart local v7       #result:Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :cond_7
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_7
.end method

.method public static cb(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "absolutePath"

    .prologue
    .line 1082
    const/4 v2, 0x0

    .line 1083
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 1085
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1086
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1087
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v4, v7, [B

    .line 1088
    .local v4, buffer:[B
    const/4 v6, 0x0

    .line 1089
    .local v6, len:I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1090
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 1093
    .end local v4           #buffer:[B
    .end local v6           #len:I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 1094
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    if-eqz v2, :cond_0

    .line 1100
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1104
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v2, 0x0

    .line 1106
    :cond_0
    if-eqz v0, :cond_1

    .line 1108
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1112
    :goto_3
    const/4 v0, 0x0

    .line 1115
    :cond_1
    :goto_4
    const/4 v7, 0x0

    :goto_5
    return-object v7

    .line 1092
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    :cond_2
    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v7

    .line 1098
    if-eqz v3, :cond_7

    .line 1100
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1104
    :goto_6
    const/4 v2, 0x0

    .line 1106
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :goto_7
    if-eqz v1, :cond_6

    .line 1108
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1112
    :goto_8
    const/4 v0, 0x0

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 1101
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    .line 1102
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1109
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v5

    .line 1110
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1101
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #len:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 1102
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1109
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 1110
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1095
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 1096
    .restart local v5       #e:Ljava/io/IOException;
    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1098
    if-eqz v2, :cond_3

    .line 1100
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1104
    :goto_a
    const/4 v2, 0x0

    .line 1106
    :cond_3
    if-eqz v0, :cond_1

    .line 1108
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1112
    :goto_b
    const/4 v0, 0x0

    goto :goto_4

    .line 1101
    :catch_6
    move-exception v5

    .line 1102
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1109
    :catch_7
    move-exception v5

    .line 1110
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 1098
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_c
    if-eqz v2, :cond_4

    .line 1100
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1104
    :goto_d
    const/4 v2, 0x0

    .line 1106
    :cond_4
    if-eqz v0, :cond_5

    .line 1108
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1112
    :goto_e
    const/4 v0, 0x0

    :cond_5
    throw v7

    .line 1101
    :catch_8
    move-exception v5

    .line 1102
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 1109
    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 1110
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 1098
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_c

    .line 1095
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 1093
    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v5

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #len:I
    :cond_6
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :cond_7
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7
.end method

.method private static d(Ljava/io/File;)Z
    .locals 8
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, dis:Ljava/io/DataInputStream;
    const v2, 0x504b0304

    .line 1373
    .local v2, magic:I
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 1375
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v4

    const v5, 0x504b0304

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 1380
    :cond_0
    if-eqz v1, :cond_1

    .line 1382
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v0, v1

    .line 1388
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :cond_2
    :goto_1
    return v3

    .line 1377
    :catch_0
    move-exception v4

    .line 1380
    :goto_2
    if-eqz v0, :cond_2

    .line 1382
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1383
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1380
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_3

    .line 1382
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1384
    :cond_3
    :goto_4
    throw v3

    .line 1383
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1380
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1377
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 811
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 814
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 1478
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1479
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1480
    .local v1, pf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1481
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1484
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    .end local v1           #pf:Ljava/io/File;
    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1485
    .restart local v1       #pf:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1486
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "UserLog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1487
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static eR()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 115
    const-string v3, "soft_version"

    .line 116
    .local v3, versionTag:Ljava/lang/String;
    new-instance v1, Ltmsdkobf/kf;

    const-string v5, "tms"

    invoke-direct {v1, v5}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, properties:Ltmsdkobf/kf;
    const-string v5, "soft_version"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, softVersion:Ljava/lang/String;
    const-string v5, "softversion"

    invoke-static {v5}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, nowVersion:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    const-string v5, "soft_version"

    invoke-virtual {v1, v5, v0, v4}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static eS()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1169
    .local v0, bufReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/mounts"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1172
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .local v1, bufReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1174
    .local v4, isIgnored:Z
    :try_start_1
    const-string v3, "^/(?:sys|system|dev|cache|proc|acct|data|efs|osh|pds|(?:mnt/asec)|(?:mnt/obb)|(?:mnt/secure))/*.*$"

    .line 1175
    .local v3, ignoredPattern:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1176
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1178
    .local v9, seg:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x4

    if-lt v10, v11, :cond_0

    const/4 v10, 0x3

    aget-object v10, v9, v10

    const-string v11, "rw"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1181
    const/4 v10, 0x1

    aget-object v8, v9, v10

    .line 1183
    .local v8, path:Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1187
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1188
    .local v7, matcher:Ljava/util/regex/Matcher;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1191
    :cond_1
    if-nez v4, :cond_0

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1192
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 1197
    .end local v3           #ignoredPattern:Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #matcher:Ljava/util/regex/Matcher;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #seg:[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1198
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v4           #isIgnored:Z
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    if-eqz v0, :cond_2

    .line 1204
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1210
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    return-object v6

    .line 1202
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #ignoredPattern:Ljava/lang/String;
    .restart local v4       #isIgnored:Z
    .restart local v5       #line:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 1204
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    .line 1207
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1205
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1206
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1205
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v3           #ignoredPattern:Ljava/lang/String;
    .end local v4           #isIgnored:Z
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 1206
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1199
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1200
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1202
    if-eqz v0, :cond_2

    .line 1204
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 1205
    :catch_4
    move-exception v2

    .line 1206
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1202
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v0, :cond_5

    .line 1204
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1207
    :cond_5
    :goto_6
    throw v10

    .line 1205
    :catch_5
    move-exception v2

    .line 1206
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1202
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v4       #isIgnored:Z
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1199
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1197
    .end local v4           #isIgnored:Z
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static eT()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    .local v5, possibleScanPathes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_0
    const-string v7, "/storage"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    const-string v7, "/mnt/sdcard"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string v7, "/mnt/sdcard-ext"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    invoke-static {}, Ltmsdkobf/jv;->eS()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v6, scanDirs:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1234
    .local v4, path:Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1238
    .local v2, file:Ljava/io/File;
    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1239
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1240
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1222
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #scanDirs:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1235
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #scanDirs:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :catch_1
    move-exception v1

    .line 1236
    .local v1, e1:Ljava/io/IOException;
    const/4 v2, 0x0

    .restart local v2       #file:Ljava/io/File;
    goto :goto_2

    .line 1244
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1245
    const/4 v5, 0x0

    .line 1247
    return-object v6
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v9

    .line 195
    :cond_1
    const/4 v5, 0x0

    .line 196
    .local v5, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 197
    .local v1, fh:Ltmsdkobf/jt;
    const/4 v8, 0x0

    .line 199
    .local v8, tmpTime:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    .line 200
    invoke-static {v5}, Ltmsdkobf/ju;->a(Ljava/io/InputStream;)Ltmsdkobf/jt;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ltmsdkobf/jt;->eP()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 205
    if-eqz v5, :cond_2

    .line 207
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_1
    const/4 v5, 0x0

    .line 214
    :cond_2
    :goto_2
    if-nez v8, :cond_4

    move v9, v10

    .line 215
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    if-eqz v5, :cond_2

    .line 207
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 208
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_3

    .line 207
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 211
    :goto_4
    const/4 v5, 0x0

    :cond_3
    throw v9

    .line 208
    :catch_3
    move-exception v0

    .line 209
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 217
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const/4 v3, 0x0

    .line 218
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 220
    .local v6, oldTime:I
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 221
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_6
    invoke-static {v4}, Ltmsdkobf/ju;->a(Ljava/io/InputStream;)Ltmsdkobf/jt;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ltmsdkobf/jt;->eP()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-result v6

    .line 226
    if-eqz v4, :cond_7

    .line 228
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 232
    :goto_5
    const/4 v3, 0x0

    .line 236
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_5
    :goto_6
    if-gt v8, v6, :cond_0

    move v9, v10

    goto :goto_0

    .line 229
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .line 230
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 226
    if-eqz v3, :cond_5

    .line 228
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :goto_8
    const/4 v3, 0x0

    goto :goto_6

    .line 229
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_9
    if-eqz v3, :cond_6

    .line 228
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 232
    :goto_a
    const/4 v3, 0x0

    :cond_6
    throw v9

    .line 229
    :catch_7
    move-exception v0

    .line 230
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 223
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_7
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method static synthetic f(Ljava/io/File;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Ltmsdkobf/jv;->d(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static hasStorageCard()Z
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "defaultName"

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 360
    .local v1, fileName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 361
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, decodedUrl:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 363
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 365
    .local v3, queryIndex:I
    if-lez v3, :cond_0

    .line 366
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 370
    .local v2, index:I
    if-lez v2, :cond_1

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #queryIndex:I
    :cond_1
    if-nez v1, :cond_2

    .line 378
    move-object v1, p1

    .line 381
    :cond_2
    if-nez v1, :cond_3

    .line 382
    const-string v1, "downloadfile"

    .line 385
    :cond_3
    return-object v1
.end method

.method private static o(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 66
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "rule_store.sys"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, nativeFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v9

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 74
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 75
    .local v4, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 78
    .local v3, innerFileTime:I
    :try_start_0
    const-string v11, "rule_store.sys"

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 79
    const/16 v11, 0xc

    new-array v8, v11, [B

    .line 80
    .local v8, timeBytes:[B
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 81
    const/4 v11, 0x6

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x7

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/16 v12, 0x8

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/16 v12, 0x9

    aget-byte v12, v8, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int v3, v11, v12

    .line 87
    if-eqz v4, :cond_2

    .line 89
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .end local v8           #timeBytes:[B
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    move v9, v10

    .line 97
    goto :goto_0

    .line 90
    .restart local v8       #timeBytes:[B
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #timeBytes:[B
    :catch_1
    move-exception v2

    .line 83
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v4, :cond_2

    .line 89
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 90
    :catch_2
    move-exception v2

    .line 91
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    if-eqz v4, :cond_2

    .line 89
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 90
    :catch_4
    move-exception v2

    .line 91
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_3

    .line 89
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 92
    :cond_3
    :goto_2
    throw v9

    .line 90
    :catch_5
    move-exception v2

    .line 91
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    invoke-static {p0, v7}, Ltmsdk/common/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/r;

    move-result-object v1

    .line 101
    .local v1, confInfo:Ltmsdkobf/r;
    const/4 v6, 0x0

    .line 102
    .local v6, nativeFileTime:I
    if-eqz v1, :cond_5

    .line 103
    invoke-virtual {v1}, Ltmsdkobf/r;->j()I

    move-result v6

    .line 105
    :cond_5
    if-gt v3, v6, :cond_0

    move v9, v10

    goto :goto_0
.end method

.method private static p(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    .line 137
    invoke-static {}, Ltmsdkobf/jv;->eR()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v11

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 143
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 144
    .local v8, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 145
    .local v2, assetVersion:I
    const/4 v1, 0x0

    .line 147
    .local v1, assetTime:I
    :try_start_0
    const-string v12, "qv_base.amf"

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 148
    const/16 v12, 0x1c

    new-array v10, v12, [B

    .line 149
    .local v10, timeBytes:[B
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    .line 150
    const/4 v12, 0x4

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x6

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x7

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int v2, v12, v13

    .line 151
    const/16 v12, 0x18

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x19

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/16 v13, 0x1a

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/16 v13, 0x1b

    aget-byte v13, v10, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int v1, v12, v13

    .line 155
    if-eqz v8, :cond_2

    .line 156
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 160
    .end local v10           #timeBytes:[B
    :cond_2
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "qv_base.amf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 162
    .local v6, fileVersion:I
    const/4 v5, 0x0

    .line 164
    .local v5, fileTime:I
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 165
    .end local v8           #is:Ljava/io/InputStream;
    .local v9, is:Ljava/io/InputStream;
    const/16 v12, 0x1c

    :try_start_3
    new-array v7, v12, [B

    .line 166
    .local v7, headers:[B
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    .line 167
    const/4 v12, 0x4

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x6

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x7

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int v6, v12, v13

    .line 168
    const/16 v12, 0x18

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x19

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/16 v13, 0x1a

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/16 v13, 0x1b

    aget-byte v13, v7, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int v5, v12, v13

    .line 172
    if-eqz v9, :cond_6

    .line 173
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v8, v9

    .line 177
    .end local v7           #headers:[B
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_3
    :goto_2
    if-ne v2, v6, :cond_0

    if-gt v1, v5, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 152
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #fileTime:I
    .end local v6           #fileVersion:I
    :catch_0
    move-exception v3

    .line 153
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    if-eqz v8, :cond_2

    .line 156
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v12

    goto/16 :goto_1

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v8, :cond_4

    .line 156
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_3
    throw v11

    .line 173
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #fileTime:I
    .restart local v6       #fileVersion:I
    .restart local v7       #headers:[B
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v12

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 169
    .end local v7           #headers:[B
    :catch_3
    move-exception v3

    .line 170
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 172
    if-eqz v8, :cond_3

    .line 173
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catch_4
    move-exception v12

    goto :goto_2

    .line 172
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_5
    if-eqz v8, :cond_5

    .line 173
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_6
    throw v11

    .line 156
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #fileTime:I
    .end local v6           #fileVersion:I
    .restart local v10       #timeBytes:[B
    :catch_5
    move-exception v12

    goto/16 :goto_1

    .end local v10           #timeBytes:[B
    :catch_6
    move-exception v12

    goto :goto_3

    .line 173
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #fileTime:I
    .restart local v6       #fileVersion:I
    :catch_7
    move-exception v12

    goto :goto_6

    .line 172
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 169
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_4

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #headers:[B
    .restart local v9       #is:Ljava/io/InputStream;
    :cond_6
    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_2
.end method
