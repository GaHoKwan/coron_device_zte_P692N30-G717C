.class Lcom/itextpdf/text/pdf/PdfStamperImp;
.super Lcom/itextpdf/text/pdf/PdfWriter;
.source "PdfStamperImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    }
.end annotation


# instance fields
.field protected acroFields:Lcom/itextpdf/text/pdf/AcroFields;

.field protected append:Z

.field closed:Z

.field protected fieldTemplates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldsAdded:Z

.field file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected flat:Z

.field protected flatFreeText:Z

.field protected initialXrefSize:I

.field protected marked:Lcom/itextpdf/text/pdf/IntHashtable;

.field myXref:Lcom/itextpdf/text/pdf/IntHashtable;

.field protected namePtr:[I

.field protected openAction:Lcom/itextpdf/text/pdf/PdfAction;

.field pagesToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;",
            ">;"
        }
    .end annotation
.end field

.field protected partialFlattening:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field readers2file:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;",
            ">;"
        }
    .end annotation
.end field

.field readers2intrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field private rotateContents:Z

.field protected sigFlags:I

.field protected useVp:Z

.field protected viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V
    .locals 6
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    invoke-direct {p0, v2, p2}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    .line 76
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    .line 79
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    .line 81
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    .line 83
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    .line 84
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    .line 85
    new-array v2, v5, [I

    aput v4, v2, v4

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->namePtr:[I

    .line 86
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    .line 87
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 88
    new-instance v2, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    .line 90
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    .line 91
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    .line 108
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isOpenedWithFullPermissions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string v3, "pdfreader.not.opened.with.owner.password"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isTampered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string v3, "the.original.document.was.reused.read.it.again.from.file"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_1
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfReader;->setTampered(Z)V

    .line 113
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 115
    iput-boolean p4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    .line 116
    if-eqz p4, :cond_7

    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isRebuilt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string v3, "append.mode.requires.a.document.without.errors.even.if.recovery.was.possible"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    new-instance v2, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setAppendmode(Z)V

    .line 122
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 123
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 125
    .local v0, buf:[B
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([B)I

    move-result v1

    .local v1, n:I
    if-lez v1, :cond_4

    .line 126
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v2, v0, v4, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([BII)V

    goto :goto_0

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getLastXref()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:J

    .line 129
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfReader;->setAppendable(Z)V

    .line 137
    .end local v0           #buf:[B
    .end local v1           #n:I
    :goto_1
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->open()V

    .line 138
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v2, p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 139
    if-eqz p4, :cond_6

    .line 140
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->setRefnum(I)V

    .line 141
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isNewXrefType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    .line 144
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isHybridXref()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    .line 147
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    .line 148
    return-void

    .line 132
    :cond_7
    if-nez p3, :cond_8

    .line 133
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfVersion()C

    move-result v2

    invoke-super {p0, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    goto :goto_1

    .line 135
    :cond_8
    invoke-super {p0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    goto :goto_1
.end method

.method private addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V
    .locals 9
    .parameter "parent"
    .parameter "arr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            "Lcom/itextpdf/text/pdf/PdfArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, ocgmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    const/4 v8, 0x1

    .line 1644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1645
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1646
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1647
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1648
    .local v3, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    if-eqz v3, :cond_1

    .line 1649
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1650
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1651
    if-eqz p1, :cond_0

    .line 1652
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfLayer;->addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V

    .line 1654
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    if-le v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1655
    add-int/lit8 v1, v1, 0x1

    .line 1656
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, v3, v6, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    .line 1644
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1660
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v4

    .line 1661
    check-cast v5, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1662
    .local v5, sub:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1682
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #sub:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    return-void

    .line 1663
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #sub:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1664
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1665
    new-instance v3, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 1666
    .restart local v3       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1667
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1668
    if-eqz p1, :cond_5

    .line 1669
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfLayer;->addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V

    .line 1671
    :cond_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1672
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1673
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_2

    .line 1675
    :cond_6
    invoke-direct {p0, v3, v0, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    goto :goto_1

    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_7
    move-object v6, v4

    .line 1678
    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, p1, v6, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 9
    .parameter "reader"
    .parameter "obj"
    .parameter "hits"

    .prologue
    .line 556
    if-nez p1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 569
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 570
    .local v0, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 571
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 570
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :pswitch_2
    move-object v4, p1

    .line 560
    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 561
    .local v4, iref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    if-ne p0, v7, :cond_0

    .line 563
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 565
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 566
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_0

    .end local v4           #iref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :pswitch_3
    move-object v1, p1

    .line 576
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 577
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v6, v2

    .line 578
    check-cast v6, Lcom/itextpdf/text/pdf/PdfName;

    .line 579
    .local v6, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_2

    .line 558
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private flatFreeTextFields()V
    .locals 23

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1005
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "freetext.flattening.is.not.supported.in.append.mode"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1007
    :cond_0
    const/16 v18, 0x1

    .local v18, page:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_d

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1010
    .local v19, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 1011
    .local v5, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v5, :cond_2

    .line 1007
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1013
    :cond_2
    const/4 v13, 0x0

    .local v13, idx:I
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_a

    .line 1015
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1016
    .local v4, annoto:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v20

    if-nez v20, :cond_4

    .line 1013
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 1019
    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1020
    .local v2, annDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FREETEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1022
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v11

    .line 1023
    .local v11, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 1025
    .local v12, flags:I
    :goto_4
    and-int/lit8 v20, v12, 0x4

    if-eqz v20, :cond_3

    and-int/lit8 v20, v12, 0x2

    if-nez v20, :cond_3

    .line 1027
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1028
    .local v16, obj1:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_3

    .line 1030
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v7, v20

    .line 1032
    .end local v16           #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    .local v7, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_5
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 1033
    .local v15, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v6, 0x0

    .line 1034
    .local v6, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 1036
    .local v17, objReal:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1037
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v6, v15}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1063
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_5
    :goto_6
    if-eqz v6, :cond_3

    .line 1065
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v9

    .line 1066
    .local v9, box:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v10

    .line 1067
    .local v10, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    const-string v20, "Q "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v20

    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v6, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 1069
    const-string v20, "q "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1023
    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v7           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #box:Lcom/itextpdf/text/Rectangle;
    .end local v10           #cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v12           #flags:I
    .end local v17           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 1030
    .restart local v12       #flags:I
    .restart local v16       #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    check-cast v16, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v7, v16

    goto :goto_5

    .line 1038
    .end local v16           #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v7       #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v17       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfStream;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, v17

    .line 1040
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v22}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1041
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v6, v15}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    goto :goto_6

    .line 1045
    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1047
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v8

    .line 1048
    .local v8, as_p:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v8, :cond_5

    move-object/from16 v20, v17

    .line 1050
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1051
    .local v14, iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v14, :cond_5

    .line 1053
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-direct {v6, v14}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1054
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->isIndirect()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1056
    invoke-static {v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    move-object/from16 v20, v17

    .line 1057
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v22}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_6

    .line 1073
    .end local v2           #annDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v7           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #as_p:Lcom/itextpdf/text/pdf/PdfName;
    .end local v11           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v12           #flags:I
    .end local v14           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v17           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    .line 1075
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1076
    .local v3, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_b

    .line 1078
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->FREETEXT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1080
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1081
    add-int/lit8 v13, v13, -0x1

    .line 1073
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1085
    .end local v3           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_c
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1087
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1088
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto/16 :goto_1

    .line 1091
    .end local v5           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v13           #idx:I
    .end local v19           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_d
    return-void
.end method

.method private static moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V
    .locals 2
    .parameter "dic2"
    .parameter "r"
    .parameter "pageImported"
    .parameter "key"
    .parameter "name"

    .prologue
    .line 695
    invoke-virtual {p1, p2, p4}, Lcom/itextpdf/text/pdf/PdfReader;->getBoxSize(ILjava/lang/String;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 696
    .local v0, m:Lcom/itextpdf/text/Rectangle;
    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, p3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 3
    .parameter "outline"

    .prologue
    .line 1278
    :goto_0
    if-eqz p1, :cond_1

    .line 1279
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1280
    .local v1, outlineR:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1281
    .local v0, first:Lcom/itextpdf/text/pdf/PRIndirectReference;
    if-eqz v0, :cond_0

    .line 1282
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 1284
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1285
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1286
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1287
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1288
    .restart local p1
    goto :goto_0

    .line 1289
    .end local v0           #first:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v1           #outlineR:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 3
    .parameter "annot"

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported.in.this.context.use.pdfstamper.addannotation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V
    .locals 1
    .parameter "annot"
    .parameter "page"

    .prologue
    .line 1273
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setPage(I)V

    .line 1274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1275
    return-void
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 19
    .parameter "annot"
    .parameter "pageN"

    .prologue
    .line 1192
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    .local v2, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1194
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 1196
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v5, v0

    .line 1197
    .local v5, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1269
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_0
    return-void

    .line 1199
    .restart local v5       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    .line 1203
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :goto_0
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 1204
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-object/from16 p1, v0

    .line 1205
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getPlaceInPage()I

    move-result v12

    if-lez v12, :cond_2

    .line 1206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getPlaceInPage()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object p2

    .line 1207
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1209
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getTemplates()Ljava/util/HashSet;

    move-result-object v11

    .line 1210
    .local v11, templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    if-eqz v11, :cond_3

    .line 1211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1213
    .end local v11           #templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    :cond_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v5, v0

    .line 1214
    .restart local v5       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v12

    if-nez v12, :cond_4

    .line 1215
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1217
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isAnnotation()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1218
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 1219
    .local v8, pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v3, 0x0

    .line 1220
    .local v3, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1221
    :cond_5
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1222
    .restart local v3       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1227
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1228
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1229
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1230
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 1231
    .local v9, rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7

    .line 1232
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v10

    .line 1233
    .local v10, rotation:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    .line 1234
    .local v7, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v10, :sswitch_data_0

    .line 1260
    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #pageSize:Lcom/itextpdf/text/Rectangle;
    .end local v8           #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v9           #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .end local v10           #rotation:I
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1261
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setUsed()V

    .line 1262
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1203
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1202
    .end local v6           #k:I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1266
    .end local v2           #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    :catch_0
    move-exception v4

    .line 1267
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v12, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 1226
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    .restart local v3       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v6       #k:I
    .restart local v8       #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    :try_start_1
    move-object v0, v8

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v3, v0

    goto/16 :goto_2

    .line 1236
    .restart local v7       #pageSize:Lcom/itextpdf/text/Rectangle;
    .restart local v9       #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .restart local v10       #rotation:I
    :sswitch_0
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v17

    sub-float v16, v16, v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v17

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 1243
    :sswitch_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v17

    sub-float v16, v16, v17

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 1250
    :sswitch_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1234
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public addComments(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 22
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 649
    :cond_0
    return-void

    .line 592
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/FdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 593
    .local v8, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->FDF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 594
    if-eqz v8, :cond_0

    .line 596
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 597
    .local v5, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    if-eqz v20, :cond_0

    .line 599
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerReader(Lcom/itextpdf/text/pdf/PdfReader;Z)V

    .line 600
    new-instance v11, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 601
    .local v11, hits:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 602
    .local v13, irt:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v3, an:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v14, 0x0

    .local v14, k:I
    :goto_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 604
    invoke-virtual {v5, v14}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 605
    .local v17, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 606
    .local v4, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 607
    .local v18, page:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 603
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 609
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 610
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 612
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->NM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 613
    .local v16, nm:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 614
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 617
    .end local v4           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #nm:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v18           #page:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_4
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v7

    .line 618
    .local v7, arhits:[I
    const/4 v14, 0x0

    :goto_2
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 619
    aget v15, v7, v14

    .line 620
    .local v15, n:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/FdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 621
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v20, v17

    .line 622
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IRT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    .line 623
    .local v19, str:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 624
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    .line 625
    .local v12, i:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v12, :cond_5

    .line 626
    new-instance v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 627
    .local v10, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v17, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 628
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->IRT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 629
    move-object/from16 v17, v10

    .line 633
    .end local v10           #dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #i:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v19           #str:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 618
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 635
    .end local v15           #n:I
    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 636
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfObject;

    .line 637
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 638
    .restart local v4       #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 639
    .restart local v18       #page:Lcom/itextpdf/text/pdf/PdfNumber;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 640
    .local v9, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    .line 641
    .local v6, annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_7

    .line 642
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v6           #annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 643
    .restart local v6       #annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 646
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 647
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 635
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
.end method

.method addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 6
    .parameter "ref"

    .prologue
    .line 1113
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1114
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1115
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1117
    .restart local v0       #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1118
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1120
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1121
    .local v2, fields:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v2, :cond_1

    .line 1122
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #fields:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1123
    .restart local v2       #fields:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1124
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1126
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1127
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "/Helv 0 Tf 0 g "

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1128
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1130
    :cond_2
    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1131
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1132
    return-void
.end method

.method addFieldResources()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1138
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1139
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_2

    .line 1140
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1141
    .restart local v0       #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1142
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1144
    :cond_2
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1145
    .local v3, dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v3, :cond_3

    .line 1146
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v3           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1147
    .restart local v3       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1148
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1150
    :cond_3
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1151
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 1152
    .local v6, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v3, v7, p0}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    goto :goto_1

    .line 1155
    .end local v6           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_4
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1156
    .local v4, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v4, :cond_5

    .line 1157
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v4           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1158
    .restart local v4       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1160
    :cond_5
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1161
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1162
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1163
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1164
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1165
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1166
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1168
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1169
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1170
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ZAPFDINGBATS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1171
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1172
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1173
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1175
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_7
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1176
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfString;

    const-string v9, "/Helv 0 Tf 0 g "

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1177
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method addFileAttachments()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentFileAttachment()Ljava/util/HashMap;

    move-result-object v2

    .line 1323
    .local v2, fs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1325
    :cond_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1326
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1327
    .local v6, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_1

    .line 1328
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v6           #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1329
    .restart local v6       #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1330
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1332
    :cond_1
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1333
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v8

    .line 1334
    .local v8, old:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1335
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1336
    .local v5, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1337
    .local v4, k:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v7, nn:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1339
    add-int/lit8 v4, v4, 0x1

    .line 1340
    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1342
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1344
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v4           #k:I
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #nn:Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v8, p0}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1346
    .local v10, tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 1347
    .local v9, oldEmbeddedFiles:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v9, :cond_4

    .line 1348
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1352
    :cond_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 1395
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1396
    return-void
.end method

.method alterContents()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .local v3, element:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    move-object v7, v3

    .line 430
    check-cast v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 431
    .local v7, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v6, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 432
    .local v6, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 435
    .local v2, content:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v2, :cond_3

    .line 436
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 437
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 452
    :goto_1
    new-instance v5, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 453
    .local v5, out:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_0

    .line 454
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 455
    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/text/pdf/PdfStamperImp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 456
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 457
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 459
    :cond_0
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_1

    .line 460
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 461
    :cond_1
    new-instance v8, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 462
    .local v8, stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->compressionLevel:I

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 463
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 464
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 465
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_2

    .line 466
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 467
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 468
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    .line 469
    .local v1, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    const/4 v10, 0x0

    iget v11, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    invoke-virtual {v5, v9, v10, v11}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 470
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 471
    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/text/pdf/PdfStamperImp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 472
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    iget v10, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v11

    iget v12, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    sub-int/2addr v11, v12

    invoke-virtual {v5, v9, v10, v11}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 473
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 474
    new-instance v8, Lcom/itextpdf/text/pdf/PdfStream;

    .end local v8           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 475
    .restart local v8       #stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->compressionLevel:I

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 476
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 478
    .end local v1           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfStamperImp;->alterResources(Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    goto/16 :goto_0

    .line 439
    .end local v5           #out:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v8           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v0, v2

    .line 440
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 441
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 443
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 444
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 445
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 446
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 449
    :cond_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 450
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 480
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #content:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v3           #element:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    .end local v6           #pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    :cond_6
    return-void
.end method

.method alterResources(Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V
    .locals 3
    .parameter "ps"

    .prologue
    .line 483
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 484
    return-void
.end method

.method applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 5
    .parameter "pageN"
    .parameter "out"

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x20

    .line 402
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    if-nez v2, :cond_0

    .line 426
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 405
    .local v0, page:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v1

    .line 406
    .local v1, rotation:I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 408
    :sswitch_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE90:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 409
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 410
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 413
    :sswitch_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE180:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 414
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 415
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 416
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 417
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 420
    :sswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE270:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 421
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 422
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 423
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method close(Ljava/util/Map;)V
    .locals 54
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, moreInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    if-eqz v3, :cond_0

    .line 399
    :goto_0
    return-void

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    if-eqz v3, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFields()V

    .line 159
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    if-eqz v3, :cond_3

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeTextFields()V

    .line 161
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFieldResources()V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    .line 163
    .local v24, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v45

    check-cast v45, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 164
    .local v45, pages:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ITXT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/text/Document;->getRelease()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 166
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 167
    .local v19, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/XfaForm;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    if-nez v3, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/XfaForm;->setXfa(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 172
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    if-eqz v3, :cond_5

    .line 173
    if-eqz v19, :cond_5

    .line 174
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    invoke-direct {v4, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 179
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addSharedObjectsToBody()V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setOutlines()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setJavaScript()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFileAttachments()V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v3, :cond_6

    .line 185
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OPENACTION:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    if-eqz v3, :cond_7

    .line 188
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPageLabels;->getDictionary(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 190
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 191
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->fillOCProperties(Z)V

    .line 192
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v43

    .line 193
    .local v43, ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v43, :cond_e

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    invoke-virtual {v3, v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 210
    .end local v43           #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    :goto_1
    const/16 v48, -0x1

    .line 211
    .local v48, skipInfo:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v41

    .line 212
    .local v41, oInfo:Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v32, 0x0

    .line 213
    .local v32, iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    const/16 v44, 0x0

    .line 214
    .local v44, oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v3, :cond_9

    move-object/from16 v32, v41

    .line 215
    check-cast v32, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 216
    :cond_9
    if-eqz v32, :cond_10

    .line 217
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v44

    .end local v44           #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v44, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 220
    .restart local v44       #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    :goto_2
    const/16 v46, 0x0

    .line 221
    .local v46, producer:Ljava/lang/String;
    if-eqz v32, :cond_b

    .line 222
    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v48

    .line 223
    :cond_b
    if-eqz v44, :cond_c

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 224
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v46

    .line 225
    :cond_c
    if-nez v46, :cond_11

    .line 226
    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v46

    .line 234
    :cond_d
    :goto_3
    const/4 v6, 0x0

    .line 235
    .local v6, info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v40, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v40 .. v40}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 236
    .local v40, newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v44, :cond_12

    .line 237
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/PdfName;

    .local v28, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v37, v28

    .line 238
    check-cast v37, Lcom/itextpdf/text/pdf/PdfName;

    .line 239
    .local v37, key:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v49

    .line 240
    .local v49, value:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_4

    .line 197
    .end local v6           #info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v28           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v32           #iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v37           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v40           #newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v41           #oInfo:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v44           #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v46           #producer:Ljava/lang/String;
    .end local v48           #skipInfo:I
    .end local v49           #value:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v43       #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 198
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v26

    .line 199
    .local v26, ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v26, :cond_f

    .line 200
    new-instance v26, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v26           #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 201
    .restart local v26       #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 203
    :cond_f
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 204
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 205
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 206
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 218
    .end local v26           #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v43           #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v32       #iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v41       #oInfo:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v44       #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v48       #skipInfo:I
    :cond_10
    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v3, :cond_a

    move-object/from16 v44, v41

    .line 219
    check-cast v44, Lcom/itextpdf/text/pdf/PdfDictionary;

    goto/16 :goto_2

    .line 228
    .restart local v46       #producer:Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/itextpdf/text/Document;->getProduct()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    .line 229
    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 230
    .local v23, buf:Ljava/lang/StringBuffer;
    const-string v3, "; modified using "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_3

    .line 243
    .end local v23           #buf:Ljava/lang/StringBuffer;
    .restart local v6       #info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v40       #newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_12
    if-eqz p1, :cond_14

    .line 244
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    .line 245
    .local v30, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 246
    .local v37, key:Ljava/lang/String;
    new-instance v38, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 247
    .local v38, keyName:Lcom/itextpdf/text/pdf/PdfName;
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 248
    .local v49, value:Ljava/lang/String;
    if-nez v49, :cond_13

    .line 249
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_5

    .line 251
    :cond_13
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    move-object/from16 v0, v49

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_5

    .line 254
    .end local v30           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v37           #key:Ljava/lang/String;
    .end local v38           #keyName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v49           #value:Ljava/lang/String;
    :cond_14
    new-instance v25, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-direct/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;-><init>()V

    .line 255
    .local v25, date:Lcom/itextpdf/text/pdf/PdfDate;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MODDATE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v10, "UnicodeBig"

    move-object/from16 v0, v46

    invoke-direct {v4, v0, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 257
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_1f

    .line 258
    if-nez v32, :cond_1e

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 267
    :goto_6
    const/16 v20, 0x0

    .line 268
    .local v20, altMetadata:[B
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v51

    .line 269
    .local v51, xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v51, :cond_15

    invoke-virtual/range {v51 .. v51}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v3, v51

    .line 270
    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v20

    .line 271
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 273
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->xmpMetadata:[B

    if-eqz v3, :cond_16

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->xmpMetadata:[B

    move-object/from16 v20, v0

    .line 276
    :cond_16
    if-eqz v20, :cond_1c

    .line 280
    if-eqz p1, :cond_17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->xmpMetadata:[B

    if-eqz v3, :cond_20

    .line 281
    :cond_17
    new-instance v52, Lcom/itextpdf/text/xml/xmp/XmpReader;

    move-object/from16 v0, v52

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;-><init>([B)V

    .line 282
    .local v52, xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    const-string v3, "http://ns.adobe.com/pdf/1.3/"

    const-string v4, "Producer"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v4, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "http://ns.adobe.com/pdf/1.3/"

    const-string v4, "Producer"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v4, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 284
    const-string v3, "rdf:Description"

    const-string v4, "http://ns.adobe.com/pdf/1.3/"

    const-string v10, "Producer"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    :cond_18
    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "ModifyDate"

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "ModifyDate"

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 287
    const-string v3, "rdf:Description"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "ModifyDate"

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/itextpdf/text/xml/xmp/XmpReader;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    :cond_19
    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "MetadataDate"

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "MetadataDate"

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 303
    :cond_1a
    :goto_7
    new-instance v50, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual/range {v52 .. v52}, Lcom/itextpdf/text/xml/xmp/XmpReader;->serializeDoc()[B

    move-result-object v3

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 311
    .end local v52           #xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    .local v50, xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :goto_8
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 312
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->XML:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 314
    new-instance v21, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 315
    .local v21, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 316
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 318
    .end local v21           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_21

    if-eqz v51, :cond_21

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual/range {v51 .. v51}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 327
    .end local v50           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_1c
    :goto_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->alterContents()V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v47

    .line 330
    .local v47, rootN:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_25

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v39

    .line 332
    .local v39, keys:[I
    const/16 v36, 0x0

    .local v36, k:I
    :goto_a
    move-object/from16 v0, v39

    array-length v3, v0

    move/from16 v0, v36

    if-ge v0, v3, :cond_23

    .line 333
    aget v35, v39, v36

    .line 334
    .local v35, j:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v42

    .line 335
    .local v42, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v42, :cond_1d

    move/from16 v0, v48

    move/from16 v1, v35

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    move/from16 v0, v35

    if-ge v0, v3, :cond_1d

    .line 336
    move/from16 v0, v35

    move/from16 v1, v47

    if-eq v0, v1, :cond_22

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :cond_1d
    add-int/lit8 v36, v36, 0x1

    goto :goto_a

    .line 261
    .end local v20           #altMetadata:[B
    .end local v35           #j:I
    .end local v36           #k:I
    .end local v39           #keys:[I
    .end local v42           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v47           #rootN:I
    .end local v51           #xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1e
    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    goto/16 :goto_6

    .line 264
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    goto/16 :goto_6

    .line 293
    .restart local v20       #altMetadata:[B
    .restart local v51       #xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_20
    :try_start_2
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 295
    .local v22, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v53, Lcom/itextpdf/text/xml/xmp/XmpWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPDFXConformance()I

    move-result v3

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/xml/xmp/XmpWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 296
    .local v53, xmpw:Lcom/itextpdf/text/xml/xmp/XmpWriter;
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    .end local v53           #xmpw:Lcom/itextpdf/text/xml/xmp/XmpWriter;
    :goto_c
    :try_start_4
    new-instance v52, Lcom/itextpdf/text/xml/xmp/XmpReader;

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v52

    invoke-direct {v0, v3}, Lcom/itextpdf/text/xml/xmp/XmpReader;-><init>([B)V

    .restart local v52       #xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    goto/16 :goto_7

    .line 298
    .end local v52           #xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    :catch_0
    move-exception v34

    .line 299
    .local v34, ioe:Ljava/io/IOException;
    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    .line 305
    .end local v22           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v34           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v27

    .line 306
    .local v27, e:Lorg/xml/sax/SAXException;
    new-instance v50, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 310
    .restart local v50       #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    goto/16 :goto_8

    .line 308
    .end local v27           #e:Lorg/xml/sax/SAXException;
    .end local v50           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :catch_2
    move-exception v27

    .line 309
    .local v27, e:Ljava/io/IOException;
    new-instance v50, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .restart local v50       #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    goto/16 :goto_8

    .line 322
    .end local v27           #e:Ljava/io/IOException;
    :cond_21
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_9

    .line 336
    .end local v50           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    .restart local v35       #j:I
    .restart local v36       #k:I
    .restart local v39       #keys:[I
    .restart local v42       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v47       #rootN:I
    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 339
    .end local v35           #j:I
    .end local v42           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_23
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    move/from16 v36, v0

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_28

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v42

    .line 341
    .restart local v42       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v42, :cond_24

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 339
    :cond_24
    add-int/lit8 v36, v36, 0x1

    goto :goto_d

    .line 347
    .end local v36           #k:I
    .end local v39           #keys:[I
    .end local v42           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_25
    const/16 v36, 0x1

    .restart local v36       #k:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_28

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v42

    .line 349
    .restart local v42       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v42, :cond_26

    move/from16 v0, v48

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v4

    move/from16 v0, v36

    move/from16 v1, v47

    if-eq v0, v1, :cond_27

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v4, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 347
    :cond_26
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 350
    :cond_27
    const/4 v3, 0x0

    goto :goto_f

    .line 357
    .end local v42           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_28
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 363
    :goto_10
    const/4 v7, 0x0

    .line 364
    .local v7, encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v8, 0x0

    .line 365
    .local v8, fileID:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v3, :cond_2b

    .line 366
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_2a

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCryptoRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 373
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->getFileID()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 377
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v33

    check-cast v33, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 378
    .local v33, iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v4

    invoke-direct {v5, v3, v4}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(II)V

    .line 380
    .local v5, root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:J

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writeCrossReferenceTable(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;J)V

    .line 381
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    if-eqz v3, :cond_2c

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v4, "startxref\n"

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v4, "\n%%EOF\n"

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 395
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->flush()V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isCloseStream()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->close()V

    .line 398
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    goto/16 :goto_0

    .line 356
    .end local v5           #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v8           #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v33           #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v36           #k:I
    .end local v47           #rootN:I
    :catchall_0
    move-exception v3

    .line 357
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 361
    :goto_14
    throw v3

    .line 370
    .restart local v7       #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v8       #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v36       #k:I
    .restart local v47       #rootN:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v29

    .line 371
    .local v29, encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    goto/16 :goto_11

    .line 376
    .end local v29           #encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :cond_2b
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    goto/16 :goto_12

    .line 387
    .restart local v5       #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v33       #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2c
    new-instance v9, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:J

    move-wide/from16 v17, v0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;-><init>(IJLcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;J)V

    .line 393
    .local v9, trailer:Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto :goto_13

    .line 359
    .end local v5           #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v8           #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v9           #trailer:Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
    .end local v33           #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v36           #k:I
    .end local v47           #rootN:I
    :catch_3
    move-exception v4

    goto :goto_14

    .restart local v36       #k:I
    .restart local v47       #rootN:I
    :catch_4
    move-exception v3

    goto/16 :goto_10
.end method

.method correctAcroFieldPages(I)V
    .locals 6
    .parameter "page"

    .prologue
    .line 680
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-nez v5, :cond_1

    .line 692
    :cond_0
    return-void

    .line 682
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v5

    if-gt p1, v5, :cond_0

    .line 684
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 685
    .local v0, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 686
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 687
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 688
    .local v4, p:I
    if-lt v4, p1, :cond_3

    .line 689
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->forcePage(II)V

    .line 686
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method deleteOutlines()V
    .locals 4

    .prologue
    .line 1292
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1293
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 1294
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1296
    :cond_0
    instance-of v3, v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 1297
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1298
    .local v2, outlines:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 1299
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1301
    .end local v2           #outlines:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method eliminateAcroformObjects()V
    .locals 6

    .prologue
    .line 968
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 969
    .local v0, acro:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 972
    .local v1, acrodic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 973
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 974
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 975
    .local v2, iFields:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_1

    .line 976
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 977
    .local v3, kids:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 978
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 979
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 980
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 982
    .end local v3           #kids:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 983
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 984
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

.method expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p2, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->getKids()Ljava/util/ArrayList;

    move-result-object v1

    .line 1184
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfFormField;>;"
    if-eqz v1, :cond_0

    .line 1185
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {p0, v2, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    .end local v0           #k:I
    :cond_0
    return-void
.end method

.method flatFields()V
    .locals 41

    .prologue
    .line 830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    .line 831
    new-instance v38, Ljava/lang/IllegalArgumentException;

    const-string v39, "field.flattening.is.not.supported.in.append.mode"

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 832
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v14

    .line 834
    .local v14, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 835
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 836
    .local v35, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v35           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v38

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v38 .. v39}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 840
    .local v4, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .line 841
    .local v3, acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_2

    .line 842
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 844
    .restart local v3       #acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 845
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 846
    .local v26, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 848
    :cond_4
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 849
    .local v22, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/16 v23, 0x0

    .local v23, k:I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v38

    move/from16 v0, v23

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 850
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v25

    .line 851
    .local v25, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v13

    .line 852
    .local v13, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v15, 0x0

    .line 853
    .local v15, flags:I
    if-eqz v13, :cond_5

    .line 854
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v15

    .line 855
    :cond_5
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 856
    .local v29, page:I
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 857
    .local v8, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v8, :cond_7

    and-int/lit8 v38, v15, 0x4

    if-eqz v38, :cond_7

    and-int/lit8 v38, v15, 0x2

    if-nez v38, :cond_7

    .line 858
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 859
    .local v27, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v7, 0x0

    .line 860
    .local v7, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    if-eqz v27, :cond_6

    .line 861
    invoke-static/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    .line 862
    .local v28, objReal:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v38, v0

    if-eqz v38, :cond_9

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_9

    .line 863
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v27, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 884
    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 885
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v10

    .line 886
    .local v10, box:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v11

    .line 887
    .local v11, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    const-string v38, "Q "

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v38

    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v11, v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 889
    const-string v38, "q "

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 892
    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v10           #box:Lcom/itextpdf/text/Rectangle;
    .end local v11           #cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_b

    .line 849
    :cond_8
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 864
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v27       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfStream;

    move/from16 v38, v0

    if-eqz v38, :cond_a

    .line 865
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 866
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v27, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    goto :goto_2

    .line 869
    .restart local v27       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v38

    if-eqz v38, :cond_6

    .line 870
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v9

    .line 871
    .local v9, as:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v9, :cond_6

    .line 872
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 873
    .local v21, iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v21, :cond_6

    .line 874
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 875
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_6

    .line 876
    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    .line 877
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_2

    .line 894
    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v9           #as:Lcom/itextpdf/text/pdf/PdfName;
    .end local v21           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v30

    .line 895
    .local v30, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 896
    .local v6, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_8

    .line 898
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_4
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 899
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v33

    .line 900
    .local v33, ran:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_d

    .line 898
    .end local v33           #ran:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 902
    .restart local v33       #ran:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidgetRef(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v34

    .line 903
    .local v34, ran2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_c

    .line 905
    check-cast v33, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v33           #ran:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move-object/from16 v38, v34

    check-cast v38, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 906
    add-int/lit8 v20, v19, -0x1

    .end local v19           #idx:I
    .local v20, idx:I
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-object/from16 v37, v34

    .line 907
    check-cast v37, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 909
    .local v37, wdref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :goto_6
    invoke-static/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v36

    check-cast v36, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 910
    .local v36, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v32

    check-cast v32, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 911
    .local v32, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 912
    if-nez v32, :cond_10

    .line 913
    const/16 v16, 0x0

    .local v16, fr:I
    :goto_7
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_f

    .line 914
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 915
    .local v17, h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_e

    check-cast v17, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v17           #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    .line 916
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 917
    add-int/lit8 v16, v16, -0x1

    .line 913
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_f
    move/from16 v19, v20

    .line 920
    .end local v20           #idx:I
    .restart local v19       #idx:I
    goto :goto_5

    .line 922
    .end local v16           #fr:I
    .end local v19           #idx:I
    .restart local v20       #idx:I
    :cond_10
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    check-cast v31, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 923
    .local v31, parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v24

    .line 924
    .local v24, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v16, 0x0

    .restart local v16       #fr:I
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 925
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 926
    .restart local v17       #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_11

    check-cast v17, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v17           #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 927
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 928
    add-int/lit8 v16, v16, -0x1

    .line 924
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 931
    :cond_12
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_13

    move/from16 v19, v20

    .line 932
    .end local v20           #idx:I
    .restart local v19       #idx:I
    goto/16 :goto_5

    .line 933
    .end local v19           #idx:I
    .restart local v20       #idx:I
    :cond_13
    move-object/from16 v37, v32

    .line 934
    goto/16 :goto_6

    .line 937
    .end local v16           #fr:I
    .end local v20           #idx:I
    .end local v24           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v31           #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v32           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v34           #ran2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v36           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v37           #wdref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v19       #idx:I
    :cond_14
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_8

    .line 938
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 939
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto/16 :goto_3

    .line 943
    .end local v6           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v8           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v13           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v15           #flags:I
    .end local v19           #idx:I
    .end local v22           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v23           #k:I
    .end local v25           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #name:Ljava/lang/String;
    .end local v29           #page:I
    .end local v30           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    move/from16 v38, v0

    if-nez v38, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 944
    const/16 v29, 0x1

    .restart local v29       #page:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v38

    move/from16 v0, v29

    move/from16 v1, v38

    if-gt v0, v1, :cond_1c

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v30

    .line 946
    .restart local v30       #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 947
    .restart local v6       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_17

    .line 944
    :cond_16
    :goto_a
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 949
    :cond_17
    const/16 v19, 0x0

    .restart local v19       #idx:I
    :goto_b
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    .line 950
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 951
    .local v5, annoto:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v38, v0

    if-eqz v38, :cond_19

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_19

    .line 949
    .end local v5           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_18
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 953
    .restart local v5       #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_19
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v38

    if-eqz v38, :cond_1a

    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v5           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 954
    :cond_1a
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 955
    add-int/lit8 v19, v19, -0x1

    goto :goto_c

    .line 958
    :cond_1b
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_16

    .line 959
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 960
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_a

    .line 963
    .end local v6           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v19           #idx:I
    .end local v30           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->eliminateAcroformObjects()V

    .line 965
    .end local v29           #page:I
    :cond_1d
    return-void
.end method

.method getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/text/pdf/AcroFields;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    return-object v0
.end method

.method public getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 1583
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.pdfstamper.getundercontent.or.pdfstamper.getovercontent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 1578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.pdfstamper.getundercontent.or.pdfstamper.getovercontent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I
    .locals 3
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 488
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 489
    .local v1, ref:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    .line 491
    .local v0, n:I
    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getIndirectReferenceNumber()I

    move-result v0

    .line 493
    invoke-virtual {v1, p2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 508
    .end local v0           #n:I
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v2, :cond_3

    .line 498
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    if-ge p2, v2, :cond_2

    move v0, p2

    .line 499
    goto :goto_0

    .line 500
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    .line 501
    .restart local v0       #n:I
    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getIndirectReferenceNumber()I

    move-result v0

    .line 503
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 508
    .end local v0           #n:I
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v2, p2, p3}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getNewObjectNumber(II)I

    move-result v0

    goto :goto_0
.end method

.method getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 671
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 672
    :cond_0
    const/4 v1, 0x0

    .line 676
    :goto_0
    return-object v1

    .line 673
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    move-result-object v0

    .line 674
    .local v0, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-nez v1, :cond_2

    .line 675
    new-instance v1, Lcom/itextpdf/text/pdf/StampContent;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/text/pdf/StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    .line 676
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    goto :goto_0
.end method

.method public getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "page"

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 1099
    .local v0, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez v0, :cond_0

    .line 1100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid.page.number.1"

    invoke-static {v2, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_0
    return-object v0
.end method

.method getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    .locals 3
    .parameter "pageNum"

    .prologue
    .line 652
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 653
    .local v0, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 654
    .local v1, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    if-nez v1, :cond_0

    .line 655
    new-instance v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .end local v1           #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v1, p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 656
    .restart local v1       #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_0
    return-object v1
.end method

.method public getPdfLayers()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->readOCProperties()V

    .line 1694
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1697
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOCG;

    .local v4, pdfOCG:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v2, v4

    .line 1698
    check-cast v2, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1699
    .local v2, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1700
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/text/pdf/PdfLayer;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, key:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1706
    const/4 v5, 0x2

    .line 1707
    .local v5, seq:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1708
    .local v6, tmp:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1709
    add-int/lit8 v5, v5, 0x1

    .line 1710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1703
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #seq:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #key:Ljava/lang/String;
    goto :goto_1

    .line 1712
    .restart local v5       #seq:I
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 1714
    .end local v5           #seq:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1716
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v4           #pdfOCG:Lcom/itextpdf/text/pdf/PdfOCG;
    :cond_4
    return-object v3
.end method

.method getReaderFile(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 2
    .parameter "reader"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 515
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    if-eqz v0, :cond_0

    .line 522
    .end local v0           #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_0
    return-object v0

    .line 517
    .restart local v0       #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    goto :goto_0

    .line 519
    .end local v0           #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v1, :cond_2

    .line 520
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    goto :goto_0

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    goto :goto_0
.end method

.method getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 662
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 663
    :cond_0
    const/4 v1, 0x0

    .line 667
    :goto_0
    return-object v1

    .line 664
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    move-result-object v0

    .line 665
    .local v0, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    if-nez v1, :cond_2

    .line 666
    new-instance v1, Lcom/itextpdf/text/pdf/StampContent;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/text/pdf/StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    .line 667
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    goto :goto_0
.end method

.method insertPage(ILcom/itextpdf/text/Rectangle;)V
    .locals 24
    .parameter "pageNumber"
    .parameter "mediabox"

    .prologue
    .line 723
    new-instance v11, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 724
    .local v11, media:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v21

    move/from16 v0, v21

    rem-int/lit16 v0, v0, 0x168

    move/from16 v20, v0

    .line 725
    .local v20, rotation:I
    new-instance v13, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 726
    .local v13, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 727
    .local v19, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v18, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 728
    .local v18, procset:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PDF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 729
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TEXT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 730
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 731
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 732
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 733
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PROCSET:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 734
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 735
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 736
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfRectangle;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v11, v1}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfReader;->addPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v17

    .line 740
    .local v17, pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 742
    .local v9, lastPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 743
    .local v15, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v16, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 744
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .local v16, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 745
    .local v14, parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    .line 746
    .local v8, kids:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 747
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V

    move-object/from16 v15, v16

    .line 775
    .end local v9           #lastPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :goto_0
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 776
    :goto_1
    if-eqz v14, :cond_5

    .line 777
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 778
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 779
    .local v3, count:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 780
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v14

    .line 781
    goto :goto_1

    .line 751
    .end local v3           #count:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v8           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 752
    const/16 p1, 0x1

    .line 753
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 754
    .local v5, firstPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v6

    .line 755
    .local v6, firstPageRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 756
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 757
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v16, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 758
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v16       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 759
    .restart local v14       #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    .line 760
    .restart local v8       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    .line 761
    .local v10, len:I
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v12

    .line 762
    .local v12, num:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_2
    if-ge v7, v10, :cond_2

    .line 763
    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 764
    .local v4, cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v21

    move/from16 v0, v21

    if-ne v12, v0, :cond_3

    .line 765
    move-object/from16 v0, v17

    invoke-virtual {v8, v7, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 769
    .end local v4           #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    .line 770
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "internal.inconsistence"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 762
    .restart local v4       #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 771
    .end local v4           #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 773
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->correctAcroFieldPages(I)V

    move-object/from16 v15, v16

    .end local v16           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    goto/16 :goto_0

    .line 782
    .end local v5           #firstPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #firstPageRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v7           #k:I
    .end local v10           #len:I
    .end local v12           #num:I
    :cond_5
    return-void
.end method

.method isAppend()Z
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    return v0
.end method

.method isContentWritten()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 801
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRotateContents()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    return v0
.end method

.method makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 2
    .parameter "collection"

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1361
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLLECTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1362
    return-void
.end method

.method protected markUsed(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1499
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1501
    :cond_0
    return-void
.end method

.method protected markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 1487
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 1490
    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1493
    :goto_0
    if-eqz v0, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1496
    .end local v0           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    return-void

    .line 1492
    .restart local v0       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    goto :goto_0
.end method

.method partialFormFlattening(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 821
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "partial.form.flattening.is.not.supported.with.xfa.forms"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 826
    :goto_0
    return v0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected readOCProperties()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1593
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1597
    .local v1, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 1600
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 1603
    .local v5, ocgs:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1604
    .local v4, ocgmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1605
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1606
    .local v8, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-direct {v3, v12}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v3, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1608
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1609
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v9}, Lcom/itextpdf/text/pdf/PdfLayer;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1610
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1612
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v8           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1613
    .local v0, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 1614
    .local v6, off:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_3

    .line 1615
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1616
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1617
    .restart local v8       #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1618
    .restart local v3       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfLayer;->setOn(Z)V

    goto :goto_2

    .line 1621
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v8           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v7

    .line 1622
    .local v7, order:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v7, :cond_4

    .line 1623
    invoke-direct {p0, v12, v7, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    .line 1625
    :cond_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1626
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    .line 1627
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v9, :cond_5

    .line 1628
    new-instance v9, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    .line 1629
    :cond_5
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LOCKED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    .line 1630
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v9, :cond_0

    .line 1631
    new-instance v9, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    goto/16 :goto_0
.end method

.method public registerReader(Lcom/itextpdf/text/pdf/PdfReader;Z)V
    .locals 3
    .parameter "reader"
    .parameter "openFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    if-eqz p2, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 536
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    goto :goto_0
.end method

.method replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V
    .locals 9
    .parameter "r"
    .parameter "pageImported"
    .parameter "pageReplaced"

    .prologue
    const/4 v8, 0x0

    .line 703
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 704
    .local v3, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 705
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "this.page.cannot.be.replaced.new.content.was.already.added"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 706
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v2

    .line 707
    .local v2, p:Lcom/itextpdf/text/pdf/PdfImportedPage;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 708
    .local v1, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 709
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 710
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "media"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 711
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "crop"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 712
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "trim"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 713
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "art"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 714
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "bleed"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 715
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 716
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    .line 717
    .local v0, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0, v2, v8, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 718
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 719
    .local v4, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v5

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    .line 720
    return-void
.end method

.method public setAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 6
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1523
    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DOCUMENT_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->WILL_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DID_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->WILL_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DID_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1528
    new-instance v1, Lcom/itextpdf/text/pdf/PdfException;

    const-string v2, "invalid.additional.action.type.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1531
    .local v0, aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_2

    .line 1532
    if-nez p2, :cond_1

    .line 1542
    :goto_0
    return-void

    .line 1534
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1535
    .restart local v0       #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1537
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1538
    if-nez p2, :cond_3

    .line 1539
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0

    .line 1541
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 1446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDuration(II)V
    .locals 3
    .parameter "seconds"
    .parameter "page"

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1465
    .local v0, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-gez p1, :cond_0

    .line 1466
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1469
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1470
    return-void

    .line 1468
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method setFormFlattening(Z)V
    .locals 0
    .parameter "flat"

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    .line 813
    return-void
.end method

.method setFreeTextFlattening(Z)V
    .locals 0
    .parameter "flat"

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    .line 817
    return-void
.end method

.method setJavaScript()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentLevelJS()Ljava/util/HashMap;

    move-result-object v1

    .line 1307
    .local v1, djs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1309
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1310
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1311
    .local v2, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_1

    .line 1312
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v2           #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1313
    .restart local v2       #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1314
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1316
    :cond_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1317
    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1318
    .local v3, tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 1550
    return-void
.end method

.method public setOpenAction(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "open.actions.by.name.are.not.supported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOutlines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->newBookmarks:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->deleteOutlines()V

    .line 1368
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->newBookmarks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1371
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1372
    .local v1, namedAsNames:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->writeOutlines(Lcom/itextpdf/text/pdf/PdfDictionary;Z)V

    .line 1373
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 1371
    .end local v1           #namedAsNames:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 3
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V
    .locals 7
    .parameter "actionType"
    .parameter "action"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1427
    sget-object v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->PAGE_OPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->PAGE_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1428
    new-instance v2, Lcom/itextpdf/text/pdf/PdfException;

    const-string v3, "invalid.page.additional.action.type.1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1429
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1430
    .local v1, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1431
    .local v0, aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1432
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1433
    .restart local v0       #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1434
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1436
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1437
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1438
    return-void
.end method

.method setRotateContents(Z)V
    .locals 0
    .parameter "rotateContents"

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    .line 798
    return-void
.end method

.method public setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1404
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    .line 1405
    return-void
.end method

.method public setThumbnail(Lcom/itextpdf/text/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 1565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.pdfstamper.setthumbnail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setThumbnail(Lcom/itextpdf/text/Image;I)V
    .locals 3
    .parameter "image"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 1570
    .local v1, thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->resetReleasePage()V

    .line 1571
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1572
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->THUMB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1573
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->resetReleasePage()V

    .line 1574
    return-void
.end method

.method public setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
    .locals 3
    .parameter "transition"

    .prologue
    .line 1455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V
    .locals 3
    .parameter "transition"
    .parameter "page"

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1479
    .local v0, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez p1, :cond_0

    .line 1480
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1483
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1484
    return-void

    .line 1482
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTransition;->getTransitionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 1383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 1384
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 1385
    return-void
.end method

.method sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 990
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 991
    .local v3, oo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1000
    :cond_0
    return-void

    :cond_1
    move-object v0, v3

    .line 993
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 994
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 995
    .local v2, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v2, :cond_0

    .line 997
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 998
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unRegisterReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 2
    .parameter "reader"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 549
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
