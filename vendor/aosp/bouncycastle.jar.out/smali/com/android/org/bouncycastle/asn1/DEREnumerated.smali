.class public Lcom/android/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DEREnumerated.java"


# static fields
.field private static cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 62
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 69
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 75
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .parameter "enc"

    .prologue
    .line 121
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ENUMERATED has zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 132
    .local v1, value:I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_0

    .line 137
    :cond_3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    aget-object v0, v2, v1

    .line 139
    .local v0, possibleMatch:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v0, :cond_0

    .line 141
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .end local v0           #possibleMatch:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v0, v2, v1

    .restart local v0       #possibleMatch:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 3
    .parameter "obj"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .line 28
    .end local p0
    :goto_0
    return-object p0

    .line 26
    .restart local p0
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0

    .line 31
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    .locals 2
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 49
    .local v0, o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    .line 55
    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    return-object v1

    .restart local v0       #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 102
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .line 109
    .local v0, other:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 97
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
