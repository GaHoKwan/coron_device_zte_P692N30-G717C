.class public Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .parameter "_version"
    .parameter "_digestAlgorithms"
    .parameter "_contentInfo"
    .parameter "_certificates"
    .parameter "_crls"
    .parameter "_signerInfos"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 52
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 53
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 54
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 55
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 56
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 64
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 76
    .local v1, o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 78
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 80
    .local v2, tagged:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :pswitch_0
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 94
    .end local v2           #tagged:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_0
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local v1           #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 97
    :cond_1
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .locals 2
    .parameter "o"

    .prologue
    .line 31
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    .line 40
    .end local p0
    :goto_0
    return-object p0

    .line 35
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getContentInfo()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSignerInfos()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 148
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
