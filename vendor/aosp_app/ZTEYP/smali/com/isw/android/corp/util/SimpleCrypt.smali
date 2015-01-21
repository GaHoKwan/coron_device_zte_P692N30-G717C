.class public Lcom/isw/android/corp/util/SimpleCrypt;
.super Ljava/lang/Object;
.source "SimpleCrypt.java"


# static fields
.field private static final key:Ljava/lang/String; = "syllm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asBytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "hexStr"

    .prologue
    const/16 v6, 0x10

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 131
    const/4 v3, 0x0

    .line 139
    :cond_0
    return-object v3

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 133
    .local v3, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_0

    .line 134
    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, high:I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 137
    .local v2, low:I
    mul-int/lit8 v4, v0, 0x10

    add-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static asHex([B)Ljava/lang/String;
    .locals 5
    .parameter "buf"

    .prologue
    const/16 v4, 0x10

    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 115
    .local v1, strbuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 116
    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_1

    .line 117
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decryptAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 94
    :try_start_0
    const-string v4, "syllm"

    invoke-static {v4}, Lcom/isw/android/corp/util/SimpleCrypt;->initKeyForAES(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 95
    .local v3, secretKey:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 96
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 97
    invoke-static {p0}, Lcom/isw/android/corp/util/SimpleCrypt;->asBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 98
    .local v2, result:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #result:[B
    .end local v3           #secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static encryptAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    .line 72
    :try_start_0
    const-string v5, "syllm"

    invoke-static {v5}, Lcom/isw/android/corp/util/SimpleCrypt;->initKeyForAES(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 73
    .local v4, secretKey:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 74
    .local v1, cipher:Ljavax/crypto/Cipher;
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    .local v0, byteContent:[B
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 76
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 77
    .local v3, result:[B
    invoke-static {v3}, Lcom/isw/android/corp/util/SimpleCrypt;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 82
    .end local v0           #byteContent:[B
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #result:[B
    .end local v4           #secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static initKeyForAES(Ljava/lang/String;)Ljava/security/Key;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 46
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "key not is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 50
    .local v2, key2:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 51
    .local v3, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v5, 0x38

    new-instance v6, Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v3, v5, v6}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 52
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 53
    .local v4, secretKey:Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 54
    .local v0, enCodeFormat:[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .end local v2           #key2:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "DES"

    invoke-direct {v2, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .restart local v2       #key2:Ljavax/crypto/spec/SecretKeySpec;
    return-object v2

    .line 56
    .end local v0           #enCodeFormat:[B
    .end local v2           #key2:Ljavax/crypto/spec/SecretKeySpec;
    .end local v3           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v4           #secretKey:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 57
    .local v1, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v5}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v5
.end method
