.class public Lcom/itextpdf/text/pdf/PushbuttonField;
.super Lcom/itextpdf/text/pdf/BaseField;
.source "PushbuttonField.java"


# static fields
.field public static final LAYOUT_ICON_LEFT_LABEL_RIGHT:I = 0x5

.field public static final LAYOUT_ICON_ONLY:I = 0x2

.field public static final LAYOUT_ICON_TOP_LABEL_BOTTOM:I = 0x3

.field public static final LAYOUT_LABEL_LEFT_ICON_RIGHT:I = 0x6

.field public static final LAYOUT_LABEL_ONLY:I = 0x1

.field public static final LAYOUT_LABEL_OVER_ICON:I = 0x7

.field public static final LAYOUT_LABEL_TOP_ICON_BOTTOM:I = 0x4

.field public static final SCALE_ICON_ALWAYS:I = 0x1

.field public static final SCALE_ICON_IS_TOO_BIG:I = 0x3

.field public static final SCALE_ICON_IS_TOO_SMALL:I = 0x4

.field public static final SCALE_ICON_NEVER:I = 0x2


# instance fields
.field private iconFitToBounds:Z

.field private iconHorizontalAdjustment:F

.field private iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field private iconVerticalAdjustment:F

.field private image:Lcom/itextpdf/text/Image;

.field private layout:I

.field private proportionalIcon:Z

.field private scaleIcon:I

.field private template:Lcom/itextpdf/text/pdf/PdfTemplate;

.field private tp:Lcom/itextpdf/text/pdf/PdfTemplate;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "box"
    .parameter "fieldName"

    .prologue
    const/high16 v1, 0x3f00

    const/4 v0, 0x1

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/BaseField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 109
    iput v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    .line 124
    iput v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    .line 129
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->proportionalIcon:Z

    .line 134
    iput v1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconVerticalAdjustment:F

    .line 139
    iput v1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconHorizontalAdjustment:F

    .line 157
    return-void
.end method

.method private calculateFontSize(FF)F
    .locals 7
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 298
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PushbuttonField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v3

    .line 299
    .local v3, ufont:Lcom/itextpdf/text/pdf/BaseFont;
    iget v1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->fontSize:F

    .line 300
    .local v1, fsize:F
    cmpl-float v4, v1, v6

    if-nez v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v0

    .line 302
    .local v0, bw:F
    cmpl-float v4, v0, v6

    if-nez v4, :cond_1

    .line 303
    const/high16 v1, 0x4140

    .line 306
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    sub-float v4, v5, v4

    div-float v2, p2, v4

    .line 307
    .local v2, nfsize:F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 308
    const/high16 v4, 0x4080

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 309
    const/high16 v1, 0x4080

    .line 311
    .end local v0           #bw:F
    .end local v2           #nfsize:F
    :cond_0
    return v1

    .line 305
    .restart local v0       #bw:F
    :cond_1
    div-float v1, p1, v0

    goto :goto_0
.end method


