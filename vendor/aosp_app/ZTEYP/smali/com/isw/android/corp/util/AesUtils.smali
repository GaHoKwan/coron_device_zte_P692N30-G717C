.class public Lcom/isw/android/corp/util/AesUtils;
.super Ljava/lang/Object;
.source "AesUtils.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final TAG:Ljava/lang/String; = "MiniAesUtils"

.field private static decrypter:Ljavax/crypto/Cipher;

.field private static encrypter:Ljavax/crypto/Cipher;

.field private static key:[B

.field static zeroIv_:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 52
    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/isw/android/corp/util/AesUtils;->key:[B

    .line 59
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v2, Lcom/isw/android/corp/util/AesUtils;->zeroIv_:Ljavax/crypto/spec/IvParameterSpec;

    .line 68
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/isw/android/corp/util/AesUtils;->key:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .local v1, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v2, "AES/CBC/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/AesUtils;->encrypter:Ljavax/crypto/Cipher;

    .line 71
    sget-object v2, Lcom/isw/android/corp/util/AesUtils;->encrypter:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    sget-object v4, Lcom/isw/android/corp/util/AesUtils;->zeroIv_:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    const-string v2, "AES/CBC/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/isw/android/corp/util/AesUtils;->decrypter:Ljavax/crypto/Cipher;

    .line 74
    sget-object v2, Lcom/isw/android/corp/util/AesUtils;->decrypter:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    sget-object v4, Lcom/isw/android/corp/util/AesUtils;->zeroIv_:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 89
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v0

    .line 83
    .local v0, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 86
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 52
    :array_0
    .array-data 0x1
        0x65t
        0x1at
        0x40t
        0xadt
        0xb3t
        0xb4t
        0x91t
        0x88t
        0xfbt
        0xedt
        0xeat
        0xd8t
        0xc7t
        0x9ct
        0x14t
        0x33t
        0xcet
        0xeft
        0xfdt
        0x54t
        0xd0t
        0x9t
        0x2at
        0x86t
        0x75t
        0x4at
        0xc0t
        0x5dt
        0x2at
        0xc9t
        0xd5t
        0x22t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IMSI2token(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "imsi"

    .prologue
    .line 147
    const-string v2, ""

    .line 152
    .local v2, token:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/isw/android/corp/util/AesUtils;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    .local v0, de:[B
    const/16 v3, 0xb

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/Base64;->encodeToStringUTF8([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    .end local v0           #de:[B
    :goto_0
    return-object v2

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "MiniAesUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static decrypt([B)Ljava/lang/String;
    .locals 8
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 124
    invoke-static {}, Lcom/isw/android/corp/util/AesUtils;->getDecrypter()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 125
    .local v2, decrypted:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    .local v0, bf:Ljava/nio/ByteBuffer;
    new-array v1, v7, [B

    .line 127
    .local v1, decryptBcd:[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    invoke-static {v1}, Lcom/isw/android/corp/util/BCD;->decode([B)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, decryptedStr:Ljava/lang/String;
    return-object v3
.end method

.method public static encodeCallHistory(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 165
    const-string v3, ""

    .line 166
    .local v3, res:Ljava/lang/String;
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    .line 183
    .end local v3           #res:Ljava/lang/String;
    .local v4, res:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 170
    .end local v4           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 172
    .local v0, de:[B
    const/16 v6, 0xc

    new-array v5, v6, [C

    fill-array-data v5, :array_0

    .line 174
    .local v5, secret:[C
    array-length v2, v5

    .line 176
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-lt v1, v6, :cond_1

    .line 180
    const/16 v6, 0xb

    invoke-static {v0, v6}, Lcom/isw/android/corp/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 183
    .end local v3           #res:Ljava/lang/String;
    .restart local v4       #res:Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v4           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    :cond_1
    aget-byte v6, v0, v1

    rem-int v7, v1, v2

    aget-char v7, v5, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    nop

    :array_0
    .array-data 0x2
        0x77t 0x0t
        0x69t 0x0t
        0x6et 0x0t
        0x6bt 0x0t
        0x73t 0x0t
        0x69t 0x0t
        0x40t 0x0t
        0x63t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6et 0x0t
        0x61t 0x0t
    .end array-data
.end method

.method private static encrypt(Ljava/lang/String;)[B
    .locals 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, bf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 110
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 111
    .local v1, rgen:Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 114
    invoke-static {p0}, Lcom/isw/android/corp/util/BCD;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 116
    invoke-static {}, Lcom/isw/android/corp/util/AesUtils;->getEncrypter()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method private static getDecrypter()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/isw/android/corp/util/AesUtils;->decrypter:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method private static getEncrypter()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/isw/android/corp/util/AesUtils;->encrypter:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static token2IMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "token"

    .prologue
    .line 133
    const-string v2, ""

    .line 135
    .local v2, imsi:Ljava/lang/String;
    const/16 v3, 0xb

    invoke-static {p0, v3}, Lcom/isw/android/corp/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 138
    .local v0, de:[B
    :try_start_0
    invoke-static {v0}, Lcom/isw/android/corp/util/AesUtils;->decrypt([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "MiniAesUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
