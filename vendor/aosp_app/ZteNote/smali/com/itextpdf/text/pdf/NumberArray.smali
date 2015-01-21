.class public Lcom/itextpdf/text/pdf/NumberArray;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "NumberArray.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/PdfNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfNumber;>;"
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 73
    .local v1, n:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 75
    .end local v1           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([F)V
    .locals 5
    .parameter "numbers"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 61
    move-object v0, p1

    .local v0, arr$:[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 62
    .local v1, f:F
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/NumberArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1           #f:F
    :cond_0
    return-void
.end method