# virtual methods
.method public getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PushbuttonField;->getBorderAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v11

    .line 322
    .local v11, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    new-instance v24, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 323
    .local v24, box:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v3, :cond_2

    .line 550
    :cond_1
    :goto_0
    return-object v11

    .line 326
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v3, :cond_1

    .line 328
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PushbuttonField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v44

    .line 329
    .local v44, ufont:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderStyle:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    :cond_4
    const/16 v21, 0x1

    .line 330
    .local v21, borderExtra:Z
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    const/high16 v6, 0x4000

    mul-float/2addr v4, v6

    sub-float v30, v3, v4

    .line 331
    .local v30, h:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    move/from16 v25, v0

    .line 332
    .local v25, bw2:F
    if-eqz v21, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float v30, v30, v3

    .line 334
    const/high16 v3, 0x4000

    mul-float v25, v25, v3

    .line 336
    :cond_5
    if-eqz v21, :cond_e

    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    mul-float v40, v3, v4

    .line 337
    .local v40, offsetX:F
    :goto_2
    const/high16 v3, 0x3f80

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v40

    .line 338
    move/from16 v0, v25

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v39

    .line 339
    .local v39, offX:F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 340
    const/high16 v42, 0x7fc0

    .line 341
    .local v42, textX:F
    const/16 v43, 0x0

    .line 342
    .local v43, textY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->fontSize:F

    move/from16 v29, v0

    .line 343
    .local v29, fsize:F
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float v4, v4, v39

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    sub-float v45, v3, v4

    .line 344
    .local v45, wt:F
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float v4, v4, v39

    sub-float v32, v3, v4

    .line 345
    .local v32, ht:F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconFitToBounds:Z

    if-eqz v3, :cond_f

    const/16 v20, 0x0

    .line 346
    .local v20, adj:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    move/from16 v36, v0

    .line 347
    .local v36, nlayout:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v3, :cond_6

    .line 348
    const/16 v36, 0x1

    .line 349
    :cond_6
    const/16 v33, 0x0

    .line 351
    .local v33, iconBox:Lcom/itextpdf/text/Rectangle;
    :goto_4
    packed-switch v36, :pswitch_data_0

    .line 434
    :cond_7
    :goto_5
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    add-float v3, v3, v39

    cmpg-float v3, v43, v3

    if-gez v3, :cond_8

    .line 435
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    add-float v43, v3, v39

    .line 436
    :cond_8
    if-eqz v33, :cond_a

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a

    .line 437
    :cond_9
    const/16 v33, 0x0

    .line 438
    :cond_a
    const/16 v31, 0x0

    .line 439
    .local v31, haveIcon:Z
    const/16 v23, 0x0

    .line 440
    .local v23, boundingBoxWidth:F
    const/16 v22, 0x0

    .line 441
    .local v22, boundingBoxHeight:F
    const/16 v34, 0x0

    .line 442
    .local v34, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v33, :cond_b

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    if-eqz v3, :cond_21

    .line 444
    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v4, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    invoke-direct {v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FRM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v6}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v12}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 448
    const/16 v31, 0x1

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v23

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v22

    .line 472
    :cond_b
    :goto_6
    if-eqz v31, :cond_c

    .line 473
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    div-float v5, v3, v23

    .line 474
    .local v5, icx:F
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    div-float v8, v3, v22

    .line 475
    .local v8, icy:F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->proportionalIcon:Z

    if-eqz v3, :cond_23

    .line 476
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    packed-switch v3, :pswitch_data_1

    .line 489
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 492
    :goto_7
    move v8, v5

    .line 511
    :goto_8
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    mul-float v6, v23, v5

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconHorizontalAdjustment:F

    mul-float/2addr v4, v6

    add-float v9, v3, v4

    .line 512
    .local v9, xpos:F
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    mul-float v6, v22, v8

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconVerticalAdjustment:F

    mul-float/2addr v4, v6

    add-float v10, v3, v4

    .line 513
    .local v10, ypos:F
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 514
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {v11, v3, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 515
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 516
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-eqz v3, :cond_24

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfAppearance;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 532
    :goto_9
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 534
    .end local v5           #icx:F
    .end local v8           #icy:F
    .end local v9           #xpos:F
    .end local v10           #ypos:F
    :cond_c
    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 536
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float v4, v4, v39

    sub-float/2addr v3, v4

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    const/high16 v6, 0x4000

    mul-float v6, v6, v39

    sub-float/2addr v4, v6

    move/from16 v0, v39

    move/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 537
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 538
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_27

    .line 540
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetGrayFill()V

    .line 543
    :goto_a
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 544
    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 545
    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v11, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setTextMatrix(FF)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->showText(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    .line 548
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    goto/16 :goto_0

    .line 329
    .end local v20           #adj:F
    .end local v21           #borderExtra:Z
    .end local v22           #boundingBoxHeight:F
    .end local v23           #boundingBoxWidth:F
    .end local v25           #bw2:F
    .end local v29           #fsize:F
    .end local v30           #h:F
    .end local v31           #haveIcon:Z
    .end local v32           #ht:F
    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    .end local v34           #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v36           #nlayout:I
    .end local v39           #offX:F
    .end local v40           #offsetX:F
    .end local v42           #textX:F
    .end local v43           #textY:F
    .end local v45           #wt:F
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 336
    .restart local v21       #borderExtra:Z
    .restart local v25       #bw2:F
    .restart local v30       #h:F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    move/from16 v40, v0

    goto/16 :goto_2

    .line 345
    .restart local v29       #fsize:F
    .restart local v32       #ht:F
    .restart local v39       #offX:F
    .restart local v40       #offsetX:F
    .restart local v42       #textX:F
    .restart local v43       #textY:F
    .restart local v45       #wt:F
    :cond_f
    const/high16 v3, 0x3f80

    add-float v20, v39, v3

    goto/16 :goto_3

    .line 354
    .restart local v20       #adj:F
    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    .restart local v36       #nlayout:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x0

    cmpl-float v3, v45, v3

    if-lez v3, :cond_10

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_10

    .line 355
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PushbuttonField;->calculateFontSize(FF)F

    move-result v29

    .line 356
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v42, v3, v4

    .line 357
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v43, v3, v4

    .line 360
    :cond_10
    :pswitch_1
    const/4 v3, 0x7

    move/from16 v0, v36

    if-eq v0, v3, :cond_11

    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_7

    .line 361
    :cond_11
    new-instance v33, Lcom/itextpdf/text/Rectangle;

    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    add-float v3, v3, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    add-float v4, v4, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    sub-float v6, v6, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    sub-float v7, v7, v20

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_5

    .line 364
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    cmpg-float v3, v45, v3

    if-lez v3, :cond_12

    const/4 v3, 0x0

    cmpg-float v3, v32, v3

    if-gtz v3, :cond_13

    .line 365
    :cond_12
    const/16 v36, 0x2

    .line 366
    goto/16 :goto_4

    .line 368
    :cond_13
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const v4, 0x3eb33333

    mul-float/2addr v3, v4

    sub-float v35, v3, v39

    .line 369
    .local v35, nht:F
    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-lez v3, :cond_14

    .line 370
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PushbuttonField;->calculateFontSize(FF)F

    move-result v29

    .line 373
    :goto_b
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v42, v3, v4

    .line 374
    const/4 v3, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v3

    sub-float v43, v39, v3

    .line 375
    new-instance v33, Lcom/itextpdf/text/Rectangle;

    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    add-float v3, v3, v20

    add-float v4, v43, v29

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    sub-float v6, v6, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    sub-float v7, v7, v20

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 376
    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_5

    .line 372
    :cond_14
    const/high16 v29, 0x4080

    goto :goto_b

    .line 378
    .end local v35           #nht:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    cmpg-float v3, v45, v3

    if-lez v3, :cond_15

    const/4 v3, 0x0

    cmpg-float v3, v32, v3

    if-gtz v3, :cond_16

    .line 379
    :cond_15
    const/16 v36, 0x2

    .line 380
    goto/16 :goto_4

    .line 382
    :cond_16
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const v4, 0x3eb33333

    mul-float/2addr v3, v4

    sub-float v35, v3, v39

    .line 383
    .restart local v35       #nht:F
    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-lez v3, :cond_18

    .line 384
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PushbuttonField;->calculateFontSize(FF)F

    move-result v29

    .line 387
    :goto_c
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v42, v3, v4

    .line 388
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    sub-float v3, v3, v39

    sub-float v43, v3, v29

    .line 389
    cmpg-float v3, v43, v39

    if-gez v3, :cond_17

    .line 390
    move/from16 v43, v39

    .line 391
    :cond_17
    new-instance v33, Lcom/itextpdf/text/Rectangle;

    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    add-float v3, v3, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    add-float v4, v4, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    sub-float v6, v6, v20

    const/4 v7, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v7

    add-float v7, v7, v43

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 392
    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_5

    .line 386
    :cond_18
    const/high16 v29, 0x4080

    goto :goto_c

    .line 394
    .end local v35           #nht:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    cmpg-float v3, v45, v3

    if-lez v3, :cond_19

    const/4 v3, 0x0

    cmpg-float v3, v32, v3

    if-gtz v3, :cond_1a

    .line 395
    :cond_19
    const/16 v36, 0x2

    .line 396
    goto/16 :goto_4

    .line 398
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    const v4, 0x3eb33333

    mul-float/2addr v3, v4

    sub-float v38, v3, v39

    .line 399
    .local v38, nw:F
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_1b

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PushbuttonField;->calculateFontSize(FF)F

    move-result v29

    .line 403
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v3

    cmpl-float v3, v3, v45

    if-ltz v3, :cond_1c

    .line 404
    const/16 v36, 0x1

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->fontSize:F

    move/from16 v29, v0

    .line 406
    goto/16 :goto_4

    .line 402
    :cond_1b
    const/high16 v29, 0x4080

    goto :goto_d

    .line 408
    :cond_1c
    const/high16 v3, 0x3f80

    add-float v42, v39, v3

    .line 409
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v43, v3, v4

    .line 410
    new-instance v33, Lcom/itextpdf/text/Rectangle;

    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v3

    add-float v3, v3, v42

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    add-float v4, v4, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    sub-float v6, v6, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    sub-float v7, v7, v20

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 411
    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_5

    .line 413
    .end local v38           #nw:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    cmpg-float v3, v45, v3

    if-lez v3, :cond_1d

    const/4 v3, 0x0

    cmpg-float v3, v32, v3

    if-gtz v3, :cond_1e

    .line 414
    :cond_1d
    const/16 v36, 0x2

    .line 415
    goto/16 :goto_4

    .line 417
    :cond_1e
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    const v4, 0x3eb33333

    mul-float/2addr v3, v4

    sub-float v38, v3, v39

    .line 418
    .restart local v38       #nw:F
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_1f

    .line 419
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PushbuttonField;->calculateFontSize(FF)F

    move-result v29

    .line 422
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v3

    cmpl-float v3, v3, v45

    if-ltz v3, :cond_20

    .line 423
    const/16 v36, 0x1

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->fontSize:F

    move/from16 v29, v0

    .line 425
    goto/16 :goto_4

    .line 421
    :cond_1f
    const/high16 v29, 0x4080

    goto :goto_e

    .line 427
    :cond_20
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v4

    sub-float/2addr v3, v4

    sub-float v3, v3, v39

    const/high16 v4, 0x3f80

    sub-float v42, v3, v4

    .line 428
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v43, v3, v4

    .line 429
    new-instance v33, Lcom/itextpdf/text/Rectangle;

    .end local v33           #iconBox:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    add-float v3, v3, v20

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    add-float v4, v4, v20

    const/high16 v6, 0x3f80

    sub-float v6, v42, v6

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    sub-float v7, v7, v20

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v33       #iconBox:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_5

    .line 452
    .end local v38           #nw:F
    .restart local v22       #boundingBoxHeight:F
    .restart local v23       #boundingBoxWidth:F
    .restart local v31       #haveIcon:Z
    .restart local v34       #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-eqz v3, :cond_22

    .line 453
    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v4, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfTemplate;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfTemplate;->getHeight()F

    move-result v7

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FRM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 457
    const/16 v31, 0x1

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v23

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v22

    goto/16 :goto_6

    .line 461
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v3, :cond_b

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 463
    .local v28, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v28, :cond_b

    .line 464
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->BBOX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v41

    .line 465
    .local v41, r2:Lcom/itextpdf/text/Rectangle;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v34

    .line 466
    const/16 v31, 0x1

    .line 467
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v23

    .line 468
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v22

    goto/16 :goto_6

    .line 478
    .end local v28           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v41           #r2:Lcom/itextpdf/text/Rectangle;
    .restart local v5       #icx:F
    .restart local v8       #icy:F
    :pswitch_6
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 479
    const/high16 v3, 0x3f80

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 480
    goto/16 :goto_7

    .line 482
    :pswitch_7
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 483
    const/high16 v3, 0x3f80

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 484
    goto/16 :goto_7

    .line 486
    :pswitch_8
    const/high16 v5, 0x3f80

    .line 487
    goto/16 :goto_7

    .line 495
    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_8

    .line 505
    :pswitch_9
    const/high16 v8, 0x3f80

    move v5, v8

    .line 506
    goto/16 :goto_8

    .line 497
    :pswitch_a
    const/high16 v3, 0x3f80

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 498
    const/high16 v3, 0x3f80

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 499
    goto/16 :goto_8

    .line 501
    :pswitch_b
    const/high16 v3, 0x3f80

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 502
    const/high16 v3, 0x3f80

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 503
    goto/16 :goto_8

    .line 520
    .restart local v9       #xpos:F
    .restart local v10       #ypos:F
    :cond_24
    const/16 v26, 0x0

    .line 521
    .local v26, cox:F
    const/16 v27, 0x0

    .line 522
    .local v27, coy:F
    if-eqz v34, :cond_26

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_26

    .line 523
    const/4 v3, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v37

    .line 524
    .local v37, nm:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v37, :cond_25

    .line 525
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v26

    .line 526
    :cond_25
    const/4 v3, 0x5

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v37

    .line 527
    if-eqz v37, :cond_26

    .line 528
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v27

    .line 530
    .end local v37           #nm:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->FRM:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v15, 0x0

    const/16 v16, 0x0

    mul-float v3, v26, v5

    sub-float v18, v9, v3

    mul-float v3, v27, v8

    sub-float v19, v10, v3

    move v14, v5

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/text/pdf/PdfAppearance;->addTemplateReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfName;FFFFFF)V

    goto/16 :goto_9

    .line 542
    .end local v5           #icx:F
    .end local v8           #icy:F
    .end local v9           #xpos:F
    .end local v10           #ypos:F
    .end local v26           #cox:F
    .end local v27           #coy:F
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PushbuttonField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v11, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_a

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 476
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 495
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 560
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfFormField;->createPushButton(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    .line 561
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->box:Lcom/itextpdf/text/Rectangle;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 562
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->fieldName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 564
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->options:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 565
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 566
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->options:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 567
    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 570
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKNormalCaption(Ljava/lang/String;)V

    .line 571
    :cond_2
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->rotation:I

    if-eqz v2, :cond_3

    .line 572
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->rotation:I

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKRotation(I)V

    .line 573
    :cond_3
    new-instance v2, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    iget v3, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderWidth:F

    iget v4, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderStyle:I

    new-instance v5, Lcom/itextpdf/text/pdf/PdfDashPattern;

    const/high16 v8, 0x4040

    invoke-direct {v5, v8}, Lcom/itextpdf/text/pdf/PdfDashPattern;-><init>(F)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FILcom/itextpdf/text/pdf/PdfDashPattern;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 574
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PushbuttonField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v7

    .line 575
    .local v7, tpa:Lcom/itextpdf/text/pdf/PdfAppearance;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 576
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 577
    .local v6, da:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PushbuttonField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->fontSize:F

    invoke-virtual {v6, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 578
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v2, :cond_8

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 582
    :goto_0
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 583
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v2, :cond_4

    .line 584
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 585
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v2, :cond_5

    .line 586
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 587
    :cond_5
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->visibility:I

    packed-switch v2, :pswitch_data_0

    .line 597
    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 600
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-eqz v2, :cond_6

    .line 601
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->tp:Lcom/itextpdf/text/pdf/PdfTemplate;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKNormalIcon(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 602
    :cond_6
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKTextPosition(I)V

    .line 603
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    .line 604
    .local v1, scale:Lcom/itextpdf/text/pdf/PdfName;
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 605
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    .line 610
    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->proportionalIcon:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    :goto_3
    iget v3, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconHorizontalAdjustment:F

    iget v4, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconVerticalAdjustment:F

    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconFitToBounds:Z

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKIconFit(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;FFZ)V

    .line 612
    return-object v0

    .line 581
    .end local v1           #scale:Lcom/itextpdf/text/pdf/PdfName;
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v6, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 589
    :pswitch_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_1

    .line 594
    :pswitch_2
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_1

    .line 606
    .restart local v1       #scale:Lcom/itextpdf/text/pdf/PdfName;
    :cond_9
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    if-ne v2, v10, :cond_a

    .line 607
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 608
    :cond_a
    iget v2, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    if-ne v2, v9, :cond_7

    .line 609
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 610
    :cond_b
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_3

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getIconHorizontalAdjustment()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconHorizontalAdjustment:F

    return v0
.end method

.method public getIconReference()Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method

.method public getIconVerticalAdjustment()F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconVerticalAdjustment:F

    return v0
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    return v0
.end method

.method public getScaleIcon()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    return v0
.end method

.method public getTemplate()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    return-object v0
.end method

.method public isIconFitToBounds()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconFitToBounds:Z

    return v0
.end method

.method public isProportionalIcon()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->proportionalIcon:Z

    return v0
.end method

.method public setIconFitToBounds(Z)V
    .locals 0
    .parameter "iconFitToBounds"

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconFitToBounds:Z

    .line 632
    return-void
.end method

.method public setIconHorizontalAdjustment(F)V
    .locals 1
    .parameter "iconHorizontalAdjustment"

    .prologue
    .line 290
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 291
    const/4 p1, 0x0

    .line 294
    :cond_0
    :goto_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconHorizontalAdjustment:F

    .line 295
    return-void

    .line 292
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 293
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method public setIconReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 0
    .parameter "iconReference"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconReference:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 653
    return-void
.end method

.method public setIconVerticalAdjustment(F)V
    .locals 1
    .parameter "iconVerticalAdjustment"

    .prologue
    .line 268
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 269
    const/4 p1, 0x0

    .line 272
    :cond_0
    :goto_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->iconVerticalAdjustment:F

    .line 273
    return-void

    .line 270
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 271
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method public setImage(Lcom/itextpdf/text/Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 196
    return-void
.end method

.method public setLayout(I)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 176
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layout.out.of.bounds"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->layout:I

    .line 179
    return-void
.end method

.method public setProportionalIcon(Z)V
    .locals 0
    .parameter "proportionalIcon"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->proportionalIcon:Z

    .line 251
    return-void
.end method

.method public setScaleIcon(I)V
    .locals 1
    .parameter "scaleIcon"

    .prologue
    .line 231
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 232
    :cond_0
    const/4 p1, 0x1

    .line 233
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->scaleIcon:I

    .line 234
    return-void
.end method

.method public setTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->template:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PushbuttonField;->image:Lcom/itextpdf/text/Image;

    .line 213
    return-void
.end method
