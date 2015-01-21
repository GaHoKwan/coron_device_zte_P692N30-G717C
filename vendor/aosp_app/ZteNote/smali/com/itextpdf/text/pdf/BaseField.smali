.class public abstract Lcom/itextpdf/text/pdf/BaseField;
.super Ljava/lang/Object;
.source "BaseField.java"


# static fields
.field public static final BORDER_WIDTH_MEDIUM:F = 2.0f

.field public static final BORDER_WIDTH_THICK:F = 3.0f

.field public static final BORDER_WIDTH_THIN:F = 1.0f

.field public static final COMB:I = 0x1000000

.field public static final DO_NOT_SCROLL:I = 0x800000

.field public static final DO_NOT_SPELL_CHECK:I = 0x400000

.field public static final EDIT:I = 0x40000

.field public static final FILE_SELECTION:I = 0x100000

.field public static final HIDDEN:I = 0x1

.field public static final HIDDEN_BUT_PRINTABLE:I = 0x3

.field public static final MULTILINE:I = 0x1000

.field public static final MULTISELECT:I = 0x200000

.field public static final PASSWORD:I = 0x2000

.field public static final READ_ONLY:I = 0x1

.field public static final REQUIRED:I = 0x2

.field public static final VISIBLE:I = 0x0

.field public static final VISIBLE_BUT_DOES_NOT_PRINT:I = 0x2

.field private static final fieldKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected alignment:I

.field protected backgroundColor:Lcom/itextpdf/text/BaseColor;

.field protected borderColor:Lcom/itextpdf/text/BaseColor;

.field protected borderStyle:I

.field protected borderWidth:F

.field protected box:Lcom/itextpdf/text/Rectangle;

.field protected fieldName:Ljava/lang/String;

.field protected font:Lcom/itextpdf/text/pdf/BaseFont;

.field protected fontSize:F

.field protected maxCharacterLength:I

.field protected options:I

.field protected rotation:I

.field protected text:Ljava/lang/String;

.field protected textColor:Lcom/itextpdf/text/BaseColor;

