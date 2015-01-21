.class public Lcom/itextpdf/text/html/simpleparser/CellWrapper;
.super Ljava/lang/Object;
.source "CellWrapper.java"

# interfaces
.implements Lcom/itextpdf/text/TextElementArray;


# instance fields
.field private final cell:Lcom/itextpdf/text/pdf/PdfPCell;

.field private percentage:Z

.field private width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V
    .locals 3
    .parameter "tag"
    .parameter "chain"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->createPdfPCell(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 88
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->percentage:Z

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->width:F

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->addElement(Lcom/itextpdf/text/Element;)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public createPdfPCell(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 5
    .parameter "tag"
    .parameter "chain"

    .prologue
    const/4 v4, 0x1

    .line 106
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x0

    check-cast v3, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 108
    .local v1, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    const-string v3, "colspan"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setColspan(I)V

    .line 112
    :cond_0
    const-string v3, "rowspan"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setRowspan(I)V

    .line 116
    :cond_1
    const-string v3, "th"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    .line 118
    :cond_2
    const-string v3, "align"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    invoke-static {v2}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    .line 123
    :cond_3
    const-string v3, "valign"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setVerticalAlignment(I)V

    .line 125
    if-eqz v2, :cond_4

    .line 126
    invoke-static {v2}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setVerticalAlignment(I)V

    .line 129
    :cond_4
    const-string v3, "border"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, border:F
    if-eqz v2, :cond_5

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 133
    :cond_5
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderWidth(F)V

    .line 135
    const-string v3, "cellpadding"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 138
    :cond_6
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setUseDescender(Z)V

    .line 140
    const-string v3, "bgcolor"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/itextpdf/text/html/HtmlUtilities;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 142
    return-object v1
.end method

.method public getCell()Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->width:F

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isPercentage()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->percentage:Z

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method
