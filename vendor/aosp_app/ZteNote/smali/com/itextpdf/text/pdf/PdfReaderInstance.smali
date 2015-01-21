.class Lcom/itextpdf/text/pdf/PdfReaderInstance;
.super Ljava/lang/Object;
.source "PdfReaderInstance.java"


# static fields
.field static final IDENTITYMATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

.field static final ONE:Lcom/itextpdf/text/pdf/PdfNumber;


# instance fields
.field file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field importedPages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfImportedPage;",
            ">;"
        }
    .end annotation
.end field

.field myXref:[I

.field nextRound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field visited:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string v1, "[1 0 0 1 0 0]"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->IDENTITYMATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 58
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->ONE:Lcom/itextpdf/text/pdf/PdfNumber;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "reader"
    .parameter "writer"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->importedPages:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->visited:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->nextRound:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 69
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 71
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->myXref:[I

    .line 72
    return-void
.end method


# virtual methods
.method getFormXObject(II)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 10
    .parameter "pageNumber"
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 118
    .local v5, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 119
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfObject;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 120
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v0, 0x0

    .line 121
    .local v0, bout:[B
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 123
    check-cast v7, Lcom/itextpdf/text/pdf/PRStream;

    invoke-virtual {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 129
    :goto_0
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 130
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 131
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 132
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->importedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfImportedPage;

    .line 133
    .local v3, impPage:Lcom/itextpdf/text/pdf/PdfImportedPage;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 134
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getMatrix()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 135
    .local v4, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v4, :cond_2

    .line 136
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfReaderInstance;->IDENTITYMATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 139
    :goto_1
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FORMTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfReaderInstance;->ONE:Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 141
    if-nez v0, :cond_3

    .line 142
    new-instance v6, Lcom/itextpdf/text/pdf/PRStream;

    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v6, v1, v2}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 148
    .local v6, stream:Lcom/itextpdf/text/pdf/PRStream;
    :goto_2
    return-object v6

    .line 125
    .end local v3           #impPage:Lcom/itextpdf/text/pdf/PdfImportedPage;
    .end local v4           #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #stream:Lcom/itextpdf/text/pdf/PRStream;
    .restart local v1       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7, p1, v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    const/4 v7, 0x0

    new-array v0, v7, [B

    goto :goto_0

    .line 138
    .restart local v3       #impPage:Lcom/itextpdf/text/pdf/PdfImportedPage;
    .restart local v4       #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 145
    :cond_3
    new-instance v6, Lcom/itextpdf/text/pdf/PRStream;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v6, v7, v0, p2}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;[BI)V

    .line 146
    .restart local v6       #stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual {v6, v2}, Lcom/itextpdf/text/pdf/PRStream;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_2
.end method

.method getImportedPage(I)Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 5
    .parameter "pageNumber"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->isOpenedWithFullPermissions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdfreader.not.opened.with.owner.password"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 82
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid.page.number.1"

    invoke-static {v3, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    .local v0, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->importedPages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfImportedPage;

    .line 85
    .local v1, pageT:Lcom/itextpdf/text/pdf/PdfImportedPage;
    if-nez v1, :cond_3

    .line 86
    new-instance v1, Lcom/itextpdf/text/pdf/PdfImportedPage;

    .end local v1           #pageT:Lcom/itextpdf/text/pdf/PdfImportedPage;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, p0, v2, p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;-><init>(Lcom/itextpdf/text/pdf/PdfReaderInstance;Lcom/itextpdf/text/pdf/PdfWriter;I)V

    .line 87
    .restart local v1       #pageT:Lcom/itextpdf/text/pdf/PdfImportedPage;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->importedPages:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    return-object v1
.end method

.method getNewObjectNumber(II)I
    .locals 2
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->myXref:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->myXref:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getIndirectReferenceNumber()I

    move-result v1

    aput v1, v0, p1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->nextRound:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->myXref:[I

    aget v0, v0, p1

    return v0
.end method

.method getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    return-object v0
.end method

.method getResources(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 3
    .parameter "pageNumber"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 106
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    return-object v0
.end method

.method writeAllPages()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 169
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->importedPages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfImportedPage;

    .line 170
    .local v1, element:Lcom/itextpdf/text/pdf/PdfImportedPage;
    move-object v0, v1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-object v3, v0

    .line 171
    .local v3, ip:Lcom/itextpdf/text/pdf/PdfImportedPage;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfImportedPage;->isToCopy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 173
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfImportedPage;->setCopied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfImportedPage;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ip:Lcom/itextpdf/text/pdf/PdfImportedPage;
    :catchall_0
    move-exception v4

    .line 180
    :try_start_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    .line 181
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :goto_1
    throw v4

    .line 176
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writeAllVisited()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :try_start_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    .line 181
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    :goto_2
    return-void

    .line 183
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_1

    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method writeAllVisited()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->nextRound:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->nextRound:Ljava/util/ArrayList;

    .line 154
    .local v3, vec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->nextRound:Ljava/util/ArrayList;

    .line 155
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 156
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->visited:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->visited:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 160
    .local v2, n:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReaderInstance;->myXref:[I

    aget v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 155
    .end local v2           #n:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #k:I
    .end local v3           #vec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method
