.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private pinManager:Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .parameter "keyStore"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;)V
    .locals 12
    .parameter "keyStore"
    .parameter "manager"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v9, 0x0

    .line 100
    .local v9, validatorLocal:Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 101
    .local v3, factoryLocal:Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 102
    .local v4, rootKeyStoreLocal:Ljava/security/KeyStore;
    const/4 v7, 0x0

    .line 103
    .local v7, trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    const/4 v5, 0x0

    .line 104
    .local v5, trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    const/4 v0, 0x0

    .line 105
    .local v0, acceptedIssuersLocal:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 107
    .local v2, errLocal:Ljava/lang/Exception;
    :try_start_0
    const-string v10, "PKIX"

    invoke-static {v10}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v9

    .line 108
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 111
    const-string v10, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    move-object v4, p1

    .line 113
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v7           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .local v8, trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 115
    :try_start_1
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-direct {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v5           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .local v6, trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v5, v6

    .end local v6           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v5       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v7, v8

    .line 128
    .end local v8           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v7       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    :goto_0
    if-eqz p2, :cond_1

    .line 129
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->pinManager:Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;

    .line 138
    :goto_1
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 139
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 140
    iput-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 141
    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 142
    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    .line 143
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 144
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 145
    return-void

    .line 117
    :cond_0
    const/4 v4, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    :try_start_2
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 120
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v6       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v5, v6

    .end local v6           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v5       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    move-object v2, v1

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v10, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;

    invoke-direct {v10, v7}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)V

    iput-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->pinManager:Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;
    :try_end_3
    .catch Lorg/apache/harmony/xnet/provider/jsse/PinManagerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Could not initialize CertPinManager"

    invoke-direct {v10, v11, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 124
    .end local v1           #e:Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
    .end local v7           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v8       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    :catch_2
    move-exception v1

    move-object v7, v8

    .end local v8           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v7       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    goto :goto_2
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .parameter "ks"

    .prologue
    .line 158
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 162
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .end local v2           #e:Ljava/security/KeyStoreException;
    :goto_1
    return-object v5

    .line 166
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .parameter "chain"
    .parameter "authType"
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 210
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 211
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null or zero-length parameter"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 214
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 218
    :cond_2
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 219
    .local v15, trustAnchor:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 222
    .local v11, newChain:[Ljava/security/cert/X509Certificate;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v16, wholeChain:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/TrustAnchor;

    .line 226
    .local v14, trust:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v14           #trust:Ljava/security/cert/TrustAnchor;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 234
    .local v10, last:Ljava/security/cert/X509Certificate;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v4

    .line 237
    .local v4, cachedTrust:Ljava/security/cert/TrustAnchor;
    if-nez v4, :cond_5

    .line 255
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5

    .line 257
    .local v5, certPath:Ljava/security/cert/CertPath;
    if-eqz p3, :cond_6

    .line 258
    const/4 v6, 0x1

    .line 260
    .local v6, chainIsNotPinned:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->pinManager:Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertPinManager;->chainIsNotPinned(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/PinManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 264
    if-eqz v6, :cond_6

    .line 265
    new-instance v17, Ljava/security/cert/CertificateException;

    new-instance v18, Ljava/security/cert/CertPathValidatorException;

    const-string v19, "Certificate path is not properly pinned."

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 244
    .end local v5           #certPath:Ljava/security/cert/CertPath;
    .end local v6           #chainIsNotPinned:Z
    :cond_5
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 245
    .local v12, next:Ljava/security/cert/X509Certificate;
    if-eq v12, v10, :cond_4

    .line 246
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    move-object v10, v12

    .line 252
    goto :goto_1

    .line 261
    .end local v12           #next:Ljava/security/cert/X509Certificate;
    .restart local v5       #certPath:Ljava/security/cert/CertPath;
    .restart local v6       #chainIsNotPinned:Z
    :catch_0
    move-exception v7

    .line 262
    .local v7, e:Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 270
    .end local v6           #chainIsNotPinned:Z
    .end local v7           #e:Lorg/apache/harmony/xnet/provider/jsse/PinManagerException;
    :cond_6
    array-length v0, v11

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 299
    :cond_7
    return-object v16

    .line 275
    :cond_8
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 276
    new-instance v17, Ljava/security/cert/CertificateException;

    new-instance v18, Ljava/security/cert/CertPathValidatorException;

    const-string v19, "Trust anchor for certification path not found."

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 281
    :cond_9
    :try_start_1
    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v15}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 282
    .local v13, params:Ljava/security/cert/PKIXParameters;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 290
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    move-object/from16 v17, v0

    aget-object v18, v11, v8

    invoke-virtual/range {v17 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 290
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 293
    .end local v8           #i:I
    .end local v13           #params:Ljava/security/cert/PKIXParameters;
    :catch_1
    move-exception v7

    .line 294
    .local v7, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 295
    .end local v7           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v7

    .line 296
    .local v7, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method private cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;
    .locals 11
    .parameter "chain"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v6, p1

    .line 320
    .local v6, original:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, currIndex:I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_2

    .line 326
    const/4 v3, 0x0

    .line 327
    .local v3, foundNext:Z
    add-int/lit8 v5, v2, 0x1

    .local v5, nextIndex:I
    :goto_1
    array-length v9, p1

    if-ge v5, v9, :cond_1

    .line 328
    aget-object v9, p1, v2

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    aget-object v10, p1, v5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    const/4 v3, 0x1

    .line 331
    add-int/lit8 v9, v2, 0x1

    if-eq v5, v9, :cond_1

    .line 333
    if-ne p1, v6, :cond_0

    .line 334
    invoke-virtual {v6}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 336
    .restart local p1
    :cond_0
    aget-object v7, p1, v5

    .line 337
    .local v7, tempCertificate:Ljava/security/cert/X509Certificate;
    add-int/lit8 v9, v2, 0x1

    aget-object v9, p1, v9

    aput-object v9, p1, v5

    .line 338
    add-int/lit8 v9, v2, 0x1

    aput-object v7, p1, v9

    .line 347
    .end local v7           #tempCertificate:Ljava/security/cert/X509Certificate;
    :cond_1
    if-nez v3, :cond_6

    .line 354
    .end local v3           #foundNext:Z
    .end local v5           #nextIndex:I
    :cond_2
    const/4 v0, 0x0

    .local v0, anchorIndex:I
    :goto_2
    array-length v9, p1

    if-ge v0, v9, :cond_3

    .line 357
    aget-object v9, p1, v0

    invoke-direct {p0, v9}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v8

    .line 358
    .local v8, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_7

    .line 359
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v8           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_3
    move v1, v0

    .line 366
    .local v1, chainLength:I
    array-length v9, p1

    if-ne v1, v9, :cond_8

    move-object v4, p1

    .line 371
    .local v4, newChain:[Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 372
    add-int/lit8 v9, v0, -0x1

    aget-object v9, v4, v9

    invoke-direct {p0, v9}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v8

    .line 373
    .restart local v8       #trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_4

    .line 374
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v8           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_4
    return-object v4

    .line 327
    .end local v0           #anchorIndex:I
    .end local v1           #chainLength:I
    .end local v4           #newChain:[Ljava/security/cert/X509Certificate;
    .restart local v3       #foundNext:Z
    .restart local v5       #nextIndex:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v3           #foundNext:Z
    .end local v5           #nextIndex:I
    .restart local v0       #anchorIndex:I
    .restart local v8       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 366
    .end local v8           #trustAnchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #chainLength:I
    :cond_8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/security/cert/X509Certificate;

    move-object v4, v9

    goto :goto_3
.end method

.method private findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .parameter "lastCert"

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 407
    .local v1, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    .line 420
    .end local v1           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :goto_0
    return-object v1

    .line 410
    .restart local v1       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 411
    goto :goto_0

    .line 416
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 417
    .local v0, issuer:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 418
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 420
    goto :goto_0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 3
    .parameter "cert"

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 387
    .local v0, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v0, :cond_0

    .line 402
    .end local v0           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :goto_0
    return-object v0

    .line 390
    .restart local v0       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 392
    goto :goto_0

    .line 397
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTrustAnchor(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 402
    goto :goto_0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 7
    .parameter "certs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 174
    .local v4, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 175
    .local v1, cert:Ljava/security/cert/X509Certificate;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 183
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 188
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->reset()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    goto :goto_0
.end method
