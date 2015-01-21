.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 44
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 6
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, anchors:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 130
    .local v3, certPublicKey:Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 133
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 134
    .local v1, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 139
    .local v2, caPublicKey:Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :goto_2
    return-object v0

    .line 137
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #caCert:Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2       #caPublicKey:Ljava/security/PublicKey;
    goto :goto_1

    .line 146
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 142
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private index(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 48
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_0

    .line 50
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .parameter "cert"

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 92
    .local v4, issuer:Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v7

    .line 93
    :try_start_0
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    .local v1, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_0

    .line 95
    monitor-exit v7

    move-object v0, v6

    .line 113
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 102
    .local v2, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 107
    .local v5, publicKey:Ljava/security/PublicKey;
    :goto_2
    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 112
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2           #caCert:Ljava/security/cert/X509Certificate;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #publicKey:Ljava/security/PublicKey;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 105
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local v2       #caCert:Ljava/security/cert/X509Certificate;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .restart local v5       #publicKey:Ljava/security/PublicKey;
    goto :goto_2

    .line 112
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v2           #caCert:Ljava/security/cert/X509Certificate;
    .end local v5           #publicKey:Ljava/security/PublicKey;
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    .line 113
    goto :goto_0

    .line 109
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .parameter "cert"

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 118
    .local v1, subject:Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    .line 121
    const/4 v2, 0x0

    monitor-exit v3

    .line 123
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 124
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2
    .parameter "cert"

    .prologue
    .line 53
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 54
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 55
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 5
    .parameter "anchor"

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 61
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 67
    .local v2, subject:Ljavax/security/auth/x500/X500Principal;
    :goto_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v4

    .line 68
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .restart local v0       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    return-void

    .line 64
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2       #subject:Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->reset()V

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
