.class public Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfCollectionItem.java"


# instance fields
.field schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;)V
    .locals 1
    .parameter "schema"

    .prologue
    .line 65
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->COLLECTIONITEM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    .line 67
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "d"

    .prologue
    .line 144
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfNumber;)V

    .line 145
    return-void
.end method

.method public addItem(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "f"

    .prologue
    .line 136
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfNumber;)V

    .line 137
    return-void
.end method

.method public addItem(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "i"

    .prologue
    .line 128
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfNumber;)V

    .line 129
    return-void
.end method

.method public addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDate;)V
    .locals 4
    .parameter "key"
    .parameter "d"

    .prologue
    .line 96
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, fieldname:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;

    .line 98
    .local v0, field:Lcom/itextpdf/text/pdf/collection/PdfCollectionField;
    iget v2, v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;->fieldType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 99
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 101
    :cond_0
    return-void
.end method

.method public addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfNumber;)V
    .locals 4
    .parameter "key"
    .parameter "n"

    .prologue
    .line 108
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, fieldname:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;

    .line 110
    .local v0, field:Lcom/itextpdf/text/pdf/collection/PdfCollectionField;
    iget v2, v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;->fieldType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 111
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 113
    :cond_0
    return-void
.end method

.method public addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 84
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, fieldname:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;

    .line 86
    .local v0, field:Lcom/itextpdf/text/pdf/collection/PdfCollectionField;
    iget v2, v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;->fieldType:I

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 89
    :cond_0
    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 74
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, fieldname:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;

    .line 76
    .local v0, field:Lcom/itextpdf/text/pdf/collection/PdfCollectionField;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionField;->getValue(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .parameter "key"
    .parameter "c"

    .prologue
    .line 120
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->addItem(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDate;)V

    .line 121
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "prefix"

    .prologue
    .line 153
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, fieldname:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 155
    .local v2, o:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v2, :cond_0

    .line 156
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you.must.set.a.value.before.adding.a.prefix"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLLECTIONSUBITEM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 158
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 159
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 161
    return-void
.end method
