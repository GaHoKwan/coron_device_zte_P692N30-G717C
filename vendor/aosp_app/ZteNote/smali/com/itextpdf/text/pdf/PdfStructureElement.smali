.class public Lcom/itextpdf/text/pdf/PdfStructureElement;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfStructureElement.java"


# instance fields
.field private parent:Lcom/itextpdf/text/pdf/PdfStructureElement;

.field private reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field private top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfStructureElement;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "parent"
    .parameter "structureType"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 72
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfStructureElement;->top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->init(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 74
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->parent:Lcom/itextpdf/text/pdf/PdfStructureElement;

    .line 75
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfStructureElement;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->STRUCTELEM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "parent"
    .parameter "structureType"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->init(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 87
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->STRUCTELEM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 89
    return-void
.end method

.method private init(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 5
    .parameter "parent"
    .parameter "structureType"

    .prologue
    .line 92
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 93
    .local v0, kido:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v1, 0x0

    .line 94
    .local v1, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the.parent.has.already.another.function"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    if-nez v0, :cond_1

    .line 97
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 98
    .restart local v1       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 102
    :goto_0
    invoke-virtual {v1, p0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 103
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 104
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->getWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 105
    return-void

    :cond_1
    move-object v1, v0

    .line 101
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    goto :goto_0
.end method


# virtual methods
.method public getParent()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->parent:Lcom/itextpdf/text/pdf/PdfStructureElement;

    return-object v0
.end method

.method public getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method setPageMark(II)V
    .locals 2
    .parameter "page"
    .parameter "mark"

    .prologue
    .line 116
    if-ltz p2, :cond_0

    .line 117
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->top:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStructureElement;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->setPageMark(ILcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 119
    return-void
.end method
