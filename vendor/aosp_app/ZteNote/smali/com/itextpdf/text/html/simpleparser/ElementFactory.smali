.class public Lcom/itextpdf/text/html/simpleparser/ElementFactory;
.super Ljava/lang/Object;
.source "ElementFactory.java"


# instance fields
.field private provider:Lcom/itextpdf/text/FontProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/itextpdf/text/FontFactory;->getFontImp()Lcom/itextpdf/text/FontFactoryImp;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->provider:Lcom/itextpdf/text/FontProvider;

    .line 90
    return-void
.end method

.method protected static setParagraphLeading(Lcom/itextpdf/text/Paragraph;Ljava/lang/String;)V
    .locals 8
    .parameter "paragraph"
    .parameter "leading"

    .prologue
    const/high16 v7, 0x3fc0

    const/4 v6, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    .line 306
    :goto_0
    return-void

    .line 290
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, " ,"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v1, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, v:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 294
    .local v3, v1:F
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v1           #tk:Ljava/util/StringTokenizer;
    .end local v2           #v:Ljava/lang/String;
    .end local v3           #v1:F
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #tk:Ljava/util/StringTokenizer;
    .restart local v2       #v:Ljava/lang/String;
    .restart local v3       #v1:F
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 301
    .local v4, v2:F
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;
    .locals 4
    .parameter "content"
    .parameter "chain"

    .prologue
    const/high16 v3, 0x4000

    .line 196
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->getFont(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Font;

    move-result-object v1

    .line 197
    .local v1, font:Lcom/itextpdf/text/Font;
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 198
    .local v0, ck:Lcom/itextpdf/text/Chunk;
    const-string v2, "sub"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    .line 202
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Chunk;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)Lcom/itextpdf/text/Chunk;

    .line 203
    return-object v0

    .line 200
    :cond_1
    const-string v2, "sup"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    goto :goto_0
.end method

.method public createImage(Ljava/lang/String;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;Lcom/itextpdf/text/html/simpleparser/ImageProvider;Ljava/util/HashMap;Ljava/lang/String;)Lcom/itextpdf/text/Image;
    .locals 17
    .parameter "src"
    .parameter
    .parameter "chain"
    .parameter "document"
    .parameter "img_provider"
    .parameter
    .parameter "img_baseurl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/text/html/simpleparser/ChainedProperties;",
            "Lcom/itextpdf/text/DocListener;",
            "Lcom/itextpdf/text/html/simpleparser/ImageProvider;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/Image;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/itextpdf/text/Image;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    .local p2, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, img_store:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/Image;>;"
    const/4 v10, 0x0

    .line 404
    .local v10, img:Lcom/itextpdf/text/Image;
    if-eqz p5, :cond_0

    .line 405
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/html/simpleparser/ImageProvider;->getImage(Ljava/lang/String;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;)Lcom/itextpdf/text/Image;

    move-result-object v10

    .line 407
    :cond_0
    if-nez v10, :cond_1

    if-eqz p6, :cond_1

    .line 408
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/Image;

    .line 409
    .local v12, tim:Lcom/itextpdf/text/Image;
    if-eqz v12, :cond_1

    .line 410
    invoke-static {v12}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v10

    .line 412
    .end local v12           #tim:Lcom/itextpdf/text/Image;
    :cond_1
    if-eqz v10, :cond_2

    move-object v15, v10

    .line 457
    :goto_0
    return-object v15

    .line 416
    :cond_2
    const-string v15, "http"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    if-eqz p7, :cond_4

    .line 417
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v10

    .line 426
    if-nez v10, :cond_6

    .line 427
    const/4 v15, 0x0

    goto :goto_0

    .line 419
    :cond_4
    if-nez v10, :cond_3

    const-string v15, "http"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 420
    const-string v15, "image_path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, path:Ljava/lang/String;
    if-nez v11, :cond_5

    .line 422
    const-string v11, ""

    .line 423
    :cond_5
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 429
    .end local v11           #path:Ljava/lang/String;
    :cond_6
    const-string v15, "size"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x4140

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v5

    .line 432
    .local v5, actualFontSize:F
    const/4 v15, 0x0

    cmpg-float v15, v5, v15

    if-gtz v15, :cond_7

    .line 433
    const/high16 v5, 0x4140

    .line 434
    :cond_7
    const-string v15, "width"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 435
    .local v13, width:Ljava/lang/String;
    invoke-static {v13, v5}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v14

    .line 436
    .local v14, widthInPoints:F
    const-string v15, "height"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 437
    .local v8, height:Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v9

    .line 438
    .local v9, heightInPoints:F
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-lez v15, :cond_b

    const/4 v15, 0x0

    cmpl-float v15, v9, v15

    if-lez v15, :cond_b

    .line 439
    invoke-virtual {v10, v14, v9}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    .line 450
    :cond_8
    :goto_2
    const-string v15, "before"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, before:Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 452
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v10, v15}, Lcom/itextpdf/text/Image;->setSpacingBefore(F)V

    .line 453
    :cond_9
    const-string v15, "after"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, after:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 455
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v10, v15}, Lcom/itextpdf/text/Image;->setSpacingAfter(F)V

    .line 456
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    move-object v15, v10

    .line 457
    goto/16 :goto_0

    .line 440
    .end local v6           #after:Ljava/lang/String;
    .end local v7           #before:Ljava/lang/String;
    :cond_b
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-lez v15, :cond_c

    .line 441
    invoke-virtual {v10}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v15

    mul-float/2addr v15, v14

    invoke-virtual {v10}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v16

    div-float v9, v15, v16

    .line 443
    invoke-virtual {v10, v14, v9}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    goto :goto_2

    .line 444
    :cond_c
    const/4 v15, 0x0

    cmpl-float v15, v9, v15

    if-lez v15, :cond_8

    .line 445
    invoke-virtual {v10}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v15

    mul-float/2addr v15, v9

    invoke-virtual {v10}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v16

    div-float v14, v15, v16

    .line 447
    invoke-virtual {v10, v14, v9}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    goto :goto_2
