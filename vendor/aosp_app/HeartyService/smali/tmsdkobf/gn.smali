.class public final Ltmsdkobf/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 357
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 360
    .local v0, md5:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 362
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    .end local v0           #md5:Ljava/security/MessageDigest;
    .end local p0
    :goto_1
    return-object p0

    .line 362
    .restart local v0       #md5:Ljava/security/MessageDigest;
    .restart local p0
    :cond_0
    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static i([B)[B
    .locals 5
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 548
    if-nez p0, :cond_0

    .line 561
    :goto_0
    return-object v2

    .line 551
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 552
    .local v0, bufferOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 554
    .local v1, out:Ljava/util/zip/DeflaterOutputStream;
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-virtual {v1, p0, v3, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 555
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 556
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 557
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 559
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static j([B)[B
    .locals 10
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 572
    if-nez p0, :cond_0

    move-object v3, v6

    .line 595
    :goto_0
    return-object v3

    .line 575
    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    .line 576
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 575
    invoke-direct {v1, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 577
    .local v1, is:Ljava/util/zip/InflaterInputStream;
    new-array v3, v8, [B

    .line 578
    .local v3, rdata:[B
    const/4 v5, 0x0

    .line 579
    .local v5, total:I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 583
    .local v0, data_atime:[B
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    .line 584
    .local v2, len:I
    if-lez v2, :cond_2

    .line 585
    add-int/2addr v5, v2

    .line 586
    new-array v4, v5, [B

    .line 587
    .local v4, temp:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v3, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v0, v7, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    move-object v3, v4

    .line 581
    .end local v4           #temp:[B
    :cond_2
    if-gtz v2, :cond_1

    goto :goto_0

    .line 592
    .end local v2           #len:I
    :catch_0
    move-exception v7

    move-object v3, v6

    goto :goto_0
.end method
