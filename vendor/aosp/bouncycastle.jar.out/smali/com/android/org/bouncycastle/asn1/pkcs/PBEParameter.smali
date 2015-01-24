.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBEParameter.java"


# instance fields
.field iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 37
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "salt"
    .parameter "iterations"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt length must be 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
    .locals 2
    .parameter "obj"

    .prologue
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .line 46
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method