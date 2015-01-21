.class Lcom/itextpdf/text/pdf/PdfReader$PageRefs;
.super Ljava/lang/Object;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageRefs"
.end annotation


# instance fields
.field private keepPages:Z

.field private lastPageRead:I

.field private pageInh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private refsn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PRIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private refsp:Lcom/itextpdf/text/pdf/IntHashtable;

.field private sizep:I


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "other"
    .parameter "reader"

    .prologue
    .line 3342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3325
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3343
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 3344
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3345
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3346
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3347
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3348
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3352
    .end local v0           #k:I
    :cond_0
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/IntHashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3353
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3325
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3331
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 3332
    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3333
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3334
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 3335
    .local v0, npages:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3340
    .end local v0           #npages:Lcom/itextpdf/text/pdf/PdfNumber;
    :goto_0
    return-void

    .line 3338
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->readPages()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfReader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3316
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3316
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->selectPages(Ljava/util/List;)V

    return-void
.end method

.method private iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 12
    .parameter "rpage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3532
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3533
    .local v8, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v8, :cond_0

    .line 3567
    :goto_0
    return-void

    .line 3535
    :cond_0
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 3537
    .local v6, kidsPR:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_4

    .line 3538
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3539
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3541
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v5, v2

    .line 3542
    check-cast v5, Lcom/itextpdf/text/pdf/PdfName;

    .line 3543
    .local v5, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v8, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3544
    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 3546
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    if-nez v9, :cond_3

    .line 3547
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v9, 0x4

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/itextpdf/text/PageSize;->LETTER:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/itextpdf/text/PageSize;->LETTER:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v11

    aput v11, v9, v10

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    .line 3548
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3550
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3554
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3555
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pushPageAttributes(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3556
    const/4 v4, 0x0

    .local v4, k:I
    :goto_2
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 3557
    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 3558
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3559
    :goto_3
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 3560
    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    goto :goto_3

    .line 3563
    :cond_5
    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 3556
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3565
    :cond_6
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->popPageAttributes()V

    goto/16 :goto_0
.end method

.method private popPageAttributes()V
    .locals 2

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3529
    return-void
.end method

.method private pushPageAttributes(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "nodePages"

    .prologue
    .line 3512
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 3513
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3514
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3516
    :cond_0
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3517
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 3518
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_1

    .line 3519
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3516
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3521
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3522
    return-void
.end method

.method private selectPages(Ljava/util/List;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3605
    .local p1, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 3606
    .local v11, pg:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3607
    .local v3, finalPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v14

    .line 3608
    .local v14, psize:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 3609
    .local v12, pi:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3610
    .local v9, p:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v9, v0, :cond_0

    if-gt v9, v14, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v9, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    move-result v17

    if-nez v17, :cond_0

    .line 3611
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3613
    .end local v9           #p:I
    .end local v12           #pi:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3614
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    if-gt v5, v14, :cond_2

    .line 3615
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3616
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 3614
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3619
    .end local v5           #k:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v17, v0

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3620
    .local v10, parent:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3621
    .local v16, topPages:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3622
    .local v7, newPageRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRIndirectReference;>;"
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 3623
    .local v6, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 3624
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3625
    .restart local v9       #p:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v13

    .line 3626
    .local v13, pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 3627
    invoke-virtual {v6, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3628
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3629
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v17

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3623
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3631
    .end local v9           #p:I
    .end local v13           #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v2

    .line 3632
    .local v2, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_6

    const/4 v15, 0x1

    .line 3633
    .local v15, removeFields:Z
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-gt v5, v14, :cond_7

    .line 3634
    invoke-virtual {v11, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 3635
    if-eqz v15, :cond_4

    .line 3636
    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeFieldsFromPage(I)Z

    .line 3637
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v13

    .line 3638
    .restart local v13       #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 3639
    .local v8, nref:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$400(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    mul-int/lit8 v18, v8, 0x2

    const-wide/16 v19, -0x1

    aput-wide v19, v17, v18

    .line 3642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[J

    move-object/from16 v17, v0

    mul-int/lit8 v18, v8, 0x2

    add-int/lit8 v18, v18, 0x1

    const-wide/16 v19, 0x0

    aput-wide v19, v17, v18

    .line 3633
    .end local v8           #nref:I
    .end local v13           #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3632
    .end local v15           #removeFields:Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 3646
    .restart local v15       #removeFields:Z
    :cond_7
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v18, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual/range {v16 .. v18}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3647
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3648
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3649
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3650
    return-void
.end method


# virtual methods
.method public getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 3383
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 3384
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v1
.end method

.method public getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3392
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 3393
    .local v0, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 3394
    return-object v0
.end method

.method public getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 5
    .parameter "pageNum"

    .prologue
    const/4 v4, -0x1

    .line 3414
    add-int/lit8 p1, p1, -0x1

    .line 3415
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 3416
    :cond_0
    const/4 v3, 0x0

    .line 3438
    :goto_0
    return-object v3

    .line 3417
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 3418
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    goto :goto_0

    .line 3420
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .line 3421
    .local v1, n:I
    if-nez v1, :cond_5

    .line 3422
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getSinglePage(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v2

    .line 3423
    .local v2, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->access$300(Lcom/itextpdf/text/pdf/PdfReader;)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 3424
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3427
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, -0x1

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3428
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 3429
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v3, :cond_3

    .line 3430
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    :cond_3
    move-object v3, v2

    .line 3431
    goto :goto_0

    .line 3426
    :cond_4
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3442
    .end local v1           #n:I
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :catch_0
    move-exception v0

    .line 3443
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 3434
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #n:I
    :cond_5
    :try_start_1
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    if-eq v3, p1, :cond_6

    .line 3435
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3436
    :cond_6
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v3, :cond_7

    .line 3437
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3438
    :cond_7
    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getPageOrigRefRelease(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3402
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 3403
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 3404
    return-object v0
.end method

.method protected getSinglePage(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 14
    .parameter "n"

    .prologue
    .line 3570
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 3571
    .local v0, acc:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v11, v12, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3572
    .local v11, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v2, 0x0

    .line 3574
    .local v2, base:I
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v12, v12

    if-ge v6, v12, :cond_2

    .line 3575
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 3576
    .local v9, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v9, :cond_1

    .line 3577
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v12, v12, v6

    invoke-virtual {v0, v12, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3574
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3579
    .end local v9           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfArray;

    .line 3580
    .local v7, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3581
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3582
    .local v10, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3583
    .local v4, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->access$300(Lcom/itextpdf/text/pdf/PdfReader;)I

    move-result v8

    .line 3584
    .local v8, last:I
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 3585
    .local v3, count:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v12, v8}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3586
    const/4 v1, 0x1

    .line 3587
    .local v1, acn:I
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    move-object v12, v3

    .line 3588
    check-cast v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 3589
    :cond_3
    add-int v12, v2, v1

    if-ge p1, v12, :cond_5

    .line 3590
    if-nez v3, :cond_4

    .line 3591
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3592
    return-object v10

    .line 3594
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3595
    move-object v11, v4

    .line 3596
    goto :goto_0

    .line 3598
    :cond_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3599
    add-int/2addr v2, v1

    .line 3600
    goto :goto_2
.end method

.method insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 7
    .parameter "pageNum"
    .parameter "ref"

    .prologue
    .line 3481
    add-int/lit8 p1, p1, -0x1

    .line 3482
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 3483
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 3484
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3505
    :goto_0
    return-void

    .line 3486
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3489
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3490
    const/4 v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3491
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 3492
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 3495
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/IntHashtable;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>(I)V

    .line 3496
    .local v3, refs2:Lcom/itextpdf/text/pdf/IntHashtable;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/IntHashtable;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/IntHashtable$Entry;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3497
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 3498
    .local v0, entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->getKey()I

    move-result v2

    .line 3499
    .local v2, p:I
    if-lt v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .end local v2           #p:I
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->getValue()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_1

    .line 3501
    .end local v0           #entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 3502
    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_0
.end method

.method keepPages()V
    .locals 1

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v0, :cond_1

    .line 3452
    :cond_0
    :goto_0
    return-void

    .line 3450
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    .line 3451
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable;->clear()V

    goto :goto_0
.end method

.method reReadPages()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3375
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->readPages()V

    .line 3376
    return-void
.end method

.method readPages()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3363
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3371
    :goto_0
    return-void

    .line 3365
    :cond_0
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    .line 3368
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 3369
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    .line 3370
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public releasePage(I)V
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v0, :cond_1

    .line 3469
    :cond_0
    :goto_0
    return-void

    .line 3460
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 3461
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3463
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    if-ne p1, v0, :cond_0

    .line 3465
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3466
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3467
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3468
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->remove(I)I

    goto :goto_0
.end method

.method public resetReleasePage()V
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v0, :cond_0

    .line 3478
    :goto_0
    return-void

    .line 3477
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3357
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3359
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    goto :goto_0
.end method
