.class public Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 75
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 77
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 103
    :goto_1
    return-void

    .line 89
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 90
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 101
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 2
    .parameter "sid"
    .parameter "digAlgorithm"
    .parameter "authenticatedAttributes"
    .parameter "digEncryptionAlgorithm"
    .parameter "encryptedDigest"
    .parameter "unauthenticatedAttributes"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 62
    :goto_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 63
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 65
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 67
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 68
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    .line 39
    .end local p0
    :goto_0
    return-object p0

    .line 37
    .restart local p0
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 42
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 164
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
