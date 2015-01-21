.class public Lcom/itextpdf/text/pdf/PdfArray;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/text/pdf/PdfObject;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/itextpdf/text/pdf/PdfObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 147
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 89
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, l:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    .line 137
    .local v0, element:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 138
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 104
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add([F)Z

    .line 107
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 119
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add([I)Z

    .line 122
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "index"
    .parameter "element"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method public add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public add([F)Z
    .locals 4
    .parameter "values"

    .prologue
    .line 284
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public add([I)Z
    .locals 4
    .parameter "values"

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 332
    return-void
.end method

.method public contains(Lcom/itextpdf/text/pdf/PdfObject;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAsArray(I)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 3
    .parameter "idx"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 423
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 424
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 425
    :cond_0
    return-object v0
.end method

.method public getAsBoolean(I)Lcom/itextpdf/text/pdf/PdfBoolean;
    .locals 3
    .parameter "idx"

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, bool:Lcom/itextpdf/text/pdf/PdfBoolean;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 528
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 529
    check-cast v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    .line 530
    :cond_0
    return-object v0
.end method

.method public getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 3
    .parameter "idx"

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 402
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 403
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 404
    :cond_0
    return-object v0
.end method

.method public getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "idx"

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 547
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 548
    check-cast v1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 549
    :cond_0
    return-object v1
.end method

.method public getAsName(I)Lcom/itextpdf/text/pdf/PdfName;
    .locals 3
    .parameter "idx"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 507
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 508
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 509
    :cond_0
    return-object v0
.end method

.method public getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;
    .locals 3
    .parameter "idx"

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, number:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 486
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 487
    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 488
    :cond_0
    return-object v0
.end method

.method public getAsStream(I)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 3
    .parameter "idx"

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 444
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 445
    check-cast v1, Lcom/itextpdf/text/pdf/PdfStream;

    .line 446
    :cond_0
    return-object v1
.end method

.method public getAsString(I)Lcom/itextpdf/text/pdf/PdfString;
    .locals 3
    .parameter "idx"

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, string:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 465
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 466
    check-cast v1, Lcom/itextpdf/text/pdf/PdfString;

    .line 467
    :cond_0
    return-object v1
.end method

.method public getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method public set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"
    .parameter "obj"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v3, 0x5b

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 164
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v2, 0x0

    .line 167
    .local v2, type:I
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 169
    .local v1, object:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    .line 171
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 173
    .end local v1           #object:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 175
    .restart local v1       #object:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_2

    .line 176
    sget-object v1, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    .line 177
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    .line 178
    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 179
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 180
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 182
    .end local v1           #object:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
