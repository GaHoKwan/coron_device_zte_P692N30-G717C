.class public Lcom/itextpdf/text/pdf/PdfNameTree;
.super Ljava/lang/Object;
.source "PdfNameTree.java"


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

.method private static iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfString;)Lcom/itextpdf/text/pdf/PdfString;
    .locals 8
    .parameter "dic"
    .parameter
    .parameter "leftOverString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfString;",
            ")",
            "Lcom/itextpdf/text/pdf/PdfString;"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v5, 0x0

    .line 136
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 137
    .local v3, nn:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_1

    .line 138
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 140
    if-nez p2, :cond_0

    .line 141
    add-int/lit8 v1, v0, 0x1

    .end local v0           #k:I
    .local v1, k:I
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfString;

    .local v4, s:Lcom/itextpdf/text/pdf/PdfString;
    move v0, v1

    .line 147
    .end local v1           #k:I
    .restart local v0       #k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 148
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v4           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_0
    move-object v4, p2

    .line 145
    .restart local v4       #s:Lcom/itextpdf/text/pdf/PdfString;
    const/4 p2, 0x0

    goto :goto_1

    .line 152
    .end local v0           #k:I
    .end local v4           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_1
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #nn:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v3       #nn:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_2

    .line 153
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 154
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 155
    .local v2, kid:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v2, p1, p2}, Lcom/itextpdf/text/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfString;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object p2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #k:I
    .end local v2           #kid:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    move-object v4, v5

    .line 158
    :cond_3
    return-object v4
.end method

.method public static readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;
    .locals 2
    .parameter "dic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz p0, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfString;)Lcom/itextpdf/text/pdf/PdfString;

    .line 165
    :cond_0
    return-object v0
.end method

.method public static writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 14
    .parameter
    .parameter "writer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;",
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
    .line 71
    .local p0, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;+Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 112
    :goto_0
    return-object v2

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 74
    .local v6, names:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #names:[Ljava/lang/String;
    check-cast v6, [Ljava/lang/String;

    .line 75
    .restart local v6       #names:[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 76
    array-length v11, v6

    const/16 v12, 0x40

    if-gt v11, v12, :cond_2

    .line 77
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 78
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 79
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v11, v6

    if-ge v4, v11, :cond_1

    .line 80
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v12, v6, v4

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 81
    aget-object v11, v6, v4

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    :cond_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 86
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #k:I
    :cond_2
    const/16 v8, 0x40

    .line 87
    .local v8, skip:I
    array-length v11, v6

    add-int/lit8 v11, v11, 0x40

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x40

    new-array v5, v11, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 88
    .local v5, kids:[Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_2
    array-length v11, v5

    if-ge v4, v11, :cond_4

    .line 89
    mul-int/lit8 v7, v4, 0x40

    .line 90
    .local v7, offset:I
    add-int/lit8 v11, v7, 0x40

    array-length v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 91
    .local v3, end:I
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 92
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 93
    .local v1, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v12, v6, v7

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 94
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    add-int/lit8 v12, v3, -0x1

    aget-object v12, v6, v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 95
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->LIMITS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 97
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_3
    if-ge v7, v3, :cond_3

    .line 98
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v12, v6, v7

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 99
    aget-object v11, v6, v7

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 101
    :cond_3
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 102
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    aput-object v11, v5, v4

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 104
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #end:I
    .end local v7           #offset:I
    :cond_4
    array-length v9, v5

    .line 106
    .local v9, top:I
    :goto_4
    const/16 v11, 0x40

    if-gt v9, v11, :cond_6

    .line 107
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 108
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_5

    .line 109
    aget-object v11, v5, v4

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 110
    :cond_5
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 111
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 114
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    mul-int/lit8 v8, v8, 0x40

    .line 115
    array-length v11, v6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    div-int v10, v11, v8

    .line 116
    .local v10, tt:I
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v10, :cond_8

    .line 117
    mul-int/lit8 v7, v4, 0x40

    .line 118
    .restart local v7       #offset:I
    add-int/lit8 v11, v7, 0x40

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 119
    .restart local v3       #end:I
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 120
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 121
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    mul-int v12, v4, v8

    aget-object v12, v6, v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 122
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    add-int/lit8 v12, v4, 0x1

    mul-int/2addr v12, v8

    array-length v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v6, v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 123
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->LIMITS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 124
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 125
    .restart local v1       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_7
    if-ge v7, v3, :cond_7

    .line 126
    aget-object v11, v5, v7

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 128
    :cond_7
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 129
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    aput-object v11, v5, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 131
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #end:I
    .end local v7           #offset:I
    :cond_8
    move v9, v10

    .line 132
    goto/16 :goto_4
.end method
