.class public Lcom/itextpdf/text/pdf/collection/PdfCollection;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfCollection.java"


# static fields
.field public static final CUSTOM:I = 0x3

.field public static final DETAILS:I = 0x0

.field public static final HIDDEN:I = 0x2

.field public static final TILE:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 69
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->COLLECTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    :goto_0
    return-void

    .line 72
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getSchema()Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SCHEMA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;

    return-object v0
.end method

.method public setInitialDocument(Ljava/lang/String;)V
    .locals 3
    .parameter "description"

    .prologue
    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    return-void
.end method

.method public setSchema(Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;)V
    .locals 1
    .parameter "schema"

    .prologue
    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SCHEMA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    return-void
.end method

.method public setSort(Lcom/itextpdf/text/pdf/collection/PdfCollectionSort;)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 115
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    return-void
.end method
