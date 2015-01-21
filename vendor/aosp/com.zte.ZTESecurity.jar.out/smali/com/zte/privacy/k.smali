.class public Lcom/zte/privacy/k;
.super Lcom/zte/privacy/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/privacy/J;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)[B
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/b;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/b;->L()Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->cN()Lorg/apache/commons/compress/archivers/zip/v;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/v;->l(Z)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/E;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/zte/ZTESecurity/e;->e(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/zte/ZTESecurity/e;->f(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/b;->L()Lorg/apache/commons/compress/archivers/zip/E;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/zte/ZTESecurity/e;->f(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t find classes.dex in the zip"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/zte/ZTESecurity/e;->f(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
