.class public Ltmsdkobf/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/eh;
.implements Ltmsdkobf/el;


# instance fields
.field private i:I

.field public final jO:I

.field private kX:Z

.field public final kb:I

.field private kh:I

.field private lk:Z

.field protected final ll:Landroid/content/Context;

.field private lm:Ltmsdkobf/fn;

.field private ln:Ltmsdkobf/fm;


# direct methods
.method public static a([BZ)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 655
    if-nez p0, :cond_0

    .line 656
    const-string v0, ""

    .line 666
    :goto_0
    return-object v0

    .line 658
    :cond_0
    array-length v2, p0

    .line 659
    new-instance v3, Ljava/lang/StringBuffer;

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 660
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move v0, v1

    .line 661
    :goto_1
    if-ge v0, v2, :cond_1

    .line 663
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, p0, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 665
    :cond_1
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 666
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 149
    const-string v1, "rqdp{  en obj 2 bytes}"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    if-eqz p0, :cond_0

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    const-string v1, "rqdp{  not serial obj}"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-object v0

    .line 157
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 167
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 182
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    :catch_1
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 170
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 173
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    if-eqz v2, :cond_2

    .line 186
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 200
    :catch_3
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    :catch_4
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 182
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 186
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 194
    :cond_3
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 203
    :goto_6
    throw v0

    .line 188
    :catch_5
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 200
    :catch_6
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 182
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 170
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 91
    :goto_0
    return-object v0

    .line 79
    :cond_1
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 86
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 87
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized aM()Ltmsdkobf/fm;
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/er;->ln:Ltmsdkobf/fm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static aQ()J
    .locals 3

    .prologue
    .line 473
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 474
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 481
    :goto_0
    return-wide v0

    .line 477
    :catch_0
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private declared-synchronized av(I)V
    .locals 1
    .parameter

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ltmsdkobf/er;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 493
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-object v0

    .line 496
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 505
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 507
    :cond_2
    const-string p1, "MD5"

    .line 513
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 514
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 516
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 518
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    .line 523
    :catch_0
    move-exception v2

    .line 533
    :goto_3
    if-eqz v1, :cond_0

    .line 537
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 542
    :catch_1
    move-exception v1

    goto :goto_0

    .line 509
    :cond_4
    :try_start_3
    const-string v2, "MD5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SHA-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 511
    const-string p1, "MD5"

    goto :goto_1

    .line 521
    :cond_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    .line 533
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 542
    :catch_2
    move-exception v1

    goto :goto_0

    .line 527
    :catch_3
    move-exception v1

    move-object v1, v0

    .line 533
    :goto_4
    if-eqz v1, :cond_0

    .line 537
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 542
    :catch_4
    move-exception v1

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    if-eqz v1, :cond_6

    .line 537
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 542
    :cond_6
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    goto :goto_6

    .line 533
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 527
    :catch_6
    move-exception v2

    goto :goto_4

    .line 523
    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_3
.end method

.method public static g([B)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 210
    const-string v1, "rqdp{  de byte 2 obj}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 239
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 259
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_1
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 228
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 231
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    if-eqz v2, :cond_2

    .line 243
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 251
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 257
    :catch_3
    move-exception v1

    .line 259
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_4
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 239
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 243
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 251
    :cond_3
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 260
    :goto_6
    throw v0

    .line 245
    :catch_5
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 257
    :catch_6
    move-exception v1

    .line 259
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 239
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 228
    :catch_7
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized S()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/er;->kX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final W()V
    .locals 4

    .prologue
    .line 264
    const-string v0, "rqdp{  com query start }%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Ltmsdkobf/er;->aP()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ltmsdkobf/er;->av(I)V

    .line 266
    return-void
.end method

.method public final a(Ltmsdkobf/ek;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 458
    const-string v0, "rqdp{  com strateyg changed }%s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    if-eqz p1, :cond_0

    .line 461
    iget v0, p0, Ltmsdkobf/er;->jO:I

    invoke-virtual {p1, v0}, Ltmsdkobf/ek;->aE(I)Ltmsdkobf/ek$a;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Ltmsdkobf/ek$a;->aE()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ltmsdkobf/ek$a;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 465
    :goto_0
    invoke-virtual {p0}, Ltmsdkobf/er;->S()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 467
    const-string v3, "rqdp{  module} %d rqdp{  able changed }%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ltmsdkobf/er;->jO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p0, v0}, Ltmsdkobf/er;->e(Z)V

    .line 473
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 464
    goto :goto_0
.end method

.method public aB()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized aL()Ltmsdkobf/fn;
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/er;->lm:Ltmsdkobf/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aN()Z
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Ltmsdkobf/er;->S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final aO()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0}, Ltmsdkobf/er;->S()Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    invoke-virtual {p0}, Ltmsdkobf/er;->aL()Ltmsdkobf/fn;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_0

    .line 427
    new-instance v0, Ltmsdkobf/fk;

    iget-object v2, p0, Ltmsdkobf/er;->ll:Landroid/content/Context;

    iget v3, p0, Ltmsdkobf/er;->jO:I

    iget v4, p0, Ltmsdkobf/er;->kh:I

    invoke-direct {v0, v2, v3, v4}, Ltmsdkobf/fk;-><init>(Landroid/content/Context;II)V

    .line 428
    invoke-interface {v1, v0}, Ltmsdkobf/fn;->a(Ltmsdkobf/fj;)V

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized aP()I
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ltmsdkobf/er;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ab()Z
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/er;->lk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ap()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    const-string v0, "rqdp{  com query end }%s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Ltmsdkobf/er;->ab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "rqdp{  step after query}"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0, v1}, Ltmsdkobf/er;->f(Z)V

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/er;->ll:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v0

    .line 281
    if-nez v0, :cond_2

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget v3, p0, Ltmsdkobf/er;->jO:I

    invoke-virtual {v0, v3}, Ltmsdkobf/ek;->aE(I)Ltmsdkobf/ek$a;

    move-result-object v3

    .line 285
    invoke-virtual {p0}, Ltmsdkobf/er;->S()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 287
    const-string v4, "rqdp{  isable}"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v3}, Ltmsdkobf/ek$a;->aF()Z

    move-result v4

    invoke-virtual {v0}, Ltmsdkobf/ek;->aD()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Ltmsdkobf/er;->b(ZZ)Z

    move-result v4

    .line 290
    const-string v5, "rqdp{  needDetail} %b rqdp{  allQ:}%b rqdp{  result:}%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ltmsdkobf/ek$a;->aF()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v0}, Ltmsdkobf/ek;->aD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Ltmsdkobf/er;->az()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    .line 293
    :goto_1
    if-eqz v0, :cond_4

    .line 295
    const-string v0, "rqdp{  asyn up module} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Ltmsdkobf/er;->jO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v0

    new-instance v3, Ltmsdkobf/er$1;

    invoke-direct {v3, p0}, Ltmsdkobf/er$1;-><init>(Ltmsdkobf/er;)V

    invoke-virtual {v0, v3}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    const-string v3, "rqdp{  common query end error} %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 291
    goto :goto_1

    .line 307
    :cond_4
    if-eqz v4, :cond_1

    .line 309
    :try_start_1
    const-string v0, "rqdp{  asyn query module }%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Ltmsdkobf/er;->jO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v0

    new-instance v3, Ltmsdkobf/er$2;

    invoke-direct {v3, p0}, Ltmsdkobf/er$2;-><init>(Ltmsdkobf/er;)V

    invoke-virtual {v0, v3}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 325
    :cond_5
    const-string v0, "rqdp{  disable}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public aq()V
    .locals 4

    .prologue
    .line 338
    const-string v0, "rqdp{  app first start} %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public az()I
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Ltmsdkobf/er;->S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, -0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(ZZ)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 353
    if-eqz p1, :cond_4

    .line 355
    if-eqz p2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    invoke-virtual {p0}, Ltmsdkobf/er;->aB()Z

    move-result v2

    if-nez v2, :cond_4

    .line 362
    iget-object v2, p0, Ltmsdkobf/er;->ll:Landroid/content/Context;

    iget v3, p0, Ltmsdkobf/er;->kb:I

    invoke-static {v2, v3}, Ltmsdkobf/fh;->b(Landroid/content/Context;I)Ltmsdkobf/em;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_3

    .line 365
    invoke-direct {p0}, Ltmsdkobf/er;->aM()Ltmsdkobf/fm;

    move-result-object v3

    .line 366
    if-nez v3, :cond_2

    .line 368
    const-string v0, "rqdp{  imposiable eup reshandler not ready}"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 369
    goto :goto_0

    .line 371
    :cond_2
    iget v4, p0, Ltmsdkobf/er;->kb:I

    invoke-virtual {v2}, Ltmsdkobf/em;->aG()[B

    move-result-object v2

    invoke-interface {v3, v4, v2, v1}, Ltmsdkobf/fm;->a(I[BZ)V

    .line 375
    :cond_3
    invoke-virtual {p0}, Ltmsdkobf/er;->aB()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 380
    goto :goto_0
.end method

.method public declared-synchronized e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ltmsdkobf/er;->kX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltmsdkobf/er;->lk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
