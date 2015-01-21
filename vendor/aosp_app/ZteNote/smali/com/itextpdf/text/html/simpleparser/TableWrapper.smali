.class public Lcom/itextpdf/text/html/simpleparser/TableWrapper;
.super Ljava/lang/Object;
.source "TableWrapper.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# instance fields
.field private colWidths:[F

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->styles:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->rows:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->styles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addRow(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, row:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    if-eqz p1, :cond_0

    .line 97
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 p1, 0x0

    .line 101
    :cond_0
    return-void
.end method

.method public createTable()Lcom/itextpdf/text/pdf/PdfPTable;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 118
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    new-instance v7, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v7, v12}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 158
    :cond_0
    return-object v7

    .line 121
    :cond_1
    const/4 v5, 0x0

    .line 122
    .local v5, ncol:I
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->rows:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfPCell;

    .line 123
    .local v6, pc:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_0

    .line 125
    .end local v6           #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_2
    new-instance v7, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v7, v5}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 127
    .local v7, table:Lcom/itextpdf/text/pdf/PdfPTable;
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->styles:Ljava/util/Map;

    const-string v10, "width"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 128
    .local v8, width:Ljava/lang/String;
    if-nez v8, :cond_6

    .line 129
    const/high16 v9, 0x42c8

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 139
    :goto_1
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->styles:Ljava/util/Map;

    const-string v10, "align"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, alignment:Ljava/lang/String;
    const/4 v0, 0x0

    .line 141
    .local v0, align:I
    if-eqz v1, :cond_3

    .line 142
    invoke-static {v1}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v0

    .line 144
    :cond_3
    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    .line 147
    :try_start_0
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->colWidths:[F

    if-eqz v9, :cond_4

    .line 148
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->colWidths:[F

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 154
    .local v2, col:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfPCell;

    .line 155
    .restart local v6       #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v7, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    goto :goto_3

    .line 131
    .end local v0           #align:I
    .end local v1           #alignment:Ljava/lang/String;
    .end local v2           #col:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 132
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    goto :goto_1

    .line 134
    :cond_7
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 135
    invoke-virtual {v7, v12}, Lcom/itextpdf/text/pdf/PdfPTable;->setLockedWidth(Z)V

    goto :goto_1

    .line 149
    .restart local v0       #align:I
    .restart local v1       #alignment:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
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
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public setColWidths([F)V
    .locals 0
    .parameter "colWidths"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->colWidths:[F

    .line 109
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
