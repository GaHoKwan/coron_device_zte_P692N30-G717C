.class public final Ljavax/net/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 11
    .parameter "certificate"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v8

    .line 96
    .local v8, subjectAltNames:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez v8, :cond_1

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 117
    .end local v6           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #subjectAltNames:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    :goto_0
    return-object v6

    .line 99
    .restart local v6       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #subjectAltNames:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 100
    .local v7, subjectAltName:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 101
    .local v4, entry:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 104
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 105
    .local v2, altNameType:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_2

    .line 109
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameType:Ljava/lang/Integer;
    .end local v4           #entry:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #subjectAltName:Ljava/lang/Object;
    .end local v8           #subjectAltNames:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .parameter "hostName"
    .parameter "certificate"

    .prologue
    .line 72
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, hasDns:Z
    const/4 v5, 0x2

    invoke-direct {p0, p2, v5}, Ljavax/net/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, altName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Ljavax/net/ssl/DefaultHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    const/4 v5, 0x1

    .line 89
    .end local v0           #altName:Ljava/lang/String;
    :goto_0
    return v5

    .line 81
    :cond_1
    if-nez v2, :cond_2

    .line 82
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 83
    .local v4, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v5, Ljavax/net/ssl/DistinguishedNameParser;

    invoke-direct {v5, v4}, Ljavax/net/ssl/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v6, "cn"

    invoke-virtual {v5, v6}, Ljavax/net/ssl/DistinguishedNameParser;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, cn:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0, p1, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 89
    .end local v1           #cn:Ljava/lang/String;
    .end local v4           #principal:Ljavax/security/auth/x500/X500Principal;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .parameter "ipAddress"
    .parameter "certificate"

    .prologue
    .line 60
    const/4 v2, 0x7

    invoke-direct {p0, p2, v2}, Ljavax/net/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, altName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 65
    .end local v0           #altName:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .parameter "host"
    .parameter "certificate"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4
    .parameter "host"
    .parameter "session"

    .prologue
    const/4 v3, 0x0

    .line 43
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 44
    .local v0, certificates:[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 46
    .end local v0           #certificates:[Ljava/security/cert/Certificate;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v1

    .local v1, e:Ljavax/net/ssl/SSLException;
    move v2, v3

    .line 46
    goto :goto_0
.end method

.method public verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "hostName"
    .parameter "cn"

    .prologue
    const/16 v8, 0x2e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 166
    :cond_1
    :goto_0
    return v4

    .line 133
    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 135
    const-string v6, "*"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 139
    :cond_3
    const-string v6, "*."

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p1, v5, p2, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 143
    :cond_4
    const/16 v6, 0x2a

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    .local v0, asterisk:I
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 145
    .local v1, dot:I
    if-le v0, v1, :cond_5

    move v4, v5

    .line 146
    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p1, v5, p2, v5, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 150
    goto :goto_0

    .line 153
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    sub-int v2, v6, v7

    .line 154
    .local v2, suffixLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v3, v6, v2

    .line 155
    .local v3, suffixStart:I
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ge v6, v3, :cond_7

    .line 157
    const-string v6, ".clients.google.com"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    .line 158
    goto :goto_0

    .line 162
    :cond_7
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v3, p2, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 163
    goto :goto_0
.end method
