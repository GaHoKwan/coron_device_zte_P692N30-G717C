.class public Lcom/itextpdf/text/pdf/security/CertificateVerification;
.super Ljava/lang/Object;
.source "CertificateVerification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cert"
    .parameter
    .parameter "calendar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, crls:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    if-nez p2, :cond_0

    .line 75
    new-instance p2, Ljava/util/GregorianCalendar;

    .end local p2
    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 76
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    const-string v3, "Has unsupported critical extension"

    .line 90
    :goto_0
    return-object v3

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz p1, :cond_3

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;

    .line 86
    .local v0, crl:Ljava/security/cert/CRL;
    invoke-virtual {v0, p0}, Ljava/security/cert/CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "Certificate revoked"

    goto :goto_0

    .line 81
    .end local v0           #crl:Ljava/security/cert/CRL;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;Ljava/util/Calendar;)[Ljava/lang/Object;
    .locals 12
    .parameter "certs"
    .parameter "keystore"
    .parameter
    .parameter "calendar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, crls:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    if-nez p3, :cond_0

    .line 105
    new-instance p3, Ljava/util/GregorianCalendar;

    .end local p3
    invoke-direct {p3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 106
    .restart local p3
    :cond_0
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_7

    .line 107
    aget-object v2, p0, v8

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 108
    .local v2, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v2, p2, p3}, Lcom/itextpdf/text/pdf/security/CertificateVerification;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, err:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 110
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    .line 149
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #err:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 112
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v6       #err:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_3

    .line 114
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 117
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 118
    .local v4, certStoreX509:Ljava/security/cert/X509Certificate;
    invoke-static {v4, p2, p3}, Lcom/itextpdf/text/pdf/security/CertificateVerification;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    if-nez v9, :cond_2

    .line 121
    :try_start_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    const/4 v9, 0x0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    goto :goto_2

    .line 132
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #certStoreX509:Ljava/security/cert/X509Certificate;
    .end local v5           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 135
    :cond_3
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    array-length v9, p0

    if-ge v7, v9, :cond_5

    .line 136
    if-ne v7, v8, :cond_4

    .line 135
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 138
    :cond_4
    aget-object v3, p0, v7

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 140
    .local v3, certNext:Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    .end local v3           #certNext:Ljava/security/cert/X509Certificate;
    :cond_5
    array-length v9, p0

    if-ne v7, v9, :cond_6

    .line 147
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const-string v11, "Cannot be verified against the KeyStore or the certificate chain"

    aput-object v11, v9, v10

    goto :goto_1

    .line 106
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 149
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #err:Ljava/lang/String;
    .end local v7           #j:I
    :cond_7
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Invalid state. Possible circular certificate chain"

    aput-object v11, v9, v10

    goto :goto_1

    .line 143
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #certNext:Ljava/security/cert/X509Certificate;
    .restart local v6       #err:Ljava/lang/String;
    .restart local v7       #j:I
    :catch_2
    move-exception v9

    goto :goto_4

    .line 128
    .end local v3           #certNext:Ljava/security/cert/X509Certificate;
    .end local v7           #j:I
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method public static verifyOcspCertificates(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 5
    .parameter "ocsp"
    .parameter "keystore"
    .parameter "provider"

    .prologue
    .line 160
    if-nez p2, :cond_0

    .line 161
    const-string p2, "BC"

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 169
    .local v2, certStoreX509:Ljava/security/cert/X509Certificate;
    new-instance v3, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const/4 v3, 0x1

    .line 178
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #certStoreX509:Ljava/security/cert/X509Certificate;
    :goto_1
    return v3

    .line 176
    :catch_0
    move-exception v3

    .line 178
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 172
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static verifyTimestampCertificates(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 4
    .parameter "ts"
    .parameter "keystore"
    .parameter "provider"

    .prologue
    .line 189
    if-nez p2, :cond_0

    .line 190
    const-string p2, "BC"

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 198
    .local v2, certStoreX509:Ljava/security/cert/X509Certificate;
    new-instance v3, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;-><init>()V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/tsp/TimeStampToken;->isSignatureValid(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    const/4 v3, 0x1

    .line 207
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #certStoreX509:Ljava/security/cert/X509Certificate;
    :goto_1
    return v3

    .line 205
    :catch_0
    move-exception v3

    .line 207
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 201
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    goto :goto_0
.end method
