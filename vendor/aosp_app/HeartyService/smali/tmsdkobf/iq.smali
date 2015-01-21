.class final Ltmsdkobf/iq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLjava/security/interfaces/RSAPublicKey;)[B
    .locals 4
    .parameter "dest"
    .parameter "key"

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, result:[B
    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :cond_0
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static l([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 5
    .parameter "raw"

    .prologue
    .line 22
    const/4 v3, 0x0

    .line 24
    .local v3, result:Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v1

    .line 26
    .local v1, certificate:Ljavax/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v3, v0
    :try_end_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1           #certificate:Ljavax/security/cert/X509Certificate;
    :goto_0
    return-object v3

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, e:Ljavax/security/cert/CertificateException;
    invoke-virtual {v2}, Ljavax/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0
.end method
