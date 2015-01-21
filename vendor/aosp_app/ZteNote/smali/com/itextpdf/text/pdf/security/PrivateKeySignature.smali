.class public Lcom/itextpdf/text/pdf/security/PrivateKeySignature;
.super Ljava/lang/Object;
.source "PrivateKeySignature.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/security/ExternalSignature;


# instance fields
.field private encryptionAlgorithm:Ljava/lang/String;

.field private hashAlgorithm:Ljava/lang/String;

.field private pk:Ljava/security/PrivateKey;

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pk"
    .parameter "hashAlgorithm"
    .parameter "provider"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->pk:Ljava/security/PrivateKey;

    .line 74
    iput-object p3, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->provider:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getAllowedDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    .line 76
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public sign([B)[B
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, signMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->provider:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 90
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 94
    .local v0, sig:Ljava/security/Signature;
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->pk:Ljava/security/PrivateKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 95
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 96
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    return-object v2

    .line 92
    .end local v0           #sig:Ljava/security/Signature;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/security/PrivateKeySignature;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0       #sig:Ljava/security/Signature;
    goto :goto_0
.end method
