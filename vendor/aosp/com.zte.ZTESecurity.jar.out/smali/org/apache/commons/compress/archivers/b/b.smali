.class public Lorg/apache/commons/compress/archivers/b/b;
.super Lorg/apache/commons/compress/archivers/zip/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static a([BI)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->a([BI)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bq()Lorg/apache/commons/compress/archivers/b/a;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/b/b;->L()Lorg/apache/commons/compress/archivers/zip/E;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/b/a;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/b/a;-><init>(Lorg/apache/commons/compress/archivers/zip/E;)V

    goto :goto_0
.end method

.method public q()Lorg/apache/commons/compress/archivers/c;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/b/b;->bq()Lorg/apache/commons/compress/archivers/b/a;

    move-result-object v0

    return-object v0
.end method
