.class public Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfStructureTreeRoot.java"


# instance fields
.field private parentTree:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 65
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->STRUCTTREEROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    .line 66
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 67
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 68
    return-void
.end method

.method private nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 6
    .parameter "struc"
    .parameter "reference"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 114
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 115
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 116
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 117
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfStructureElement;

    .line 118
    .local v1, e:Lcom/itextpdf/text/pdf/PdfStructureElement;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 119
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfStructureElement;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #e:Lcom/itextpdf/text/pdf/PdfStructureElement;
    .end local v2           #k:I
    :cond_0
    if-eqz p2, :cond_1

    .line 123
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method buildTree()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v4, numTree:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 129
    .local v2, i:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 130
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #i:Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumberTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 133
    .local v1, dicTree:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 134
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PARENTTREE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v6, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-direct {p0, p0, v5}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 137
    return-void
.end method

.method public getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public mapRole(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "used"
    .parameter "standard"

    .prologue
    .line 77
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROLEMAP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 78
    .local v0, rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 80
    .restart local v0       #rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROLEMAP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 82
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    return-void
.end method

.method setPageMark(ILcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 3
    .parameter "page"
    .parameter "struc"

    .prologue
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    .local v1, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 105
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 107
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 110
    return-void
.end method
