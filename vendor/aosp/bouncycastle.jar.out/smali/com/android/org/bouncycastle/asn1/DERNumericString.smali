.class public Lcom/android/org/bouncycastle/asn1/DERNumericString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERNumericString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "string"
    .parameter "validate"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 88
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    .line 94
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .parameter "string"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    .line 65
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERNumericString;
    .locals 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 48
    .local v0, o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERNumericString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERNumericString;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERNumericString;
    .locals 3
    .parameter "obj"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    .end local p0
    return-object p0

    .line 30
    .restart local p0
    :cond_1
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

.method public static isNumericString(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 159
    .local v0, ch:C
    const/16 v3, 0x7f

    if-le v0, v3, :cond_1

    .line 172
    .end local v0           #ch:C
    :cond_0
    :goto_1
    return v2

    .line 164
    .restart local v0       #ch:C
    :cond_1
    const/16 v3, 0x30

    if-gt v3, v0, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 155
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    .end local v0           #ch:C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 136
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 143
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    .line 143
    .local v0, s:Lcom/android/org/bouncycastle/asn1/DERNumericString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

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
    .line 125
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 126
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERNumericString;->string:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method