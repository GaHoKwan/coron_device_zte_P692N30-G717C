.class public Lcom/android/org/bouncycastle/asn1/cms/Attributes;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 17
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    .line 35
    .end local p0
    :goto_0
    return-object p0

    .line 30
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object p0, v0

    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
