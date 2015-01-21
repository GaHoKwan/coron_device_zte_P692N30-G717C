.class public Lcom/zte/statistics/sdk/util/DesUtils;
.super Ljava/lang/Object;
.source "DesUtils.java"


# static fields
.field private static strDefaultKey:Ljava/lang/String;


# instance fields
.field private decryptCipher:Ljavax/crypto/Cipher;

.field private encryptCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "ZTE"

    sput-object v0, Lcom/zte/statistics/sdk/util/DesUtils;->strDefaultKey:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/zte/statistics/sdk/util/DesUtils;->strDefaultKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/statistics/sdk/util/DesUtils;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "strKey"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    .line 17
    iput-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/statistics/sdk/util/DesUtils;->getKey([B)Ljava/security/Key;

    move-result-object v1

    .line 91
    .local v1, key:Ljava/security/Key;
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    .line 92
    iget-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    .line 95
    iget-object v2, p0, Lcom/zte/statistics/sdk/util/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #key:Ljava/security/Key;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static byteArr2HexStr([B)Ljava/lang/String;
    .locals 6
    .parameter "arrB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 30
    array-length v1, p0

    .line 32
    .local v1, iLen:I
    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 33
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 34
    :cond_0
    aget-byte v2, p0, v0

    .line 36
    .local v2, intTmp:I
    :goto_1
    if-ltz v2, :cond_2

    .line 40
    if-ge v2, v5, :cond_1

    .line 41
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_2
    add-int/lit16 v2, v2, 0x100

    goto :goto_1
.end method

.method private getKey([B)Ljava/security/Key;
    .locals 4
    .parameter "arrBTmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 181
    .local v0, arrB:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 186
    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 188
    .local v2, key:Ljava/security/Key;
    return-object v2

    .line 182
    .end local v2           #key:Ljava/security/Key;
    :cond_1
    aget-byte v3, p1, v1

    aput-byte v3, v0, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hexStr2ByteArr(Ljava/lang/String;)[B
    .locals 7
    .parameter "strIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 60
    .local v0, arrB:[B
    array-length v3, v0

    .line 63
    .local v3, iLen:I
    div-int/lit8 v5, v3, 0x2

    new-array v1, v5, [B

    .line 64
    .local v1, arrOut:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 68
    return-object v1

    .line 65
    :cond_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 66
    .local v4, strTmp:Ljava/lang/String;
    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 64
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "strIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/zte/statistics/sdk/util/DesUtils;->hexStr2ByteArr(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/statistics/sdk/util/DesUtils;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    .line 164
    .end local p1
    :cond_0
    return-object p1
.end method

.method public decrypt([B)[B
    .locals 1
    .parameter "arrB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/zte/statistics/sdk/util/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 148
    .end local p1
    :cond_0
    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/statistics/sdk/util/DesUtils;->encrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/statistics/sdk/util/DesUtils;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 131
    .end local p1
    :cond_0
    return-object p1
.end method

.method public encrypt([B)[B
    .locals 1
    .parameter "arrB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zte/statistics/sdk/util/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 115
    .end local p1
    :cond_0
    return-object p1
.end method