.field protected visibility:I

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/BaseField;->fieldKeys:Ljava/util/HashMap;

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/BaseField;->fieldKeys:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 152
    sget-object v0, Lcom/itextpdf/text/pdf/BaseField;->fieldKeys:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "box"
    .parameter "fieldName"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    .line 122
    iput v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/BaseField;->fontSize:F

    .line 128
    iput v1, p0, Lcom/itextpdf/text/pdf/BaseField;->alignment:I

    .line 134
    iput v1, p0, Lcom/itextpdf/text/pdf/BaseField;->rotation:I

    .line 161
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 162
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/BaseField;->setBox(Lcom/itextpdf/text/Rectangle;)V

    .line 163
    iput-object p3, p0, Lcom/itextpdf/text/pdf/BaseField;->fieldName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected static breakLines(Ljava/util/ArrayList;Lcom/itextpdf/text/pdf/BaseFont;FF)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .parameter "font"
    .parameter "fontSize"
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            "FF)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, breaks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v7, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, ck:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_8

    .line 296
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 297
    const/4 v10, 0x0

    .line 298
    .local v10, w:F
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 299
    .local v3, cs:[C
    array-length v6, v3

    .line 301
    .local v6, len:I
    const/4 v9, 0x0

    .line 302
    .local v9, state:I
    const/4 v5, -0x1

    .line 303
    .local v5, lastspace:I
    const/4 v1, 0x0

    .line 304
    .local v1, c:C
    const/4 v8, 0x0

    .line 305
    .local v8, refk:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v6, :cond_7

    .line 306
    aget-char v1, v3, v4

    .line 307
    packed-switch v9, :pswitch_data_0

    .line 305
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    :pswitch_0
    invoke-virtual {p1, v1, p2}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v11

    add-float/2addr v10, v11

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    cmpl-float v11, v10, p3

    if-lez v11, :cond_3

    .line 312
    const/4 v10, 0x0

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 314
    add-int/lit8 v4, v4, -0x1

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 317
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 319
    move v8, v4

    .line 320
    const/16 v11, 0x20

    if-ne v1, v11, :cond_2

    .line 321
    const/4 v9, 0x2

    goto :goto_2

    .line 323
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 326
    :cond_3
    const/16 v11, 0x20

    if-eq v1, v11, :cond_0

    .line 327
    const/4 v9, 0x1

    goto :goto_2

    .line 331
    :pswitch_1
    invoke-virtual {p1, v1, p2}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v11

    add-float/2addr v10, v11

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    const/16 v11, 0x20

    if-ne v1, v11, :cond_4

    .line 334
    move v5, v4

    .line 335
    :cond_4
    cmpl-float v11, v10, p3

    if-lez v11, :cond_0

    .line 336
    const/4 v10, 0x0

    .line 337
    if-ltz v5, :cond_5

    .line 338
    move v4, v5

    .line 339
    sub-int v11, v5, v8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 340
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BaseField;->trimRight(Ljava/lang/StringBuffer;)V

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 343
    move v8, v4

    .line 344
    const/4 v5, -0x1

    .line 345
    const/4 v9, 0x2

    goto :goto_2

    .line 348
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 349
    add-int/lit8 v4, v4, -0x1

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 352
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 354
    move v8, v4

    .line 355
    const/16 v11, 0x20

    if-ne v1, v11, :cond_0

    .line 356
    const/4 v9, 0x2

    goto/16 :goto_2

    .line 361
    :pswitch_2
    const/16 v11, 0x20

    if-eq v1, v11, :cond_0

    .line 362
    const/4 v10, 0x0

    .line 363
    add-int/lit8 v4, v4, -0x1

    .line 364
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 369
    :cond_7
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BaseField;->trimRight(Ljava/lang/StringBuffer;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v1           #c:C
    .end local v3           #cs:[C
    .end local v4           #k:I
    .end local v5           #lastspace:I
    .end local v6           #len:I
    .end local v8           #refk:I
    .end local v9           #state:I
    .end local v10           #w:F
    :cond_8
    return-object v7

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawBottomFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V
    .locals 4
    .parameter "app"

    .prologue
    const/high16 v3, 0x4000

    .line 387
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->moveTo(FF)V

    .line 388
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 389
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 390
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 391
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 392
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 393
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 394
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 395
    return-void
.end method

.method private drawTopFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V
    .locals 4
    .parameter "app"

    .prologue
    const/high16 v3, 0x4000

    .line 376
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->moveTo(FF)V

    .line 377
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 378
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 379
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 380
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 381
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 382
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 383
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 384
    return-void
.end method

.method protected static getHardBreaks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 260
    .local v3, cs:[C
    array-length v5, v3

    .line 261
    .local v5, len:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .local v1, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 263
    aget-char v2, v3, v4

    .line 264
    .local v2, c:C
    const/16 v6, 0xd

    if-ne v2, v6, :cond_1

    .line 265
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v3, v6

    if-ne v6, v7, :cond_0

    .line 266
    add-int/lit8 v4, v4, 0x1

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :cond_1
    if-ne v2, v7, :cond_2

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 277
    .end local v2           #c:C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    return-object v0
.end method

.method public static moveFields(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfName;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 669
    .local v1, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/text/pdf/BaseField;->fieldKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    if-eqz p1, :cond_1

    .line 671
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 672
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 675
    .end local v1           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    return-void
.end method

.method protected static trimRight(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "buf"

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 284
    .local v0, len:I
    :goto_0
    if-nez v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 286
    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAlignment()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->alignment:I

    return v0
.end method

.method public getBackgroundColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method protected getBorderAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 13

    .prologue
    .line 174
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 175
    .local v0, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->rotation:I

    sparse-switch v1, :sswitch_data_0

    .line 186
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 188
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 191
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 194
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 195
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 197
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 198
    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->moveTo(FF)V

    .line 199
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 200
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    .line 253
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 254
    return-object v0

    .line 177
    :sswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto :goto_0

    .line 180
    :sswitch_1
    const/high16 v1, -0x4080

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    iget-object v5, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto :goto_0

    .line 183
    :sswitch_2
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setMatrix(FFFFFF)V

    goto/16 :goto_0

    .line 203
    :cond_2
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 204
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 206
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 207
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 208
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    .line 211
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BaseField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 212
    .local v7, actual:Lcom/itextpdf/text/BaseColor;
    if-nez v7, :cond_4

    .line 213
    sget-object v7, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    .line 214
    :cond_4
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 215
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BaseField;->drawTopFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V

    .line 216
    invoke-virtual {v7}, Lcom/itextpdf/text/BaseColor;->darker()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BaseField;->drawBottomFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V

    goto/16 :goto_1

    .line 219
    .end local v7           #actual:Lcom/itextpdf/text/BaseColor;
    :cond_5
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 220
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_6

    .line 221
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 222
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 223
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 224
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    .line 227
    :cond_6
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 228
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BaseField;->drawTopFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V

    .line 229
    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 230
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BaseField;->drawBottomFrame(Lcom/itextpdf/text/pdf/PdfAppearance;)V

    goto/16 :goto_1

    .line 233
    :cond_7
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v1, :cond_1

    .line 234
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 235
    const/high16 v1, 0x4040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineDash(FF)V

    .line 236
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 237
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 238
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 239
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    .line 240
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->options:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->maxCharacterLength:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->maxCharacterLength:I

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 242
    .local v9, step:F
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v2, 0x4000

    div-float v11, v1, v2

    .line 243
    .local v11, yb:F
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v12, v1, v2

    .line 244
    .local v12, yt:F
    const/4 v8, 0x1

    .local v8, k:I
    :goto_2
    iget v1, p0, Lcom/itextpdf/text/pdf/BaseField;->maxCharacterLength:I

    if-ge v8, v1, :cond_9

    .line 245
    int-to-float v1, v8

    mul-float v10, v9, v1

    .line 246
    .local v10, x:F
    invoke-virtual {v0, v10, v11}, Lcom/itextpdf/text/pdf/PdfAppearance;->moveTo(FF)V

    .line 247
    invoke-virtual {v0, v10, v12}, Lcom/itextpdf/text/pdf/PdfAppearance;->lineTo(FF)V

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 249
    .end local v10           #x:F
    :cond_9
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->stroke()V

    goto/16 :goto_1

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public getBorderColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBorderStyle()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    return v0
.end method

.method public getBox()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->font:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->fontSize:F

    return v0
.end method

.method public getMaxCharacterLength()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->maxCharacterLength:I

    return v0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->options:I

    return v0
.end method

.method protected getRealFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-nez v0, :cond_0

    .line 168
    const-string v0, "Helvetica"

    const-string v1, "Cp1252"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->font:Lcom/itextpdf/text/pdf/BaseFont;

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->rotation:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->textColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseField;->visibility:I

    return v0
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 515
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->alignment:I

    .line 516
    return-void
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 456
    return-void
.end method

.method public setBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColor"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 441
    return-void
.end method

.method public setBorderStyle(I)V
    .locals 0
    .parameter "borderStyle"

    .prologue
    .line 425
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderStyle:I

    .line 426
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 408
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->borderWidth:F

    .line 409
    return-void
.end method

.method public setBox(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "box"

    .prologue
    .line 543
    if-nez p1, :cond_0

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    .line 548
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->normalize()V

    goto :goto_0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->fieldName:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public setFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 486
    return-void
.end method

.method public setFontSize(F)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 500
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->fontSize:F

    .line 501
    return-void
.end method

.method public setMaxCharacterLength(I)V
    .locals 0
    .parameter "maxCharacterLength"

    .prologue
    .line 641
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->maxCharacterLength:I

    .line 642
    return-void
.end method

.method public setOptions(I)V
    .locals 0
    .parameter "options"

    .prologue
    .line 626
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->options:I

    .line 627
    return-void
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 564
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rotation.must.be.a.multiple.of.90"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    .line 567
    if-gez p1, :cond_1

    .line 568
    add-int/lit16 p1, p1, 0x168

    .line 569
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->rotation:I

    .line 570
    return-void
.end method

.method public setRotationFromPage(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 577
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/BaseField;->setRotation(I)V

    .line 578
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->text:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setTextColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->textColor:Lcom/itextpdf/text/BaseColor;

    .line 471
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 593
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseField;->visibility:I

    .line 594
    return-void
.end method

.method public setWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/itextpdf/text/pdf/BaseField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 658
    return-void
.end method
