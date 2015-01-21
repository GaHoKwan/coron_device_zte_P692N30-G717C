.class public Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignerIdentifier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 21
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 3
    .parameter "o"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 61
    .end local p0
    :goto_0
    return-object p0

    .line 49
    .restart local p0
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    .restart local p0
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    .restart local p0
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_4

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    move-object p0, v0

    goto :goto_0

    .line 64
    .restart local p0
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

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
.method public getId()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
