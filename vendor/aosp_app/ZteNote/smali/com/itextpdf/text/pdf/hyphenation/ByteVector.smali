.class public Lcom/itextpdf/text/pdf/hyphenation/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = -0xf36d81ea11e485fL


# instance fields
.field private array:[B

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-lez p1, :cond_0

    .line 52
    iput p1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    .line 56
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    .line 58
    return-void

    .line 54
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "a"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    .line 62
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    .line 64
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "a"
    .parameter "capacity"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-lez p2, :cond_0

    .line 68
    iput p2, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    .line 74
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    goto :goto_0
.end method


# virtual methods
.method public alloc(I)I
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 106
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    .line 107
    .local v1, index:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    array-length v2, v3

    .line 108
    .local v2, len:I
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    add-int/2addr v3, p1

    if-lt v3, v2, :cond_0

    .line 109
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v0, v3, [B

    .line 110
    .local v0, aux:[B
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    .line 113
    .end local v0           #aux:[B
    :cond_0
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    .line 114
    return v1
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    array-length v0, v0

    return v0
.end method

.method public get(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    return v0
.end method

.method public put(IB)V
    .locals 1
    .parameter "index"
    .parameter "val"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    aput-byte p2, v0, p1

    .line 96
    return-void
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 119
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    new-array v0, v1, [B

    .line 120
    .local v0, aux:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->array:[B

    .line 123
    .end local v0           #aux:[B
    :cond_0
    return-void
.end method