.end method

.method public createLineSeparator(Ljava/util/Map;F)Lcom/itextpdf/text/pdf/draw/LineSeparator;
    .locals 11
    .parameter
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;F)",
            "Lcom/itextpdf/text/pdf/draw/LineSeparator;"
        }
    .end annotation

    .prologue
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v10, 0x4140

    const/4 v5, 0x0

    .line 359
    const/high16 v1, 0x3f80

    .line 360
    .local v1, lineWidth:F
    const-string v0, "size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 361
    .local v6, size:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 362
    invoke-static {v6, v10}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v7

    .line 363
    .local v7, tmpSize:F
    cmpl-float v0, v7, v5

    if-lez v0, :cond_0

    .line 364
    move v1, v7

    .line 367
    .end local v7           #tmpSize:F
    :cond_0
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 368
    .local v9, width:Ljava/lang/String;
    const/high16 v2, 0x42c8

    .line 369
    .local v2, percentage:F
    if-eqz v9, :cond_2

    .line 370
    invoke-static {v9, v10}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v8

    .line 371
    .local v8, tmpWidth:F
    cmpl-float v0, v8, v5

    if-lez v0, :cond_1

    move v2, v8

    .line 372
    :cond_1
    const-string v0, "%"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    const/high16 v2, 0x42c8

    .line 376
    .end local v8           #tmpWidth:F
    :cond_2
    const/4 v3, 0x0

    .line 378
    .local v3, lineColor:Lcom/itextpdf/text/BaseColor;
    const-string v0, "align"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v4

    .line 379
    .local v4, align:I
    new-instance v0, Lcom/itextpdf/text/pdf/draw/LineSeparator;

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/draw/LineSeparator;-><init>(FFLcom/itextpdf/text/BaseColor;IF)V

    return-object v0
.end method

