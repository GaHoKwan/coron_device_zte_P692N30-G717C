.class public Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private isBer:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .parameter "contentType"
    .parameter "content"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 45
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 37
    .end local p0
    :goto_0
    return-object p0

    .line 32
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    if-eqz v1, :cond_1

    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 99
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0
.end method