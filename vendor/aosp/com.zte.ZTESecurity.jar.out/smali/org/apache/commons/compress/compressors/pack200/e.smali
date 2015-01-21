.class public Lorg/apache/commons/compress/compressors/pack200/e;
.super Lorg/apache/commons/compress/compressors/b;


# instance fields
.field private b:Z

.field private final iS:Ljava/io/OutputStream;

.field private final iT:Lorg/apache/commons/compress/compressors/pack200/g;

.field private final iU:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/e;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->cy:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/e;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/e;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->b:Z

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iS:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->T()Lorg/apache/commons/compress/compressors/pack200/g;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    iput-object p3, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iU:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/e;->finish()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/g;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iS:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iS:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public finish()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->b:Z

    invoke-static {}, Ljava/util/jar/Pack200;->newPacker()Ljava/util/jar/Pack200$Packer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iU:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/jar/Pack200$Packer;->properties()Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iU:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/util/jar/JarInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/pack200/g;->H()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iS:Ljava/io/OutputStream;

    invoke-interface {v0, v1, v2}, Ljava/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/pack200/g;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/pack200/g;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/e;->iT:Lorg/apache/commons/compress/compressors/pack200/g;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/g;->write([BII)V

    return-void
.end method
