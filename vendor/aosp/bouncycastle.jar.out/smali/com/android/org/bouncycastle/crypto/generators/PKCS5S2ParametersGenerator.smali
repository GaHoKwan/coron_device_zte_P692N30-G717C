.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .parameter "digest"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 40
    return-void
.end method

.method private F([B[BI[B[BI)V
    .locals 8
    .parameter "P"
    .parameter "S"
    .parameter "c"
    .parameter "iBuf"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v7, 0x0

    .line 50
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 51
    .local v3, state:[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 53
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 55
    if-eqz p2, :cond_0

    .line 57
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, p4

    invoke-interface {v4, p4, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 62
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 64
    array-length v4, v3

    invoke-static {v3, v7, p5, p6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    if-nez p3, :cond_1

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iteration count must be at least 1."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_1
    const/4 v0, 0x1

    .local v0, count:I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 73
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v5, v3

    invoke-interface {v4, v3, v7, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 75
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 77
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_2

    .line 79
    add-int v4, p6, v1

    aget-byte v5, p5, v4

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p5, v4

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1           #j:I
    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 10
    .parameter "dkLen"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    .line 98
    .local v7, hLen:I
    add-int v0, p1, v7

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v7

    .line 99
    .local v9, l:I
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 100
    .local v4, iBuf:[B
    mul-int v0, v9, v7

    new-array v5, v0, [B

    .line 102
    .local v5, out:[B
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    if-gt v8, v9, :cond_0

    .line 104
    invoke-direct {p0, v4, v8}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    add-int/lit8 v0, v8, -0x1

    mul-int v6, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v5
.end method

.method private intToOctet([BI)V
    .locals 2
    .parameter "buf"
    .parameter "i"

    .prologue
    .line 88
    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 89
    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 90
    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 91
    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 92
    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .parameter "keySize"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .parameter "keySize"

    .prologue
    .line 122
    div-int/lit8 p1, p1, 0x8

    .line 124
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 126
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 142
    div-int/lit8 p1, p1, 0x8

    .line 143
    div-int/lit8 p2, p2, 0x8

    .line 145
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 147
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
