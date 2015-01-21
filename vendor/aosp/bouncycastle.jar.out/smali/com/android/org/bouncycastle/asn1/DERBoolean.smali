.class public Lcom/android/org/bouncycastle/asn1/DERBoolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    .line 11
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    :goto_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    .line 117
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    goto :goto_0
.end method

.method protected constructor <init>([B)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 92
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    aget-byte v0, p1, v2

    if-nez v0, :cond_1

    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_1
    aget-byte v0, p1, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    goto :goto_0
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 165
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 180
    :goto_0
    return-object v0

    .line 174
    :cond_1
    aget-byte v0, p0, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 176
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 180
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 3
    .parameter "obj"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .end local p0
    move-object v0, p0

    .line 36
    :goto_0
    return-object v0

    .line 34
    .restart local p0
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 39
    .restart local p0
    :cond_3
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

.method public static getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 2
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 77
    .local v0, o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    .line 83
    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    return-object v1

    .restart local v0       #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 1
    .parameter "octets"

    .prologue
    .line 58
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_1

    .line 149
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p1
    iget-object v2, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

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
    .line 138
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 139
    return-void
.end method

.method encodedLength()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
