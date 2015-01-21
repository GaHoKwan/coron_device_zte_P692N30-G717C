.class public Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;
.super Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;
.source "HyphenationTree.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;


# static fields
.field private static final serialVersionUID:J = -0x6bbc9e9963157ab8L


# instance fields
.field protected classmap:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

.field private transient ivalues:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

.field protected stoplist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->stoplist:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    .line 60
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    .line 61
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->alloc(I)I

    .line 62
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 5
    .parameter "chargroup"

    .prologue
    const/4 v4, 0x0

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 410
    .local v0, equivChar:C
    const/4 v3, 0x2

    new-array v2, v3, [C

    .line 411
    .local v2, key:[C
    const/4 v3, 0x1

    aput-char v4, v2, v3

    .line 412
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 413
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v4

    .line 414
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-virtual {v3, v2, v4, v0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert([CIC)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v0           #equivChar:C
    .end local v1           #i:I
    .end local v2           #key:[C
    :cond_0
    return-void
.end method

.method public addException(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "word"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p2, hyphenatedword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->stoplist:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pattern"
    .parameter "ivalue"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, k:I
    if-gtz v0, :cond_0

    .line 444
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->packValues(Ljava/lang/String;)I

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    int-to-char v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    .line 447
    :cond_0
    int-to-char v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->insert(Ljava/lang/String;C)V

    .line 448
    return-void
.end method

.method public findPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pat"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, k:I
    if-ltz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->unpackValues(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getValues(I)[B
    .locals 7
    .parameter "k"

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    add-int/lit8 v3, p1, 0x1

    .end local p1
    .local v3, k:I
    invoke-virtual {v6, p1}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->get(I)B

    move-result v5

    .line 152
    .local v5, v:B
    :goto_0
    if-eqz v5, :cond_0

    .line 153
    ushr-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, -0x1

    int-to-char v1, v6

    .line 154
    .local v1, c:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    and-int/lit8 v6, v5, 0xf

    int-to-char v1, v6

    .line 156
    if-nez v1, :cond_1

    .line 163
    .end local v1           #c:C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    new-array v4, v6, [B

    .line 164
    .local v4, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    .end local v2           #i:I
    .end local v4           #res:[B
    .restart local v1       #c:C
    :cond_1
    add-int/lit8 v6, v1, -0x1

    int-to-char v1, v6

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    iget-object v6, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    add-int/lit8 p1, v3, 0x1

    .end local v3           #k:I
    .restart local p1
    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->get(I)B

    move-result v5

    move v3, p1

    .line 162
    .end local p1
    .restart local v3       #k:I
    goto :goto_0

    .line 167
    .end local v1           #c:C
    .restart local v2       #i:I
    .restart local v4       #res:[B
    :cond_2
    return-object v4
.end method

.method protected hstrcmp([CI[CI)I
    .locals 3
    .parameter "s"
    .parameter "si"
    .parameter "t"
    .parameter "ti"

    .prologue
    const/4 v0, 0x0

    .line 138
    :goto_0
    aget-char v1, p1, p2

    aget-char v2, p3, p4

    if-ne v1, v2, :cond_2

    .line 139
    aget-char v1, p1, p2

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_1
    return v0

    .line 138
    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 143
    :cond_2
    aget-char v1, p3, p4

    if-eqz v1, :cond_0

    .line 146
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public hyphenate(Ljava/lang/String;II)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 6
    .parameter "word"
    .parameter "remainCharCount"
    .parameter "pushCharCount"

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 269
    .local v1, w:[C
    const/4 v2, 0x0

    array-length v3, v1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v0

    return-object v0
.end method

.method public hyphenate([CIIII)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    .locals 22
    .parameter "w"
    .parameter "offset"
    .parameter "len"
    .parameter "remainCharCount"
    .parameter "pushCharCount"

    .prologue
    .line 310
    add-int/lit8 v20, p3, 0x3

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v19, v0

    .line 313
    .local v19, word:[C
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [C

    .line 314
    .local v5, c:[C
    const/4 v8, 0x0

    .line 315
    .local v8, iIgnoreAtBeginning:I
    move/from16 v9, p3

    .line 316
    .local v9, iLength:I
    const/4 v4, 0x0

    .line 317
    .local v4, bEndOfLetters:Z
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    move/from16 v0, p3

    if-gt v7, v0, :cond_3

    .line 318
    const/16 v20, 0x0

    add-int v21, p2, v7

    add-int/lit8 v21, v21, -0x1

    aget-char v21, p1, v21

    aput-char v21, v5, v20

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->find([CI)I

    move-result v14

    .line 320
    .local v14, nc:I
    if-gez v14, :cond_1

    .line 321
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    .line 323
    add-int/lit8 v8, v8, 0x1

    .line 328
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 317
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 326
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 330
    :cond_1
    if-nez v4, :cond_2

    .line 331
    sub-int v20, v7, v8

    int-to-char v0, v14

    move/from16 v21, v0

    aput-char v21, v19, v20

    goto :goto_2

    .line 333
    :cond_2
    const/16 v20, 0x0

    .line 391
    .end local v14           #nc:I
    :goto_3
    return-object v20

    .line 337
    :cond_3
    move/from16 p3, v9

    .line 338
    add-int v20, p4, p5

    move/from16 v0, p3

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 340
    const/16 v20, 0x0

    goto :goto_3

    .line 342
    :cond_4
    add-int/lit8 v20, p3, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 343
    .local v17, result:[I
    const/4 v12, 0x0

    .line 346
    .local v12, k:I
    new-instance v18, Ljava/lang/String;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 347
    .local v18, sw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->stoplist:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->stoplist:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 350
    .local v6, hw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 351
    .local v11, j:I
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 352
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 355
    .local v15, o:Ljava/lang/Object;
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 356
    check-cast v15, Ljava/lang/String;

    .end local v15           #o:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int v11, v11, v20

    .line 357
    move/from16 v0, p4

    if-lt v11, v0, :cond_5

    sub-int v20, p3, p5

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 358
    add-int/lit8 v13, v12, 0x1

    .end local v12           #k:I
    .local v13, k:I
    add-int v20, v11, v8

    aput v20, v17, v12

    move v12, v13

    .line 351
    .end local v13           #k:I
    .restart local v12       #k:I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 364
    .end local v6           #hw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v11           #j:I
    :cond_6
    const/16 v20, 0x0

    const/16 v21, 0x2e

    aput-char v21, v19, v20

    .line 365
    add-int/lit8 v20, p3, 0x1

    const/16 v21, 0x2e

    aput-char v21, v19, v20

    .line 366
    add-int/lit8 v20, p3, 0x2

    const/16 v21, 0x0

    aput-char v21, v19, v20

    .line 367
    add-int/lit8 v20, p3, 0x3

    move/from16 v0, v20

    new-array v10, v0, [B

    .line 368
    .local v10, il:[B
    const/4 v7, 0x0

    :goto_5
    add-int/lit8 v20, p3, 0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7, v10}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->searchPatterns([CI[B)V

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 376
    :cond_7
    const/4 v7, 0x0

    move v13, v12

    .end local v12           #k:I
    .restart local v13       #k:I
    :goto_6
    move/from16 v0, p3

    if-ge v7, v0, :cond_8

    .line 377
    add-int/lit8 v20, v7, 0x1

    aget-byte v20, v10, v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move/from16 v0, p4

    if-lt v7, v0, :cond_b

    sub-int v20, p3, p5

    move/from16 v0, v20

    if-gt v7, v0, :cond_b

    .line 379
    add-int/lit8 v12, v13, 0x1

    .end local v13           #k:I
    .restart local v12       #k:I
    add-int v20, v7, v8

    aput v20, v17, v13

    .line 376
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move v13, v12

    .end local v12           #k:I
    .restart local v13       #k:I
    goto :goto_6

    :cond_8
    move v12, v13

    .line 385
    .end local v10           #il:[B
    .end local v13           #k:I
    .restart local v12       #k:I
    :cond_9
    if-lez v12, :cond_a

    .line 387
    new-array v0, v12, [I

    move-object/from16 v16, v0

    .line 388
    .local v16, res:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    new-instance v20, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    goto/16 :goto_3

    .line 391
    .end local v16           #res:[I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_3

    .end local v12           #k:I
    .restart local v10       #il:[B
    .restart local v13       #k:I
    :cond_b
    move v12, v13

    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_7
.end method

.method public loadSimplePatterns(Ljava/io/InputStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 109
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;-><init>()V

    .line 110
    .local v0, pp:Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    .line 112
    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->parse(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;)V

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->trimToSize()V

    .line 117
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->trimToSize()V

    .line 118
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->trimToSize()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;

    .line 122
    return-void
.end method

.method protected packValues(Ljava/lang/String;)I
    .locals 10
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 75
    .local v3, n:I
    and-int/lit8 v7, v3, 0x1

    if-ne v7, v9, :cond_0

    shr-int/lit8 v7, v3, 0x1

    add-int/lit8 v2, v7, 0x2

    .line 76
    .local v2, m:I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->alloc(I)I

    move-result v4

    .line 77
    .local v4, offset:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->getArray()[B

    move-result-object v6

    .line 78
    .local v6, va:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 79
    shr-int/lit8 v1, v0, 0x1

    .line 80
    .local v1, j:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0xf

    int-to-byte v5, v7

    .line 81
    .local v5, v:B
    and-int/lit8 v7, v0, 0x1

    if-ne v7, v9, :cond_1

    .line 82
    add-int v7, v1, v4

    add-int v8, v1, v4

    aget-byte v8, v6, v8

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 78
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #m:I
    .end local v4           #offset:I
    .end local v5           #v:B
    .end local v6           #va:[B
    :cond_0
    shr-int/lit8 v7, v3, 0x1

    add-int/lit8 v2, v7, 0x1

    goto :goto_0

    .line 84
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #m:I
    .restart local v4       #offset:I
    .restart local v5       #v:B
    .restart local v6       #va:[B
    :cond_1
    add-int v7, v1, v4

    shl-int/lit8 v8, v5, 0x4

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_2

    .line 87
    .end local v1           #j:I
    .end local v5           #v:B
    :cond_2
    add-int/lit8 v7, v2, -0x1

    add-int/2addr v7, v4

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 88
    return v4
.end method

.method public printStats()V
    .locals 3

    .prologue
    .line 452
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value space size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    invoke-super {p0}, Lcom/itextpdf/text/pdf/hyphenation/TernaryTree;->printStats()V

    .line 455
    return-void
.end method

.method protected searchPatterns([CI[B)V
    .locals 14
    .parameter "word"
    .parameter "index"
    .parameter "il"

    .prologue
    .line 196
    move/from16 v3, p2

    .line 198
    .local v3, i:I
    aget-char v9, p1, v3

    .line 199
    .local v9, sp:C
    iget-char v7, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->root:C

    .line 201
    .local v7, p:C
    :cond_0
    :goto_0
    if-lez v7, :cond_3

    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    array-length v12, v12

    if-ge v7, v12, :cond_3

    .line 202
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    aget-char v12, v12, v7

    const v13, 0xffff

    if-ne v12, v13, :cond_2

    .line 203
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->kv:Lcom/itextpdf/text/pdf/hyphenation/CharVector;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/hyphenation/CharVector;->getArray()[C

    move-result-object v12

    iget-object v13, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->lo:[C

    aget-char v13, v13, v7

    invoke-virtual {p0, p1, v3, v12, v13}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hstrcmp([CI[CI)I

    move-result v12

    if-nez v12, :cond_3

    .line 204
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->eq:[C

    aget-char v12, v12, v7

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object v11

    .line 205
    .local v11, values:[B
    move/from16 v5, p2

    .line 206
    .local v5, j:I
    move-object v1, v11

    .local v1, arr$:[B
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-byte v10, v1, v4

    .line 207
    .local v10, value:B
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v5, v12, :cond_1

    aget-byte v12, p3, v5

    if-le v10, v12, :cond_1

    .line 208
    aput-byte v10, p3, v5

    .line 210
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v1           #arr$:[B
    .end local v4           #i$:I
    .end local v5           #j:I
    .end local v6           #len$:I
    .end local v10           #value:B
    .end local v11           #values:[B
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    aget-char v12, v12, v7

    sub-int v2, v9, v12

    .line 216
    .local v2, d:I
    if-nez v2, :cond_7

    .line 217
    if-nez v9, :cond_4

    .line 254
    .end local v2           #d:I
    :cond_3
    return-void

    .line 220
    .restart local v2       #d:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    aget-char v9, p1, v3

    .line 221
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->eq:[C

    aget-char v7, v12, v7

    .line 222
    move v8, v7

    .line 226
    .local v8, q:C
    :goto_2
    if-lez v8, :cond_0

    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 227
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    aget-char v12, v12, v8

    const v13, 0xffff

    if-eq v12, v13, :cond_0

    .line 230
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->sc:[C

    aget-char v12, v12, v8

    if-nez v12, :cond_6

    .line 231
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->eq:[C

    aget-char v12, v12, v8

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object v11

    .line 232
    .restart local v11       #values:[B
    move/from16 v5, p2

    .line 233
    .restart local v5       #j:I
    move-object v1, v11

    .restart local v1       #arr$:[B
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v6, :cond_0

    aget-byte v10, v1, v4

    .line 234
    .restart local v10       #value:B
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v5, v12, :cond_5

    aget-byte v12, p3, v5

    if-le v10, v12, :cond_5

    .line 235
    aput-byte v10, p3, v5

    .line 237
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 241
    .end local v1           #arr$:[B
    .end local v4           #i$:I
    .end local v5           #j:I
    .end local v6           #len$:I
    .end local v10           #value:B
    .end local v11           #values:[B
    :cond_6
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->lo:[C

    aget-char v8, v12, v8

    goto :goto_2

    .line 251
    .end local v8           #q:C
    :cond_7
    if-gez v2, :cond_8

    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->lo:[C

    aget-char v7, v12, v7

    :goto_4
    goto/16 :goto_0

    :cond_8
    iget-object v12, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->hi:[C

    aget-char v7, v12, v7

    goto :goto_4
.end method

.method protected unpackValues(I)Ljava/lang/String;
    .locals 5
    .parameter "k"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, k:I
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->get(I)B

    move-result v3

    .line 94
    .local v3, v:B
    :goto_0
    if-eqz v3, :cond_0

    .line 95
    ushr-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x30

    int-to-char v1, v4

    .line 96
    .local v1, c:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    and-int/lit8 v4, v3, 0xf

    int-to-char v1, v4

    .line 98
    if-nez v1, :cond_1

    .line 105
    .end local v1           #c:C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 101
    .restart local v1       #c:C
    :cond_1
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v4, v4, 0x30

    int-to-char v1, v4

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/text/pdf/hyphenation/ByteVector;

    add-int/lit8 p1, v2, 0x1

    .end local v2           #k:I
    .restart local p1
    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/hyphenation/ByteVector;->get(I)B

    move-result v3

    move v2, p1

    .line 104
    .end local p1
    .restart local v2       #k:I
    goto :goto_0
.end method
