.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$MD5;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .locals 1
    .parameter "macEngine"

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 56
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .locals 1
    .parameter "macEngine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "keySize"

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 56
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 71
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 72
    iput p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 73
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 74
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 149
    .local v0, out:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 151
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 85
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 92
    .local v0, k:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 118
    .end local v0           #k:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local p2
    .local v1, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 119
    return-void

    .line 96
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v0       #k:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2

    .line 98
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 102
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0           #k:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 109
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_4
    if-nez p2, :cond_5

    .line 111
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 115
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_5
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    .line 129
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .parameter "input"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 135
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 143
    return-void
.end method