.method public createList(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/List;
    .locals 5
    .parameter "tag"
    .parameter "chain"

    .prologue
    const/4 v4, 0x1

    .line 467
    const-string v2, "ul"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    new-instance v1, Lcom/itextpdf/text/List;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/text/List;-><init>(Z)V

    .line 469
    .local v1, list:Lcom/itextpdf/text/List;
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/List;->setListSymbol(Ljava/lang/String;)V

    .line 475
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/Float;

    const-string v3, "indent"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    return-object v1

    .line 472
    .end local v1           #list:Lcom/itextpdf/text/List;
    :cond_0
    new-instance v1, Lcom/itextpdf/text/List;

    invoke-direct {v1, v4}, Lcom/itextpdf/text/List;-><init>(Z)V

    .restart local v1       #list:Lcom/itextpdf/text/List;
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/List;->setAutoindent(Z)V

    goto :goto_1
.end method

.method public createListItem(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/ListItem;
    .locals 1
    .parameter "chain"

    .prologue
    .line 225
    new-instance v0, Lcom/itextpdf/text/ListItem;

    invoke-direct {v0}, Lcom/itextpdf/text/ListItem;-><init>()V

    .line 226
    .local v0, item:Lcom/itextpdf/text/ListItem;
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->updateElement(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 227
    return-object v0
.end method

.method public createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;
    .locals 1
    .parameter "chain"

    .prologue
    .line 213
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 214
    .local v0, paragraph:Lcom/itextpdf/text/Paragraph;
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->updateElement(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 215
    return-object v0
.end method

.method public getFont(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Font;
    .locals 11
    .parameter "chain"

    .prologue
    const/4 v3, 0x1

    .line 119
    const-string v0, "face"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, face:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "font-family"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_1
    if-eqz v1, :cond_5

    .line 131
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v8, v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v8, tok:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_3
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->provider:Lcom/itextpdf/text/FontProvider;

    invoke-interface {v0, v1}, Lcom/itextpdf/text/FontProvider;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    .end local v8           #tok:Ljava/util/StringTokenizer;
    :cond_5
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, encoding:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 146
    const-string v2, "Cp1252"

    .line 151
    :cond_6
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, value:Ljava/lang/String;
    const/high16 v4, 0x4140

    .line 153
    .local v4, size:F
    if-eqz v9, :cond_7

    .line 154
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 157
    :cond_7
    const/4 v5, 0x0

    .line 160
    .local v5, style:I
    const-string v0, "text-decoration"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, decoration:Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    const-string v0, "underline"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    or-int/lit8 v5, v5, 0x4

    .line 169
    :cond_8
    :goto_0
    const-string v0, "i"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    or-int/lit8 v5, v5, 0x2

    .line 172
    :cond_9
    const-string v0, "b"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    or-int/lit8 v5, v5, 0x1

    .line 175
    :cond_a
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    or-int/lit8 v5, v5, 0x4

    .line 178
    :cond_b
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    or-int/lit8 v5, v5, 0x8

    .line 182
    :cond_c
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/html/HtmlUtilities;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    .line 185
    .local v6, color:Lcom/itextpdf/text/BaseColor;
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->provider:Lcom/itextpdf/text/FontProvider;

    invoke-interface/range {v0 .. v6}, Lcom/itextpdf/text/FontProvider;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0

    .line 164
    .end local v6           #color:Lcom/itextpdf/text/BaseColor;
    :cond_d
    const-string v0, "line-through"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    or-int/lit8 v5, v5, 0x8

    goto :goto_0
.end method

.method public getFontProvider()Lcom/itextpdf/text/FontProvider;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->provider:Lcom/itextpdf/text/FontProvider;

    return-object v0
.end method

.method public getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 12
    .parameter "chain"

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x2c

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    .line 317
    const-string v6, "hyphenation"

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 347
    :goto_0
    return-object v6

    .line 323
    :cond_1
    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 324
    .local v3, pos:I
    if-ne v3, v9, :cond_2

    .line 325
    new-instance v6, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v6, v5, v7, v8, v8}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, lang:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 332
    if-ne v3, v9, :cond_3

    .line 333
    new-instance v6, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v6, v1, v0, v8, v8}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v4, 0x2

    .line 338
    .local v4, rightMin:I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 341
    if-ne v3, v9, :cond_4

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 347
    .local v2, leftMin:I
    :goto_1
    new-instance v6, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v6, v1, v0, v2, v4}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 344
    .end local v2           #leftMin:I
    :cond_4
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 345
    .restart local v2       #leftMin:I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public setFontProvider(Lcom/itextpdf/text/FontProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->provider:Lcom/itextpdf/text/FontProvider;

    .line 99
    return-void
.end method

.method protected updateElement(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V
    .locals 2
    .parameter "paragraph"
    .parameter "chain"

    .prologue
    .line 238
    const-string v1, "align"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 241
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V

    .line 243
    const-string v1, "leading"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->setParagraphLeading(Lcom/itextpdf/text/Paragraph;Ljava/lang/String;)V

    .line 245
    const-string v1, "after"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 253
    :cond_0
    :goto_0
    const-string v1, "after"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    .line 256
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 261
    :cond_1
    :goto_1
    const-string v1, "extraparaspace"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_2

    .line 264
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setExtraParagraphSpace(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    :cond_2
    :goto_2
    const-string v1, "indent"

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_3

    .line 272
    :try_start_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationLeft(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    :cond_3
    :goto_3
    return-void

    .line 273
    :catch_0
    move-exception v1

    goto :goto_3

    .line 265
    :catch_1
    move-exception v1

    goto :goto_2

    .line 257
    :catch_2
    move-exception v1

    goto :goto_1

    .line 249
    :catch_3
    move-exception v1

    goto :goto_0
.end method
