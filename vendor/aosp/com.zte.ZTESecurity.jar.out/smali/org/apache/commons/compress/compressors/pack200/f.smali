.class public Lorg/apache/commons/compress/compressors/pack200/f;
.super Lorg/apache/commons/compress/compressors/a;


# static fields
.field private static final iW:[B

.field private static final iX:I


# instance fields
.field private final iT:Lorg/apache/commons/compress/compressors/pack200/g;

.field private final iV:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/f;->iW:[B

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/f;->iW:[B

    array-length v0, v0

    sput v0, Lorg/apache/commons/compress/compressors/pack200/f;->iX:I

    return-void

    :array_0
    .array-data 0x1
        0xcat
        0xfet
        0xd0t
        0xdt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/a;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iV:Ljava/io/InputStream;

    invoke-virtual {p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->T()Lorg/apache/commons/compress/compressors/pack200/g;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    new-instance v0, Ljava/util/jar/JarOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-direct {v0, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-interface {v1}, Ljava/util/jar/Pack200$Unpacker;->properties()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Lorg/apache/commons/compress/compressors/pack200/c;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/c;-><init>(Lorg/apache/commons/compress/compressors/pack200/f;Ljava/io/InputStream;)V

    invoke-interface {v1, v2, v0}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V

    return-void

    :cond_1
    invoke-interface {v1, p2, v0}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/f;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public static a([BI)Z
    .locals 4

    const/4 v1, 0x0

    sget v0, Lorg/apache/commons/compress/compressors/pack200/f;->iX:I

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget v2, Lorg/apache/commons/compress/compressors/pack200/f;->iX:I

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/compressors/pack200/f;->iW:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iV:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iV:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iV:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method public mark(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/f;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
