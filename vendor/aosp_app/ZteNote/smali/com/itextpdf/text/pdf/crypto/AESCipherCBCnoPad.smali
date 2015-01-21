.class public Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;
.super Ljava/lang/Object;
.source "AESCipherCBCnoPad.java"


# instance fields
.field private cbc:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Z[B)V
    .locals 3
    .parameter "forEncryption"
    .parameter "key"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 61
    .local v0, aes:Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    .line 62
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 63
    .local v1, kp:Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 64
    return-void
.end method


# virtual methods
.method public processBlock([BII)[B
    .locals 5
    .parameter "inp"
    .parameter "inpOff"
    .parameter "inpLen"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    rem-int v2, p3, v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not multiple of block: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    new-array v1, p3, [B

    .line 70
    .local v1, outp:[B
    const/4 v0, 0x0

    .line 71
    .local v0, baseOffset:I
    :goto_0
    if-lez p3, :cond_1

    .line 72
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 73
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    sub-int/2addr p3, v2

    .line 74
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 75
    iget-object v2, p0, Lcom/itextpdf/text/pdf/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 77
    :cond_1
    return-object v1
.end method
