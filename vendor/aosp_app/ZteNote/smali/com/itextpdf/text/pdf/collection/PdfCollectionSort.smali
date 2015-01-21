.class public Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfCollectionSort.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 60
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->COLLECTIONSORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 61
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 62
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .parameter "keys"

    .prologue
    .line 69
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLLECTIONSORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 71
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 72
    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 75
    return-void
.end method


# virtual methods
.method public setSortOrder(Z)V
    .locals 4
    .parameter "ascending"

    .prologue
    .line 82
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 83
    .local v0, o:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 89
    return-void

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you.have.to.define.a.boolean.array.for.this.collection.sort.dictionary"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSortOrder([Z)V
    .locals 6
    .parameter "ascending"

    .prologue
    const/4 v5, 0x0

    .line 96
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 97
    .local v2, o:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v3, v2, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v3, :cond_2

    .line 98
    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    array-length v4, p1

    if-eq v3, v4, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the.number.of.booleans.in.this.array.doesn.t.correspond.with.the.number.of.fields"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 102
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 103
    new-instance v3, Lcom/itextpdf/text/pdf/PdfBoolean;

    aget-boolean v4, p1, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    return-void

    .line 108
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #i:I
    .restart local v2       #o:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you.need.a.single.boolean.for.this.collection.sort.dictionary"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
