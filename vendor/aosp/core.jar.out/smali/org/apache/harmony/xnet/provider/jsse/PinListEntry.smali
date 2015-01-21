.class public Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;
.super Ljava/lang/Object;
.source "PinListEntry.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final cn:Ljava/lang/String;

.field private final enforcing:Z

.field private final pinnedFingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)V
    .locals 3
    .parameter "entry"
    .parameter "store"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entry == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 68
    const-string v1, "[=,|]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, values:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 71
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;

    const-string v2, "Received malformed pin entry"

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->cn:Ljava/lang/String;

    .line 75
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->enforcementValueFromString(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->enforcing:Z

    .line 77
    const/4 v1, 0x2

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->addPins([Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private addPins([Ljava/lang/String;)V
    .locals 5
    .parameter "pins"

    .prologue
    .line 120
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 121
    .local v3, pin:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->validatePin(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v3           #pin:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    invoke-static {v4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private chainContainsUserCert(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, chain:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 144
    .local v0, cert:Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->certStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static enforcementValueFromString(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;

    const-string v1, "Enforcement status is not a valid value"

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/PinEntryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .parameter "cert"

    .prologue
    .line 110
    :try_start_0
    const-string v4, "SHA512"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 111
    .local v0, dgst:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 112
    .local v2, encoded:[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 113
    .local v3, fingerprint:[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 114
    .end local v0           #dgst:Ljava/security/MessageDigest;
    .end local v2           #encoded:[B
    .end local v3           #fingerprint:[B
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private logPinFailure(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, chain:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->cn:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->chainContainsUserCert(Ljava/util/List;)Z

    move-result v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->enforcing:Z

    invoke-static {v0, v1, v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/PinFailureLogger;->log(Ljava/lang/String;ZZLjava/util/List;)V

    .line 153
    return-void
.end method

.method private static validatePin(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pin is not a valid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pin is not a valid hex string"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public chainIsNotPinned(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, chain:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 99
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, fingerprint:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 105
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #fingerprint:Ljava/lang/String;
    :goto_0
    return v3

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->logPinFailure(Ljava/util/List;)V

    .line 105
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->enforcing:Z

    goto :goto_0
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->cn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnforcing()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/PinListEntry;->enforcing:Z

    return v0
.end method
