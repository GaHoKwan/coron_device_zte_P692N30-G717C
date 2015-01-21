.class public Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

.field pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pathLenConstraint"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 109
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .parameter "seq"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 20
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 54
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 67
    :goto_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 64
    :cond_2
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 65
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "cA"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 20
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 84
    if-eqz p1, :cond_0

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 94
    :goto_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 95
    return-void

    .line 92
    :cond_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 45
    .end local p0
    :goto_0
    return-object p0

    .line 36
    .restart local p0
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .end local p0
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    goto :goto_0

    .line 40
    .restart local p0
    :cond_1
    if-eqz p0, :cond_2

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCA()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 139
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "BasicConstraints: isCa(false)"

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
