.class public abstract Lorg/achartengine/chart/AbstractChart;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDrawPoints(FFFFII)[F
    .locals 8
    .parameter "p1x"
    .parameter "p1y"
    .parameter "p2x"
    .parameter "p2y"
    .parameter "screenHeight"
    .parameter "screenWidth"

    .prologue
    const/4 v7, 0x0

    .line 181
    int-to-float v5, p4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    .line 183
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 184
    .local v4, m:F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 185
    .local v0, drawP1x:F
    int-to-float v1, p4

    .line 187
    .local v1, drawP1y:F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_2

    .line 190
    const/4 v0, 0x0

    .line 191
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    .line 215
    .end local v4           #m:F
    :cond_0
    :goto_0
    int-to-float v5, p4

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7

    .line 216
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 217
    .restart local v4       #m:F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 218
    .local v2, drawP2x:F
    int-to-float v3, p4

    .line 219
    .local v3, drawP2y:F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_6

    .line 220
    const/4 v2, 0x0

    .line 221
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    .line 243
    .end local v4           #m:F
    :cond_1
    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v3, v5, v6

    return-object v5

    .line 192
    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .restart local v4       #m:F
    :cond_2
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 195
    int-to-float v0, p5

    .line 196
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    goto :goto_0

    .line 198
    .end local v0           #drawP1x:F
    .end local v1           #drawP1y:F
    .end local v4           #m:F
    :cond_3
    cmpg-float v5, p1, v7

    if-gez v5, :cond_5

    .line 199
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 200
    .restart local v4       #m:F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 201
    .restart local v0       #drawP1x:F
    const/4 v1, 0x0

    .line 202
    .restart local v1       #drawP1y:F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_4

    .line 203
    const/4 v0, 0x0

    .line 204
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    goto :goto_0

    .line 205
    :cond_4
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 206
    int-to-float v0, p5

    .line 207
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    goto :goto_0

    .line 211
    .end local v0           #drawP1x:F
    .end local v1           #drawP1y:F
    .end local v4           #m:F
    :cond_5
    move v0, p0

    .line 212
    .restart local v0       #drawP1x:F
    move v1, p1

    .restart local v1       #drawP1y:F
    goto :goto_0

    .line 222
    .restart local v2       #drawP2x:F
    .restart local v3       #drawP2y:F
    .restart local v4       #m:F
    :cond_6
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 223
    int-to-float v2, p5

    .line 224
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    goto :goto_1

    .line 226
    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .end local v4           #m:F
    :cond_7
    cmpg-float v5, p3, v7

    if-gez v5, :cond_9

    .line 227
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 228
    .restart local v4       #m:F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 229
    .restart local v2       #drawP2x:F
    const/4 v3, 0x0

    .line 230
    .restart local v3       #drawP2y:F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_8

    .line 231
    const/4 v2, 0x0

    .line 232
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    goto :goto_1

    .line 233
    :cond_8
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 234
    int-to-float v2, p5

    .line 235
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    goto :goto_1

    .line 239
    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .end local v4           #m:F
    :cond_9
    move v2, p2

    .line 240
    .restart local v2       #drawP2x:F
    move v3, p3

    .restart local v3       #drawP2y:F
    goto/16 :goto_1
.end method

.method private getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "width"
    .parameter "paint"

    .prologue
    .line 315
    move-object v2, p1

    .line 316
    .local v2, newText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 317
    .local v1, length:I
    const/4 v0, 0x0

    .line 318
    .local v0, diff:I
    :goto_0
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    if-ge v0, v1, :cond_0

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    sub-int v5, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 322
    :cond_0
    if-ne v0, v1, :cond_1

    .line 323
    const-string v2, "..."

    .line 325
    :cond_1
    return-object v2
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method protected drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
    .parameter "renderer"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"
    .parameter "newColor"
    .parameter "color"

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isApplyBackgroundColor()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 69
    :cond_0
    if-eqz p8, :cond_2

    .line 70
    invoke-virtual {p7, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p4, p6

    int-to-float v4, v0

    move-object v0, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;)V
    .locals 32
    .parameter "canvas"
    .parameter "labelText"
    .parameter "renderer"
    .parameter
    .parameter "centerX"
    .parameter "centerY"
    .parameter "shortRadius"
    .parameter "longRadius"
    .parameter "currentAngle"
    .parameter "angle"
    .parameter "left"
    .parameter "right"
    .parameter "color"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/String;",
            "Lorg/achartengine/renderer/DefaultRenderer;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;IIFFFFIII",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    .local p4, prevLabelsBounds:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 369
    move-object/from16 v0, p14

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    const/high16 v5, 0x42b4

    const/high16 v6, 0x4000

    div-float v6, p10, v6

    add-float v6, v6, p9

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 371
    .local v19, rAngle:D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 372
    .local v21, sinValue:D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 373
    .local v11, cosValue:D
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 374
    .local v26, x1:I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 375
    .local v29, y1:I
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 376
    .local v27, x2:I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 378
    .local v30, y2:I
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v23

    .line 379
    .local v23, size:F
    const/high16 v5, 0x4000

    div-float v5, v23, v5

    const/high16 v6, 0x4120

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 380
    .local v13, extra:F
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 381
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 382
    neg-float v13, v13

    .line 383
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 385
    :cond_0
    move/from16 v0, v27

    int-to-float v5, v0

    add-float v28, v5, v13

    .line 386
    .local v28, xLabel:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    .line 387
    .local v31, yLabel:F
    move/from16 v0, p12

    int-to-float v5, v0

    sub-float v24, v5, v28

    .line 388
    .local v24, width:F
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 389
    move/from16 v0, p11

    int-to-float v5, v0

    sub-float v24, v28, v5

    .line 391
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, p14

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/chart/AbstractChart;->getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p2

    .line 392
    move-object/from16 v0, p14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 393
    .local v25, widthLabel:F
    const/16 v17, 0x0

    .line 394
    .local v17, okBounds:Z
    :goto_0
    if-nez v17, :cond_5

    .line 395
    const/4 v14, 0x0

    .line 396
    .local v14, intersects:Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    .line 397
    .local v16, length:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    if-nez v14, :cond_3

    .line 398
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/RectF;

    .line 399
    .local v18, prevLabelBounds:Landroid/graphics/RectF;
    add-float v5, v28, v25

    add-float v6, v31, v23

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const/4 v14, 0x1

    .line 401
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 397
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 404
    .end local v18           #prevLabelBounds:Landroid/graphics/RectF;
    :cond_3
    if-nez v14, :cond_4

    const/16 v17, 0x1

    .line 405
    :goto_2
    goto :goto_0

    .line 404
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 407
    .end local v14           #intersects:Z
    .end local v15           #j:I
    .end local v16           #length:I
    :cond_5
    const/high16 v5, 0x4000

    div-float v5, v23, v5

    sub-float v5, v31, v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 408
    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    move/from16 v0, v27

    int-to-float v6, v0

    move/from16 v0, v30

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-float v8, v5, v13

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v28

    move/from16 v3, v31

    move-object/from16 v4, p14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    new-instance v5, Landroid/graphics/RectF;

    add-float v6, v28, v25

    add-float v7, v31, v23

    move/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v11           #cosValue:D
    .end local v13           #extra:F
    .end local v17           #okBounds:Z
    .end local v19           #rAngle:D
    .end local v21           #sinValue:D
    .end local v23           #size:F
    .end local v24           #width:F
    .end local v25           #widthLabel:F
    .end local v26           #x1:I
    .end local v27           #x2:I
    .end local v28           #xLabel:F
    .end local v29           #y1:I
    .end local v30           #y2:I
    .end local v31           #yLabel:F
    :cond_6
    return-void
.end method

.method protected drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I
    .locals 25
    .parameter "canvas"
    .parameter "renderer"
    .parameter "titles"
    .parameter "left"
    .parameter "right"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "legendSize"
    .parameter "paint"
    .parameter "calculate"

    .prologue
    .line 98
    const/high16 v20, 0x4200

    .line 99
    .local v20, size:F
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    move/from16 v0, p4

    int-to-float v7, v0

    .line 101
    .local v7, currentX:F
    add-int v4, p6, p8

    sub-int v4, v4, p9

    int-to-float v4, v4

    add-float v8, v4, v20

    .line 102
    .local v8, currentY:F
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    move-object/from16 v0, p3

    array-length v4, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 105
    .local v19, sLength:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/achartengine/chart/AbstractChart;->getLegendShapeWidth(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 107
    .local v16, lineSize:F
    aget-object v22, p3, v9

    .line 108
    .local v22, text:Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v4, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    .line 114
    .local v24, widths:[F
    move-object/from16 v0, p10

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 115
    const/16 v21, 0x0

    .line 116
    .local v21, sum:F
    move-object/from16 v11, v24

    .local v11, arr$:[F
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    if-ge v14, v15, :cond_1

    aget v23, v11, v14

    .line 117
    .local v23, value:F
    add-float v21, v21, v23

    .line 116
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 111
    .end local v11           #arr$:[F
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v21           #sum:F
    .end local v23           #value:F
    .end local v24           #widths:[F
    :cond_0
    const v4, -0x333334

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 119
    .restart local v11       #arr$:[F
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v21       #sum:F
    .restart local v24       #widths:[F
    :cond_1
    const/high16 v4, 0x4120

    add-float v4, v4, v16

    add-float v13, v4, v21

    .line 120
    .local v13, extraSize:F
    add-float v12, v7, v13

    .line 122
    .local v12, currentWidth:F
    if-lez v9, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    move/from16 v0, p4

    int-to-float v7, v0

    .line 124
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v4

    add-float/2addr v8, v4

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v4

    add-float v20, v20, v4

    .line 126
    add-float v12, v7, v13

    .line 128
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    move/from16 v0, p5

    int-to-float v4, v0

    sub-float/2addr v4, v7

    sub-float v4, v4, v16

    const/high16 v5, 0x4120

    sub-float v17, v4, v5

    .line 130
    .local v17, maxWidth:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    move/from16 v0, p7

    int-to-float v4, v0

    sub-float/2addr v4, v7

    sub-float v4, v4, v16

    const/high16 v5, 0x4120

    sub-float v17, v4, v5

    .line 133
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v18

    .line 134
    .local v18, nr:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 136
    .end local v17           #maxWidth:F
    .end local v18           #nr:I
    :cond_4
    if-nez p11, :cond_5

    .line 137
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p10

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/AbstractChart;->drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V

    .line 138
    add-float v4, v7, v16

    const/high16 v5, 0x40a0

    add-float/2addr v4, v5

    const/high16 v5, 0x40a0

    add-float/2addr v5, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    :cond_5
    add-float/2addr v7, v13

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 143
    .end local v7           #currentX:F
    .end local v8           #currentY:F
    .end local v9           #i:I
    .end local v11           #arr$:[F
    .end local v12           #currentWidth:F
    .end local v13           #extraSize:F
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #lineSize:F
    .end local v19           #sLength:I
    .end local v21           #sum:F
    .end local v22           #text:Ljava/lang/String;
    .end local v24           #widths:[F
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v4

    add-float v4, v4, v20

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method public abstract drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
.end method

.method protected drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "points"
    .parameter "paint"
    .parameter "circular"

    .prologue
    .line 255
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 256
    .local v7, path:Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 257
    .local v4, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 260
    .local v5, width:I
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v8

    .line 264
    .local v8, tempDrawPoints:[F
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    const/4 v0, 0x2

    aget v0, v8, v0

    const/4 v1, 0x3

    aget v1, v8, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    const/4 v6, 0x4

    .local v6, i:I
    :goto_1
    array-length v0, p2

    if-ge v6, v0, :cond_5

    .line 268
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 267
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 272
    :cond_3
    add-int/lit8 v0, v6, -0x2

    aget v0, p2, v0

    add-int/lit8 v1, v6, -0x1

    aget v1, p2, v1

    aget v2, p2, v6

    add-int/lit8 v3, v6, 0x1

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v8

    .line 274
    if-nez p4, :cond_4

    .line 275
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 277
    :cond_4
    const/4 v0, 0x2

    aget v0, v8, v0

    const/4 v1, 0x3

    aget v1, v8, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 279
    :cond_5
    if-eqz p4, :cond_6

    .line 280
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    :cond_6
    invoke-virtual {p1, v7, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z
    .locals 4
    .parameter "currentWidth"
    .parameter "renderer"
    .parameter "right"
    .parameter "width"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    int-to-float v3, p3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 157
    .local v0, exceed:Z
    :goto_0
    invoke-virtual {p0, p2}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    int-to-float v3, p4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    move v0, v1

    .line 160
    :cond_0
    :goto_1
    return v0

    .end local v0           #exceed:Z
    :cond_1
    move v0, v2

    .line 156
    goto :goto_0

    .restart local v0       #exceed:Z
    :cond_2
    move v0, v2

    .line 158
    goto :goto_1
.end method

.method public abstract getLegendShapeWidth(I)I
.end method

.method protected getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I
    .locals 3
    .parameter "renderer"
    .parameter "defaultHeight"
    .parameter "extraHeight"

    .prologue
    .line 337
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v0

    .line 338
    .local v0, legendSize:I
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 339
    move v0, p2

    .line 341
    :cond_0
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-int v0, v1

    .line 344
    :cond_1
    return v0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 1
    .parameter "screenPoint"

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNullValue(D)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 416
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fefffffffffffffL

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z
    .locals 2
    .parameter "renderer"

    .prologue
    .line 170
    instance-of v0, p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .end local p1
    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v0

    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
