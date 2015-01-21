.class public Lcom/itextpdf/text/pdf/PdfNumberTree;
.super Ljava/lang/Object;
.source "PdfNumberTree.java"


# static fields
.field private static final leafSize:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;)V
    .locals 7
    .parameter "dic"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfObject;>;"
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->NUMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 133
    .local v3, nn:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 135
    add-int/lit8 v1, v0, 0x1

    .end local v0           #k:I
    .local v1, k:I
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 136
    .local v4, s:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v1, 0x1

    .end local v1           #k:I
    .restart local v0       #k:I
    goto :goto_0

    .line 139
    .end local v0           #k:I
    .end local v4           #s:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_0
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #nn:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v3       #nn:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_1

    .line 140
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 141
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 142
    .local v2, kid:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumberTree;->iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0           #k:I
    .end local v2           #kid:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method public static readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;
    .locals 1
    .parameter "dic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v0, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz p0, :cond_0

    .line 150
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfNumberTree;->iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;)V

    .line 151
    :cond_0
    return-object v0
.end method

.method public static writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 14
    .parameter
    .parameter "writer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TO;>;",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            ")",
            "Lcom/itextpdf/text/pdf/PdfDictionary;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;TO;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 108
    :goto_0
    return-object v2

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v6, v11, [Ljava/lang/Integer;

    .line 70
    .local v6, numbers:[Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #numbers:[Ljava/lang/Integer;
    check-cast v6, [Ljava/lang/Integer;

    .line 71
    .restart local v6       #numbers:[Ljava/lang/Integer;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    array-length v11, v6

    const/16 v12, 0x40

    if-gt v11, v12, :cond_2

    .line 73
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 74
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 75
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v11, v6

    if-ge v4, v11, :cond_1

    .line 76
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    aget-object v12, v6, v4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 77
    aget-object v11, v6, v4

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NUMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 82
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #k:I
    :cond_2
    const/16 v8, 0x40

    .line 83
    .local v8, skip:I
    array-length v11, v6

    add-int/lit8 v11, v11, 0x40

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x40

    new-array v5, v11, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 84
    .local v5, kids:[Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_2
    array-length v11, v5

    if-ge v4, v11, :cond_4

    .line 85
    mul-int/lit8 v7, v4, 0x40

    .line 86
    .local v7, offset:I
    add-int/lit8 v11, v7, 0x40

    array-length v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 87
    .local v3, end:I
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 88
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 89
    .local v1, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 90
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    add-int/lit8 v12, v3, -0x1

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 91
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->LIMITS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 93
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_3
    if-ge v7, v3, :cond_3

    .line 94
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 95
    aget-object v11, v6, v7

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 93
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 97
    :cond_3
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NUMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 98
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    aput-object v11, v5, v4

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #end:I
    .end local v7           #offset:I
    :cond_4
    array-length v9, v5

    .line 102
    .local v9, top:I
    :goto_4
    const/16 v11, 0x40

    if-gt v9, v11, :cond_6

    .line 103
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 104
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_5

    .line 105
    aget-object v11, v5, v4

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 106
    :cond_5
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 107
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 110
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    mul-int/lit8 v8, v8, 0x40

    .line 111
    array-length v11, v6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    div-int v10, v11, v8

    .line 112
    .local v10, tt:I
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v10, :cond_8

    .line 113
    mul-int/lit8 v7, v4, 0x40

    .line 114
    .restart local v7       #offset:I
    add-int/lit8 v11, v7, 0x40

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 115
    .restart local v3       #end:I
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 116
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 117
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    mul-int v12, v4, v8

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 118
    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    add-int/lit8 v12, v4, 0x1

    mul-int/2addr v12, v8

    array-length v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 119
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->LIMITS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 120
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 121
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_7
    if-ge v7, v3, :cond_7

    .line 122
    aget-object v11, v5, v7

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 124
    :cond_7
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 125
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    aput-object v11, v5, v4

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 127
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #end:I
    .end local v7           #offset:I
    :cond_8
    move v9, v10

    .line 128
    goto/16 :goto_4
.end method
