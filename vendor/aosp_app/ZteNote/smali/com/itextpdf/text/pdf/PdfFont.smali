.class Lcom/itextpdf/text/pdf/PdfFont;
.super Ljava/lang/Object;
.source "PdfFont.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/PdfFont;",
        ">;"
    }
.end annotation


# instance fields
.field private font:Lcom/itextpdf/text/pdf/BaseFont;

.field protected hScale:F

.field protected image:Lcom/itextpdf/text/Image;

.field private size:F


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 1
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->hScale:F

    .line 81
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfFont;->size:F

    .line 82
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 83
    return-void
.end method

.method static getDefaultFont()Lcom/itextpdf/text/pdf/PdfFont;
    .locals 5

    .prologue
    .line 169
    :try_start_0
    const-string v2, "Helvetica"

    const-string v3, "Cp1252"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 170
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfFont;

    const/high16 v3, 0x4140

    invoke-direct {v2, v0, v3}, Lcom/itextpdf/text/pdf/PdfFont;-><init>(Lcom/itextpdf/text/pdf/BaseFont;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, ee:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/PdfFont;)I
    .locals 4
    .parameter "pdfFont"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-nez p1, :cond_2

    .line 98
    const/4 v1, -0x1

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eq v2, v3, :cond_3

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFont;->size()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 105
    const/4 v1, 0x2

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/itextpdf/text/pdf/PdfFont;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfFont;->compareTo(Lcom/itextpdf/text/pdf/PdfFont;)I

    move-result v0

    return v0
.end method

.method getFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method getHorizontalScaling()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->hScale:F

    return v0
.end method

.method setHorizontalScaling(F)V
    .locals 0
    .parameter "hScale"

    .prologue
    .line 177
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfFont;->hScale:F

    .line 178
    return-void
.end method

.method setImage(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    .line 165
    return-void
.end method

.method size()F
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    if-nez v0, :cond_0

    .line 122
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->size:F

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v0}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v0

    goto :goto_0
.end method

.method width()F
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v0

    return v0
.end method

.method width(I)F
    .locals 2
    .parameter "character"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfFont;->size:F

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfFont;->hScale:F

    mul-float/2addr v0, v1

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v0}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v0

    goto :goto_0
.end method

.method width(Ljava/lang/String;)F
    .locals 2
    .parameter "s"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfFont;->size:F

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfFont;->hScale:F

    mul-float/2addr v0, v1

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFont;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v0}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v0

    goto :goto_0
.end method
