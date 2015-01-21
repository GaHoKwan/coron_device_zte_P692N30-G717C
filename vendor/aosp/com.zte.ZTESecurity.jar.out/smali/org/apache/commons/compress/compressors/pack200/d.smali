.class Lorg/apache/commons/compress/compressors/pack200/d;
.super Lorg/apache/commons/compress/compressors/pack200/g;


# instance fields
.field private final ff:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/g;-><init>()V

    const-string v0, "commons-compress"

    const-string v1, "packtemp"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/d;->ff:Ljava/io/File;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/d;->ff:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/d;->ff:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/d;->out:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/compressors/pack200/d;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/d;->ff:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method av()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/h;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/d;->ff:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/pack200/h;-><init>(Lorg/apache/commons/compress/compressors/pack200/d;Ljava/io/File;)V

    return-object v0
.end method
