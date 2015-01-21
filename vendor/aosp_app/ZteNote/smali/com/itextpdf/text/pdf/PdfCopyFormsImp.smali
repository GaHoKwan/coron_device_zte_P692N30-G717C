.class Lcom/itextpdf/text/pdf/PdfCopyFormsImp;
.super Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;
.source "PdfCopyFormsImp.java"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;-><init>(Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method


# virtual methods
.method public copyDocumentFields(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isOpenedWithFullPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pdfreader.not.opened.with.owner.password"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    .end local p1
    .local v0, reader:Lcom/itextpdf/text/pdf/PdfReader;
    move-object p1, v0

    .line 86
    .end local v0           #reader:Lcom/itextpdf/text/pdf/PdfReader;
    .restart local p1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->shuffleSubsetNames()I

    .line 87
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->readers2intrefs:Ljava/util/HashMap;

    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->updateCalculationOrder(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 90
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isTampered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "the.document.was.reused"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations()V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfReader;->setTampered(Z)V

    goto :goto_0
.end method

.method mergeFields()V
    .locals 3

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 100
    .local v0, fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfCopyFormsImp;->mergeWithMaster(Ljava/util/Map;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0           #fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    :cond_0
    return-void
.end method
