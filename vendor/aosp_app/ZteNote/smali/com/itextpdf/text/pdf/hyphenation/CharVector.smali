.class public Lcom/itextpdf/text/pdf/hyphenation/CharVector;
.super Ljava/lang/Object;
.source "CharVector.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = -0x43aa356f33c7e518L


# instance fields
.field private array:[C

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;-><init>(I)V

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
    iput p1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    .line 56
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 58
    return-void

    .line 54
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    goto :goto_0
.end method

.method public constructor <init>([C)V
    .locals 1
    .parameter "a"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    .line 62
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    .line 63
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 64
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .parameter "a"
    .parameter "capacity"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-lez p2, :cond_0

    .line 68
    iput p2, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    .line 73
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 74
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    goto :goto_0
.end method


# virtual methods
.method public alloc(I)I
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 116
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 117
    .local v1, index:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    array-length v2, v3

    .line 118
    .local v2, len:I
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    add-int/2addr v3, p1

    if-lt v3, v2, :cond_0

    .line 119
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v0, v3, [C

    .line 120
    .local v0, aux:[C
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    .line 123
    .end local v0           #aux:[C
    :cond_0
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 124
    return v1
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 81
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    check-cast v1, [C

    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->blockSize:I

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;-><init>([CI)V

    .line 85
    .local v0, cv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    iput v1, v0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    .line 86
    return-object v0
.end method

.method public get(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getArray()[C
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    return v0
.end method

.method public put(IC)V
    .locals 1
    .parameter "index"
    .parameter "val"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    aput-char p2, v0, p1

    .line 109
    return-void
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 129
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    new-array v0, v1, [C

    .line 130
    .local v0, aux:[C
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->array:[C

    .line 133
    .end local v0           #aux:[C
    :cond_0
    return-void
.end method
