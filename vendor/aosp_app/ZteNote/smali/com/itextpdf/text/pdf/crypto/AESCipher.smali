.class public Lcom/itextpdf/text/pdf/crypto/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.java"


# instance fields
.field private bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;


# direct methods
.method public constructor <init>(Z[B[B)V
    .locals 5
    .parameter "forEncryption"
    .parameter "key"
    .parameter "iv"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 63
    .local v0, aes:Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 64
    .local v1, cbc:Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v4, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v4, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 65
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 66
    .local v2, kp:Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v2, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 67
    .local v3, piv:Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v4, p1, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 68
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v5, v7}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .line 83
    .local v2, neededLen:I
    new-array v3, v2, [B

    .line 84
    .local v3, outp:[B
    const/4 v1, 0x0

    .line 86
    .local v1, n:I
    :try_start_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    array-length v5, v3

    if-eq v1, v5, :cond_0

    .line 91
    new-array v4, v1, [B

    .line 92
    .local v4, outp2:[B
    invoke-static {v3, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 96
    .end local v3           #outp:[B
    .end local v4           #outp2:[B
    :cond_0
    :goto_0
    return-object v3

    .line 87
    .restart local v3       #outp:[B
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public update([BII)[B
    .locals 7
    .parameter "inp"
    .parameter "inpOff"
    .parameter "inpLen"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v6

    .line 72
    .local v6, neededLen:I
    const/4 v4, 0x0

    .line 73
    .local v4, outp:[B
    if-lez v6, :cond_0

    .line 74
    new-array v4, v6, [B

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    .line 78
    return-object v4

    .line 76
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
