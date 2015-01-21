.class public Ltmsdkobf/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;)Ltmsdkobf/jt;
    .locals 4
    .parameter "is"

    .prologue
    .line 26
    new-instance v2, Ltmsdkobf/jt;

    invoke-direct {v2}, Ltmsdkobf/jt;-><init>()V

    .line 27
    .local v2, fh:Ltmsdkobf/jt;
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 29
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 30
    invoke-static {v0}, Ltmsdkobf/ju;->p([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ltmsdkobf/jt;->setVersion(I)V

    .line 31
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 32
    invoke-static {v0}, Ltmsdkobf/ju;->p([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ltmsdkobf/jt;->bq(I)V

    .line 33
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 34
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 35
    invoke-virtual {v2, v0}, Ltmsdkobf/jt;->q([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v1

    .line 38
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static p([B)I
    .locals 3
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .line 63
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 68
    :goto_0
    return v0

    .line 66
    :cond_0
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 68
    .local v0, rst:I
    goto :goto_0
.end method
