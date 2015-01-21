.class public Ltmsdkobf/kd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ym:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ltmsdkobf/kd;->ym:[C

    return-void
.end method

.method public static bn(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 67
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 68
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 72
    return-object v0
.end method

.method public static ch(Ljava/lang/String;)[B
    .locals 1
    .parameter "plainText"

    .prologue
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/kd;->t([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static ci(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    .line 82
    invoke-static {p0}, Ltmsdkobf/kd;->ch(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    .local v2, hash:[B
    if-nez v2, :cond_0

    .line 84
    const/4 v6, 0x0

    .line 93
    :goto_0
    return-object v6

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v7, v2

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v3, hex:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 89
    .local v1, b:B
    and-int/lit16 v7, v1, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, rst:Ljava/lang/String;
    goto :goto_0
.end method

.method public static t([B)[B
    .locals 4
    .parameter "text"

    .prologue
    .line 28
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 29
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    .end local v2           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 46
    .local v1, b:I
    and-int/lit16 v1, v1, 0xff

    .line 47
    sget-object v5, Ltmsdkobf/kd;->ym:[C

    shr-int/lit8 v6, v1, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    sget-object v5, Ltmsdkobf/kd;->ym:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1           #b:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static v([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 58
    invoke-static {p0}, Ltmsdkobf/kd;->t([B)[B

    move-result-object v0

    .line 59
    .local v0, result_bytes:[B
    invoke-static {v0}, Ltmsdkobf/kd;->u([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
