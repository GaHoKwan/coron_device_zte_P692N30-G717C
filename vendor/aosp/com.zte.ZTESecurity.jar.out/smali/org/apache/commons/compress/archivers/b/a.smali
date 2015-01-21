.class public Lorg/apache/commons/compress/archivers/b/a;
.super Lorg/apache/commons/compress/archivers/zip/E;


# instance fields
.field private h:Ljava/util/jar/Attributes;

.field private i:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->h:Ljava/util/jar/Attributes;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/util/zip/ZipEntry;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->h:Ljava/util/jar/Attributes;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Ljava/util/zip/ZipEntry;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->h:Ljava/util/jar/Attributes;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;-><init>(Lorg/apache/commons/compress/archivers/zip/E;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->h:Ljava/util/jar/Attributes;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/jar/Attributes;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->h:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    array-length v0, v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/b/a;->i:[Ljava/security/cert/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/E;->hashCode()I

    move-result v0

    return v0
.end method
