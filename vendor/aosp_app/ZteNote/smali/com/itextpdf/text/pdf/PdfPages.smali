.class public Lcom/itextpdf/text/pdf/PdfPages;
.super Ljava/lang/Object;
.source "PdfPages.java"


# instance fields
.field private leafSize:I

.field private pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private parents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private topParent:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    .line 80
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 81
    return-void
.end method


# virtual methods
.method addPage(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "page"

    .prologue
    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 88
    .local v2, parent:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 89
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    .line 90
    .local v0, current:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 91
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 93
    .end local v0           #current:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v2           #parent:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method addPageRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "pageRef"

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method getTopParent()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->topParent:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method reorderPages([I)I
    .locals 11
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 181
    if-nez p1, :cond_1

    .line 182
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 201
    :cond_0
    return v2

    .line 183
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_2

    .line 184
    new-instance v5, Lcom/itextpdf/text/DocumentException;

    const-string v6, "page.reordering.requires.a.single.parent.in.the.page.tree.call.pdfwriter.setlinearmode.after.open"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_2
    array-length v5, p1

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 186
    new-instance v5, Lcom/itextpdf/text/DocumentException;

    const-string v6, "page.reordering.requires.an.array.with.the.same.size.as.the.number.of.pages"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, max:I
    new-array v4, v2, [Z

    .line 189
    .local v4, temp:[Z
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 190
    aget v3, p1, v1

    .line 191
    .local v3, p:I
    if-lt v3, v9, :cond_4

    if-le v3, v2, :cond_5

    .line 192
    :cond_4
    new-instance v5, Lcom/itextpdf/text/DocumentException;

    const-string v6, "page.reordering.requires.pages.between.1.and.1.found.2"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    :cond_5
    add-int/lit8 v5, v3, -0x1

    aget-boolean v5, v4, v5

    if-eqz v5, :cond_6

    .line 194
    new-instance v5, Lcom/itextpdf/text/DocumentException;

    const-string v6, "page.reordering.requires.no.page.repetition.page.1.is.repeated"

    invoke-static {v6, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_6
    add-int/lit8 v5, v3, -0x1

    aput-boolean v9, v4, v5

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v3           #p:I
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 198
    .local v0, copy:[Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 199
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    aget v6, p1, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method setLinearMode(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 3
    .parameter "topParent"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "linear.page.mode.can.only.be.called.with.a.single.parent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPages;->topParent:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    const v0, 0x989680

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    .line 174
    return-void
.end method

.method writePageTree()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 113
    new-instance v12, Ljava/io/IOException;

    const-string v13, "the.document.has.no.pages"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 114
    :cond_0
    const/4 v3, 0x1

    .line 115
    .local v3, leaf:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfPages;->parents:Ljava/util/ArrayList;

    .line 116
    .local v9, tParents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    .line 117
    .local v8, tPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v4, nextParents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    :goto_0
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    mul-int/2addr v3, v12

    .line 120
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    .line 121
    .local v7, stdCount:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    rem-int v6, v12, v13

    .line 122
    .local v6, rightCount:I
    if-nez v6, :cond_1

    .line 123
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    .line 124
    :cond_1
    const/4 v5, 0x0

    .local v5, p:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 126
    move v10, v3

    .line 127
    .local v10, thisLeaf:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v5, v12, :cond_4

    .line 128
    move v0, v6

    .line 129
    .local v0, count:I
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->pages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    rem-int v10, v12, v3

    .line 130
    if-nez v10, :cond_2

    .line 131
    move v10, v3

    .line 135
    :cond_2
    :goto_2
    new-instance v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 136
    .local v11, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v13, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 137
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 138
    .local v2, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, internal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    mul-int v12, v5, v7

    mul-int v13, v5, v7

    add-int/2addr v13, v0

    invoke-virtual {v8, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 141
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 142
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    rem-int v12, v5, v12

    if-nez v12, :cond_3

    .line 143
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->leafSize:I

    div-int v12, v5, v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v11, v13, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 149
    :goto_3
    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfPages;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v13, v11, v12}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .end local v0           #count:I
    .end local v1           #internal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v2           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_4
    move v0, v7

    .restart local v0       #count:I
    goto :goto_2

    .line 147
    .restart local v1       #internal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v2       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v11       #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ITXT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/text/Document;->getRelease()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 151
    .end local v0           #count:I
    .end local v1           #internal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v2           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #thisLeaf:I
    .end local v11           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 152
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->topParent:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 153
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPages;->topParent:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v12

    .line 155
    :cond_7
    move-object v8, v9

    .line 156
    move-object v9, v4

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #nextParents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .restart local v4       #nextParents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    goto/16 :goto_0
.end method
