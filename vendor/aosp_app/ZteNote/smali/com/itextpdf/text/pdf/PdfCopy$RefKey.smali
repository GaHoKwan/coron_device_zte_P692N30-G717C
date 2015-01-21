.class public Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
.super Ljava/lang/Object;
.source "PdfCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RefKey"
.end annotation


# instance fields
.field gen:I

.field num:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "num"
    .parameter "gen"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    .line 99
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    .line 107
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getGeneration()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    .line 117
    .local v0, other:Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->num:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;->gen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
