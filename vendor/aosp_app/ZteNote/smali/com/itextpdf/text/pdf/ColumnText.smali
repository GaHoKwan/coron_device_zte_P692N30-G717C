.class public Lcom/itextpdf/text/pdf/ColumnText;
.super Ljava/lang/Object;
.source "ColumnText.java"


# static fields
.field public static final AR_COMPOSEDTASHKEEL:I = 0x4

.field public static final AR_LIG:I = 0x8

.field public static final AR_NOVOWEL:I = 0x1

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final GLOBAL_SPACE_CHAR_RATIO:F = 0.0f

.field protected static final LINE_STATUS_NOLINE:I = 0x2

.field protected static final LINE_STATUS_OFFLIMITS:I = 0x1

.field protected static final LINE_STATUS_OK:I = 0x0

.field public static final NO_MORE_COLUMN:I = 0x2

.field public static final NO_MORE_TEXT:I = 0x1

.field public static final START_COLUMN:I


# instance fields
.field private adjustFirstLine:Z

.field protected alignment:I

.field private arabicOptions:I

.field protected bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

.field protected canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected composite:Z

.field protected compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

.field protected compositeElements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected currentLeading:F

.field protected descender:F

.field protected extraParagraphSpace:F

.field private filledWidth:F

.field private firstLineY:F

.field private firstLineYDone:Z

.field protected fixedLeading:F

.field protected followingIndent:F

.field protected indent:F

.field private lastWasNewline:Z

.field protected lastX:F

.field protected leftWall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field protected leftX:F

.field protected lineStatus:I

.field private linesWritten:I

.field protected listIdx:I

.field protected maxY:F

.field protected minY:F

.field protected multipliedLeading:F

.field protected rectangularMode:Z

.field protected rectangularWidth:F

.field private repeatFirstLineIndent:Z

.field protected rightIndent:F

.field protected rightWall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field protected rightX:F

.field protected rowIdx:I

.field protected runDirection:I

.field private spaceCharRatio:F

.field private splittedRow:I

.field private useAscender:Z

.field protected waitPhrase:Lcom/itextpdf/text/Phrase;

.field protected yLine:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v0, 0x4180

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 163
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 185
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 188
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 191
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 202
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 205
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 208
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 211
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 214
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 216
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 218
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 220
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 221
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->repeatFirstLineIndent:Z

    .line 227
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 230
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 234
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 240
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 245
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 256
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 261
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 270
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 271
    return-void
.end method

.method private addWaitingPhrase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    if-eqz v2, :cond_1

    .line 353
    new-instance v2, Lcom/itextpdf/text/pdf/BidiLine;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/BidiLine;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 354
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    invoke-virtual {v2}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 355
    .local v0, c:Lcom/itextpdf/text/Chunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/BidiLine;->addChunk(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 357
    .end local v0           #c:Lcom/itextpdf/text/Chunk;
    :cond_0
    iput-object v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 359
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;
    .locals 2
    .parameter "org"

    .prologue
    .line 280
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 281
    .local v0, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/ColumnText;->setACopy(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    .line 282
    return-object v0
.end method

.method public static fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F
    .locals 23
    .parameter "font"
    .parameter "text"
    .parameter "rect"
    .parameter "maxFontSize"
    .parameter "runDirection"

    .prologue
    .line 1222
    const/4 v13, 0x0

    .line 1223
    .local v13, ct:Lcom/itextpdf/text/pdf/ColumnText;
    const/16 v21, 0x0

    .line 1224
    .local v21, status:I
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_3

    .line 1225
    const/4 v12, 0x0

    .line 1226
    .local v12, cr:I
    const/16 v16, 0x0

    .line 1227
    .local v16, lf:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    .line 1228
    .local v22, t:[C
    const/4 v15, 0x0

    .local v15, k:I
    :goto_0
    move-object/from16 v0, v22

    array-length v4, v0

    if-ge v15, v4, :cond_2

    .line 1229
    aget-char v4, v22, v15

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1230
    add-int/lit8 v16, v16, 0x1

    .line 1228
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1231
    :cond_1
    aget-char v4, v22, v15

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 1232
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1234
    :cond_2
    move/from16 v0, v16

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v19, v4, 0x1

    .line 1235
    .local v19, minLines:I
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    const v5, 0x3a83126f

    sub-float p3, v4, v5

    .line 1237
    .end local v12           #cr:I
    .end local v15           #k:I
    .end local v16           #lf:I
    .end local v19           #minLines:I
    .end local v22           #t:[C
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Font;->setSize(F)V

    .line 1238
    new-instance v3, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 1239
    .local v3, ph:Lcom/itextpdf/text/Phrase;
    new-instance v2, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .local v2, ct:Lcom/itextpdf/text/pdf/ColumnText;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    const/4 v9, 0x0

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1241
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1242
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    .line 1243
    and-int/lit8 v4, v21, 0x1

    if-eqz v4, :cond_5

    move/from16 v10, p3

    .line 1264
    :cond_4
    :goto_2
    return v10

    .line 1245
    :cond_5
    const v20, 0x3dcccccd

    .line 1246
    .local v20, precision:F
    const/16 v18, 0x0

    .line 1247
    .local v18, min:F
    move/from16 v17, p3

    .line 1248
    .local v17, max:F
    move/from16 v10, p3

    .line 1249
    .local v10, size:F
    const/4 v15, 0x0

    .restart local v15       #k:I
    move-object v13, v2

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :goto_3
    const/16 v4, 0x32

    if-ge v15, v4, :cond_7

    .line 1250
    add-float v4, v18, v17

    const/high16 v5, 0x4000

    div-float v10, v4, v5

    .line 1251
    :try_start_2
    new-instance v2, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1252
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/Font;->setSize(F)V

    .line 1253
    new-instance v5, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v9

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1254
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1255
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    .line 1256
    and-int/lit8 v4, v21, 0x1

    if-eqz v4, :cond_6

    .line 1257
    sub-float v4, v17, v18

    mul-float v5, v10, v20

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 1259
    move/from16 v18, v10

    .line 1249
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object v13, v2

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    goto :goto_3

    .line 1262
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :cond_6
    move/from16 v17, v10

    goto :goto_4

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :cond_7
    move-object v2, v13

    .line 1264
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    goto :goto_2

    .line 1266
    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v3           #ph:Lcom/itextpdf/text/Phrase;
    .end local v10           #size:F
    .end local v15           #k:I
    .end local v17           #max:F
    .end local v18           #min:F
    .end local v20           #precision:F
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :catch_0
    move-exception v14

    move-object v2, v13

    .line 1267
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .local v14, e:Ljava/lang/Exception;
    :goto_5
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v14}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 1266
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v3       #ph:Lcom/itextpdf/text/Phrase;
    :catch_1
    move-exception v14

    goto :goto_5
.end method

.method public static getWidth(Lcom/itextpdf/text/Phrase;)F
    .locals 2
    .parameter "phrase"

    .prologue
    .line 1127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->getWidth(Lcom/itextpdf/text/Phrase;II)F

    move-result v0

    return v0
.end method

.method public static getWidth(Lcom/itextpdf/text/Phrase;II)F
    .locals 11
    .parameter "phrase"
    .parameter "runDirection"
    .parameter "arabicOptions"

    .prologue
    const v2, 0x469c4000

    const/4 v1, 0x0

    .line 1109
    new-instance v9, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1110
    .local v9, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v9, p0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1111
    invoke-direct {v9}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 1112
    iget-object v0, v9, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIIIFFF)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v10

    .line 1113
    .local v10, line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v10, :cond_0

    .line 1116
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v0

    sub-float v1, v2, v0

    goto :goto_0
.end method

.method public static hasMoreText(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 1800
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedElement(Lcom/itextpdf/text/Element;)Z
    .locals 3
    .parameter "element"

    .prologue
    const/4 v1, 0x1

    .line 477
    invoke-interface {p0}, Lcom/itextpdf/text/Element;->type()I

    move-result v0

    .line 478
    .local v0, type:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x37

    if-eq v0, v2, :cond_0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v1

    .line 481
    :cond_1
    instance-of v2, p0, Lcom/itextpdf/text/Image;

    if-nez v2, :cond_0

    .line 482
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V
    .locals 8
    .parameter "canvas"
    .parameter "alignment"
    .parameter "phrase"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1208
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V

    .line 1209
    return-void
.end method

.method public static showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V
    .locals 18
    .parameter "canvas"
    .parameter "alignment"
    .parameter "phrase"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "runDirection"
    .parameter "arabicOptions"

    .prologue
    .line 1143
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    .line 1145
    const/16 p1, 0x0

    .line 1146
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1147
    new-instance v14, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1148
    .local v14, ct:Lcom/itextpdf/text/pdf/ColumnText;
    const/high16 v17, -0x4080

    .line 1149
    .local v17, lly:F
    const/high16 v9, 0x4000

    .line 1152
    .local v9, ury:F
    packed-switch p1, :pswitch_data_0

    .line 1162
    :pswitch_0
    const v6, -0x3963c000

    .line 1163
    .local v6, llx:F
    const v8, 0x469c4000

    .local v8, urx:F
    move/from16 v16, v6

    .line 1166
    .end local v6           #llx:F
    .local v16, llx:F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-nez v1, :cond_2

    .line 1167
    add-float v6, v16, p3

    .line 1168
    .end local v16           #llx:F
    .restart local v6       #llx:F
    add-float v7, v17, p4

    .line 1169
    .end local v17           #lly:F
    .local v7, lly:F
    add-float v8, v8, p3

    .line 1170
    add-float v9, v9, p4

    .line 1178
    :goto_1
    const/high16 v10, 0x4000

    move-object v4, v14

    move-object/from16 v5, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1179
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 1180
    if-nez p1, :cond_3

    .line 1181
    const/16 p1, 0x2

    .line 1185
    :cond_1
    :goto_2
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1186
    move/from16 v0, p7

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1187
    move/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1189
    :try_start_0
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1195
    return-void

    .line 1154
    .end local v6           #llx:F
    .end local v7           #lly:F
    .end local v8           #urx:F
    .restart local v17       #lly:F
    :pswitch_1
    const/4 v6, 0x0

    .line 1155
    .restart local v6       #llx:F
    const v8, 0x469c4000

    .restart local v8       #urx:F
    move/from16 v16, v6

    .line 1156
    .end local v6           #llx:F
    .restart local v16       #llx:F
    goto :goto_0

    .line 1158
    .end local v8           #urx:F
    .end local v16           #llx:F
    :pswitch_2
    const v6, -0x3963c000

    .line 1159
    .restart local v6       #llx:F
    const/4 v8, 0x0

    .restart local v8       #urx:F
    move/from16 v16, v6

    .line 1160
    .end local v6           #llx:F
    .restart local v16       #llx:F
    goto :goto_0

    .line 1173
    :cond_2
    move/from16 v0, p5

    float-to-double v4, v0

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v4, v10

    const-wide v10, 0x4066800000000000L

    div-double v12, v4, v10

    .line 1174
    .local v12, alpha:D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1175
    .local v2, cos:F
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1176
    .local v3, sin:F
    neg-float v4, v3

    move-object/from16 v1, p0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    move/from16 v6, v16

    .end local v16           #llx:F
    .restart local v6       #llx:F
    move/from16 v7, v17

    .end local v17           #lly:F
    .restart local v7       #lly:F
    goto :goto_1

    .line 1182
    .end local v2           #cos:F
    .end local v3           #sin:F
    .end local v12           #alpha:D
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 1183
    const/16 p1, 0x0

    goto :goto_2

    .line 1191
    :catch_0
    move-exception v15

    .line 1192
    .local v15, e:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v15}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/text/Element;)V
    .locals 12
    .parameter "element"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xc

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 420
    if-nez p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 422
    :cond_0
    instance-of v6, p1, Lcom/itextpdf/text/Image;

    if-eqz v6, :cond_1

    move-object v2, p1

    .line 423
    check-cast v2, Lcom/itextpdf/text/Image;

    .line 424
    .local v2, img:Lcom/itextpdf/text/Image;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v4, v8}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 425
    .local v4, t:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getWidthPercentage()F

    move-result v5

    .line 426
    .local v5, w:F
    cmpl-float v6, v5, v7

    if-nez v6, :cond_3

    .line 427
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 428
    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPTable;->setLockedWidth(Z)V

    .line 432
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getSpacingAfter()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingAfter(F)V

    .line 433
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getSpacingBefore()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingBefore(F)V

    .line 434
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 442
    :pswitch_0
    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    .line 445
    :goto_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v0, v2, v8}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Image;Z)V

    .line 446
    .local v0, c:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 447
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorder()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorder(I)V

    .line 448
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 449
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorderWidth()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderWidth(F)V

    .line 450
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 451
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 452
    move-object p1, v4

    .line 454
    .end local v0           #c:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #img:Lcom/itextpdf/text/Image;
    .end local v4           #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v5           #w:F
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    .line 455
    new-instance v1, Lcom/itextpdf/text/Paragraph;

    check-cast p1, Lcom/itextpdf/text/Chunk;

    .end local p1
    invoke-direct {v1, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Chunk;)V

    .local v1, element:Lcom/itextpdf/text/Element;
    move-object p1, v1

    .line 460
    .end local v1           #element:Lcom/itextpdf/text/Element;
    .restart local p1
    :cond_2
    :goto_3
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    if-eq v6, v10, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0x37

    if-eq v6, v7, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_5

    .line 461
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "element.not.allowed"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 431
    .restart local v2       #img:Lcom/itextpdf/text/Image;
    .restart local v4       #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v5       #w:F
    :cond_3
    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    goto/16 :goto_1

    .line 436
    :pswitch_1
    invoke-virtual {v4, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 439
    :pswitch_2
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 457
    .end local v2           #img:Lcom/itextpdf/text/Image;
    .end local v4           #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v5           #w:F
    :cond_4
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 458
    new-instance v1, Lcom/itextpdf/text/Paragraph;

    check-cast p1, Lcom/itextpdf/text/Phrase;

    .end local p1
    invoke-direct {v1, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .restart local v1       #element:Lcom/itextpdf/text/Element;
    move-object p1, v1

    .end local v1           #element:Lcom/itextpdf/text/Element;
    .restart local p1
    goto :goto_3

    .line 462
    :cond_5
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-nez v6, :cond_6

    .line 463
    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 464
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 465
    iput-object v11, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 466
    iput-object v11, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 468
    :cond_6
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v6

    if-ne v6, v10, :cond_7

    move-object v3, p1

    .line 469
    check-cast v3, Lcom/itextpdf/text/Paragraph;

    .line 470
    .local v3, p:Lcom/itextpdf/text/Paragraph;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v3}, Lcom/itextpdf/text/Paragraph;->breakUp()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 473
    .end local v3           #p:Lcom/itextpdf/text/Paragraph;
    :cond_7
    iget-object v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v6, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public addText(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    .line 404
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    goto :goto_0
.end method

.method public addText(Lcom/itextpdf/text/Phrase;)V
    .locals 5
    .parameter "phrase"

    .prologue
    .line 368
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 371
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_2

    .line 372
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 376
    .local v0, element:Lcom/itextpdf/text/Chunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .end local v0           #element:Lcom/itextpdf/text/Chunk;
    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/BidiLine;->addChunk(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_1
.end method

.method public clearChunks()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BidiLine;->clearChunks()V

    .line 1008
    :cond_0
    return-void
.end method

.method protected convertColumn([F)Ljava/util/ArrayList;
    .locals 14
    .parameter "cLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 496
    array-length v9, p1

    if-ge v9, v13, :cond_0

    .line 497
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "no.valid.column.line.found"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 498
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v2, cc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v9, p1

    add-int/lit8 v9, v9, -0x2

    if-ge v3, v9, :cond_2

    .line 500
    aget v5, p1, v3

    .line 501
    .local v5, x1:F
    add-int/lit8 v9, v3, 0x1

    aget v7, p1, v9

    .line 502
    .local v7, y1:F
    add-int/lit8 v9, v3, 0x2

    aget v6, p1, v9

    .line 503
    .local v6, x2:F
    add-int/lit8 v9, v3, 0x3

    aget v8, p1, v9

    .line 504
    .local v8, y2:F
    cmpl-float v9, v7, v8

    if-nez v9, :cond_1

    .line 499
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 507
    :cond_1
    sub-float v9, v5, v6

    sub-float v10, v7, v8

    div-float v0, v9, v10

    .line 508
    .local v0, a:F
    mul-float v9, v0, v7

    sub-float v1, v5, v9

    .line 509
    .local v1, b:F
    new-array v4, v13, [F

    .line 510
    .local v4, r:[F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v4, v11

    .line 511
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v4, v12

    .line 512
    const/4 v9, 0x2

    aput v0, v4, v9

    .line 513
    const/4 v9, 0x3

    aput v1, v4, v9

    .line 514
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    aget v10, v4, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 516
    iget v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    aget v10, v4, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    goto :goto_1

    .line 518
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v4           #r:[F
    .end local v5           #x1:F
    .end local v6           #x2:F
    .end local v7           #y1:F
    .end local v8           #y2:F
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 519
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "no.valid.column.line.found"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 520
    :cond_3
    return-object v2
.end method

.method protected findLimitsOneLine()[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 553
    iget-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsPoint(Ljava/util/ArrayList;)F

    move-result v0

    .line 554
    .local v0, x1:F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-ne v3, v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-object v2

    .line 556
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsPoint(Ljava/util/ArrayList;)F

    move-result v1

    .line 557
    .local v1, x2:F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v3, v4, :cond_0

    .line 559
    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v5

    goto :goto_0
.end method

.method protected findLimitsPoint(Ljava/util/ArrayList;)F
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[F>;)F"
        }
    .end annotation

    .prologue
    .local p1, wall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 531
    iput v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 532
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 533
    :cond_0
    iput v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 543
    :goto_0
    return v2

    .line 536
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 537
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 538
    .local v1, r:[F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    aget v4, v1, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_3
    aget v2, v1, v7

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, v1, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 542
    .end local v1           #r:[F
    :cond_4
    iput v7, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    goto :goto_0
.end method

.method protected findLimitsTwoLines()[F
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, repeat:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 591
    :cond_1
    :goto_1
    return-object v3

    .line 574
    :cond_2
    const/4 v0, 0x1

    .line 575
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsOneLine()[F

    move-result-object v1

    .line 576
    .local v1, x1:[F
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v6, :cond_1

    .line 578
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 579
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v8, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsOneLine()[F

    move-result-object v2

    .line 583
    .local v2, x2:[F
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v6, :cond_1

    .line 585
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-ne v4, v8, :cond_3

    .line 586
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto :goto_0

    .line 589
    :cond_3
    aget v4, v1, v7

    aget v5, v2, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v2, v7

    aget v5, v1, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 591
    const/4 v3, 0x4

    new-array v3, v3, [F

    aget v4, v1, v7

    aput v4, v3, v7

    aget v4, v1, v6

    aput v4, v3, v6

    aget v4, v2, v7

    aput v4, v3, v8

    const/4 v4, 0x3

    aget v5, v2, v6

    aput v5, v3, v4

    goto :goto_1
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    return v0
.end method

.method public getArabicOptions()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    return v0
.end method

.method public getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getCanvases()[Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getCompositeElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCurrentLeading()F
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    return v0
.end method

.method public getDescender()F
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    return v0
.end method

.method public getExtraParagraphSpace()F
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    return v0
.end method

.method public getFilledWidth()F
    .locals 1

    .prologue
    .line 1809
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    return v0
.end method

.method public getFollowingIndent()F
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    return v0
.end method

.method public getIndent()F
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    return v0
.end method

.method public getLastX()F
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastX:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    return v0
.end method

.method public getLinesWritten()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    return v0
.end method

.method public getMultipliedLeading()F
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    return v0
.end method

.method public getRightIndent()F
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    return v0
.end method

.method public getRowsDrawn()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    return v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    return v0
.end method

.method public getSpaceCharRatio()F
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    return v0
.end method

.method public getYLine()F
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    return v0
.end method

.method public go()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v0

    return v0
.end method

.method public go(Z)I
    .locals 28
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v2, :cond_1

    .line 853
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->goComposite(Z)I

    move-result v23

    .line 980
    :cond_0
    :goto_0
    return v23

    .line 854
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_2

    .line 856
    const/16 v23, 0x1

    goto :goto_0

    .line 857
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 858
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 859
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastX:F

    .line 860
    const/4 v15, 0x0

    .line 861
    .local v15, dirty:Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 862
    .local v12, ratio:F
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/Object;

    .line 863
    .local v11, currentValues:[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 864
    .local v14, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    new-instance v19, Ljava/lang/Float;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    .line 865
    .local v19, lastBaseFactor:Ljava/lang/Float;
    const/4 v2, 0x1

    aput-object v19, v11, v2

    .line 866
    const/16 v22, 0x0

    .line 867
    .local v22, pdf:Lcom/itextpdf/text/pdf/PdfDocument;
    const/16 v17, 0x0

    .line 868
    .local v17, graphics:Lcom/itextpdf/text/pdf/PdfContentByte;
    const/16 v24, 0x0

    .line 869
    .local v24, text:Lcom/itextpdf/text/pdf/PdfContentByte;
    const/high16 v2, 0x7fc0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 870
    const/4 v6, 0x1

    .line 871
    .local v6, localRunDirection:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    if-eqz v2, :cond_3

    .line 872
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 873
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    if-eqz v2, :cond_6

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v17, v0

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;

    move-result-object v22

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v24

    .line 880
    :cond_4
    if-nez p1, :cond_5

    .line 881
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_7

    .line 882
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getSpaceCharRatio()F

    move-result v12

    .line 886
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    if-nez v2, :cond_9

    .line 887
    const/16 v20, 0x0

    .line 888
    .local v20, max:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 889
    .local v13, c:Lcom/itextpdf/text/pdf/PdfChunk;
    iget-object v2, v13, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v20

    goto :goto_2

    .line 878
    .end local v13           #c:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #max:F
    :cond_6
    if-nez p1, :cond_4

    .line 879
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "columntext.go.with.simulate.eq.eq.false.and.text.eq.eq.null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_7
    const v2, 0x3a83126f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_5

    .line 884
    const v12, 0x3a83126f

    goto :goto_1

    .line 891
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #max:F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    mul-float v4, v4, v20

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 893
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #max:F
    :cond_9
    const/16 v16, 0x0

    .line 896
    .local v16, firstIndent:F
    const/16 v23, 0x0

    .line 898
    .local v23, status:I
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    move/from16 v16, v0

    .line 899
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    if-eqz v2, :cond_17

    .line 900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    add-float v4, v4, v16

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_d

    .line 901
    const/16 v23, 0x2

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 903
    or-int/lit8 v23, v23, 0x1

    .line 976
    :cond_b
    :goto_5
    if-eqz v15, :cond_0

    .line 977
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_0

    .line 898
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    move/from16 v16, v0

    goto :goto_4

    .line 906
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 907
    const/16 v23, 0x1

    .line 908
    goto :goto_5

    .line 910
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIIIFFF)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v8

    .line 911
    .local v8, line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v8, :cond_f

    .line 912
    const/16 v23, 0x1

    .line 913
    goto :goto_5

    .line 915
    :cond_f
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getMaxSize()[F

    move-result-object v21

    .line 916
    .local v21, maxSize:[F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->isUseAscender()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 917
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getAscender()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 920
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_12

    .line 921
    :cond_10
    const/16 v23, 0x2

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->restore()V

    goto/16 :goto_5

    .line 919
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    const/4 v4, 0x0

    aget v4, v21, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v21, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    sub-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    goto :goto_6

    .line 925
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 926
    if-nez p1, :cond_13

    if-nez v15, :cond_13

    .line 927
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 928
    const/4 v15, 0x1

    .line 930
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 931
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 932
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 933
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 965
    .end local v21           #maxSize:[F
    .local v3, x1:F
    :cond_15
    if-nez p1, :cond_16

    .line 966
    const/4 v2, 0x0

    aput-object v14, v11, v2

    .line 967
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    :goto_7
    add-float/2addr v2, v3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->indentLeft()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    move-object/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v17

    .line 968
    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/text/pdf/PdfDocument;->writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastX:F

    .line 969
    const/4 v2, 0x0

    aget-object v14, v11, v2

    .end local v14           #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    check-cast v14, Lcom/itextpdf/text/pdf/PdfFont;

    .line 971
    .restart local v14       #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->repeatFirstLineIndent:Z

    if-eqz v2, :cond_1d

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 972
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    :goto_9
    sub-float v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 973
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 974
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getDescender()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    goto/16 :goto_3

    .line 936
    .end local v3           #x1:F
    .end local v8           #line:Lcom/itextpdf/text/pdf/PdfLine;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float v27, v2, v4

    .line 937
    .local v27, yTemp:F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsTwoLines()[F

    move-result-object v26

    .line 938
    .local v26, xx:[F
    if-nez v26, :cond_19

    .line 939
    const/16 v23, 0x2

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 941
    or-int/lit8 v23, v23, 0x1

    .line 942
    :cond_18
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_5

    .line 945
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 946
    const/16 v23, 0x1

    .line 947
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_5

    .line 950
    :cond_1a
    const/4 v2, 0x0

    aget v2, v26, v2

    const/4 v4, 0x2

    aget v4, v26, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 951
    .restart local v3       #x1:F
    const/4 v2, 0x1

    aget v2, v26, v2

    const/4 v4, 0x3

    aget v4, v26, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 952
    .local v25, x2:F
    sub-float v2, v25, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    add-float v4, v4, v16

    cmpg-float v2, v2, v4

    if-lez v2, :cond_a

    .line 954
    if-nez p1, :cond_1b

    if-nez v15, :cond_1b

    .line 955
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 956
    const/4 v15, 0x1

    .line 958
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    sub-float v4, v25, v3

    sub-float v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIIIFFF)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v8

    .line 959
    .restart local v8       #line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v8, :cond_15

    .line 960
    const/16 v23, 0x1

    .line 961
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_5

    .end local v25           #x2:F
    .end local v26           #xx:[F
    .end local v27           #yTemp:F
    :cond_1c
    move/from16 v2, v16

    .line 967
    goto/16 :goto_7

    .line 971
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 972
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_9
.end method

.method protected goComposite(Z)I
    .locals 58
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1273
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    if-nez v4, :cond_0

    .line 1274
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "irregular.columns.are.not.supported.in.composite.mode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1275
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1276
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1277
    const/16 v20, 0x1

    .line 1280
    .local v20, firstPass:Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1281
    const/16 v51, 0x1

    .line 1713
    :goto_1
    return v51

    .line 1282
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/Element;

    .line 1283
    .local v19, element:Lcom/itextpdf/text/Element;
    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_12

    move-object/from16 v43, v19

    .line 1284
    check-cast v43, Lcom/itextpdf/text/Paragraph;

    .line 1285
    .local v43, para:Lcom/itextpdf/text/Paragraph;
    const/16 v51, 0x0

    .line 1286
    .local v51, status:I
    const/16 v32, 0x0

    .local v32, keep:I
    :goto_2
    const/4 v4, 0x2

    move/from16 v0, v32

    if-ge v0, v4, :cond_d

    .line 1287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v36, v0

    .line 1288
    .local v36, lastY:F
    const/16 v18, 0x0

    .line 1289
    .local v18, createHere:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v4, :cond_5

    .line 1290
    new-instance v4, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getAlignment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v5

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(FZ)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getExtraParagraphSpace()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setExtraParagraphSpace(F)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setFollowingIndent(F)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRightIndent(F)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v5

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getMultipliedLeading()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1301
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-nez v4, :cond_4

    .line 1302
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1304
    :cond_4
    const/16 v18, 0x1

    .line 1306
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    :goto_3
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 1313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 1314
    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v18, :cond_a

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-nez v4, :cond_a

    :cond_7
    const/16 v33, 0x1

    .line 1315
    .local v33, keepCandidate:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez p1, :cond_8

    if-eqz v33, :cond_b

    if-nez v32, :cond_b

    :cond_8
    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v51

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/ColumnText;->getLastX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastX:F

    .line 1317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1318
    and-int/lit8 v4, v51, 0x1

    if-nez v4, :cond_c

    if-eqz v33, :cond_c

    .line 1319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1320
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1321
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1306
    .end local v33           #keepCandidate:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1314
    :cond_a
    const/16 v33, 0x0

    goto :goto_4

    .line 1315
    .restart local v33       #keepCandidate:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 1323
    :cond_c
    if-nez p1, :cond_d

    if-nez v33, :cond_10

    .line 1330
    .end local v18           #createHere:Z
    .end local v33           #keepCandidate:Z
    .end local v36           #lastY:F
    :cond_d
    const/16 v20, 0x0

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/ColumnText;->getLinesWritten()I

    move-result v4

    if-lez v4, :cond_e

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1333
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v5, v5, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1336
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 1337
    and-int/lit8 v4, v51, 0x1

    if-eqz v4, :cond_f

    .line 1338
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1340
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1342
    :cond_f
    and-int/lit8 v4, v51, 0x2

    if-eqz v4, :cond_1

    .line 1343
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1325
    .restart local v18       #createHere:Z
    .restart local v33       #keepCandidate:Z
    .restart local v36       #lastY:F
    :cond_10
    if-nez v32, :cond_11

    .line 1326
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1327
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1286
    :cond_11
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 1346
    .end local v18           #createHere:Z
    .end local v32           #keep:I
    .end local v33           #keepCandidate:Z
    .end local v36           #lastY:F
    .end local v43           #para:Lcom/itextpdf/text/Paragraph;
    .end local v51           #status:I
    :cond_12
    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_29

    move-object/from16 v37, v19

    .line 1347
    check-cast v37, Lcom/itextpdf/text/List;

    .line 1348
    .local v37, list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v30

    .line 1349
    .local v30, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    const/16 v29, 0x0

    .line 1350
    .local v29, item:Lcom/itextpdf/text/ListItem;
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v38

    .line 1351
    .local v38, listIndentation:F
    const/16 v17, 0x0

    .line 1352
    .local v17, count:I
    new-instance v50, Ljava/util/Stack;

    invoke-direct/range {v50 .. v50}, Ljava/util/Stack;-><init>()V

    .line 1353
    .local v50, stack:Ljava/util/Stack;,"Ljava/util/Stack<[Ljava/lang/Object;>;"
    const/16 v31, 0x0

    .local v31, k:I
    :goto_6
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_13

    .line 1354
    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    .line 1355
    .local v41, obj:Ljava/lang/Object;
    move-object/from16 v0, v41

    instance-of v4, v0, Lcom/itextpdf/text/ListItem;

    if-eqz v4, :cond_17

    .line 1356
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    move-object/from16 v29, v41

    .line 1357
    check-cast v29, Lcom/itextpdf/text/ListItem;

    .line 1380
    .end local v41           #obj:Ljava/lang/Object;
    :cond_13
    const/16 v51, 0x0

    .line 1381
    .restart local v51       #status:I
    const/16 v32, 0x0

    .restart local v32       #keep:I
    :goto_7
    const/4 v4, 0x2

    move/from16 v0, v32

    if-ge v0, v4, :cond_23

    .line 1382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v36, v0

    .line 1383
    .restart local v36       #lastY:F
    const/16 v18, 0x0

    .line 1384
    .restart local v18       #createHere:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v4, :cond_1c

    .line 1385
    if-nez v29, :cond_18

    .line 1386
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1360
    .end local v18           #createHere:Z
    .end local v32           #keep:I
    .end local v36           #lastY:F
    .end local v51           #status:I
    .restart local v41       #obj:Ljava/lang/Object;
    :cond_14
    add-int/lit8 v17, v17, 0x1

    .line 1370
    :cond_15
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_16

    .line 1371
    invoke-virtual/range {v50 .. v50}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1372
    invoke-virtual/range {v50 .. v50}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [Ljava/lang/Object;

    .line 1373
    .local v42, objs:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v37, v42, v4

    .end local v37           #list:Lcom/itextpdf/text/List;
    check-cast v37, Lcom/itextpdf/text/List;

    .line 1374
    .restart local v37       #list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v30

    .line 1375
    const/4 v4, 0x1

    aget-object v4, v42, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 1376
    const/4 v4, 0x2

    aget-object v4, v42, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v38

    .line 1353
    .end local v42           #objs:[Ljava/lang/Object;
    :cond_16
    :goto_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 1362
    :cond_17
    move-object/from16 v0, v41

    instance-of v4, v0, Lcom/itextpdf/text/List;

    if-eqz v4, :cond_15

    .line 1363
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v37, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Float;

    move/from16 v0, v38

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v4, v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v41

    .line 1364
    check-cast v37, Lcom/itextpdf/text/List;

    .line 1365
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v30

    .line 1366
    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v4

    add-float v38, v38, v4

    .line 1367
    const/16 v31, -0x1

    .line 1368
    goto :goto_8

    .line 1390
    .end local v41           #obj:Ljava/lang/Object;
    .restart local v18       #createHere:Z
    .restart local v32       #keep:I
    .restart local v36       #lastY:F
    .restart local v51       #status:I
    :cond_18
    new-instance v4, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1f

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    :goto_9
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getAlignment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v5

    add-float v5, v5, v38

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getFirstLineIndent()F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(FZ)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getExtraParagraphSpace()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setExtraParagraphSpace(F)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColumnText;->getIndent()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setFollowingIndent(F)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v5

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRightIndent(F)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getLeading()F

    move-result v5

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getMultipliedLeading()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1402
    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-nez v4, :cond_1b

    .line 1403
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getSpacingBefore()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1405
    :cond_1b
    const/16 v18, 0x1

    .line 1407
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 1413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 1414
    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz v18, :cond_20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-nez v4, :cond_20

    :cond_1d
    const/16 v33, 0x1

    .line 1415
    .restart local v33       #keepCandidate:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez p1, :cond_1e

    if-eqz v33, :cond_21

    if-nez v32, :cond_21

    :cond_1e
    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v51

    .line 1416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/ColumnText;->getLastX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastX:F

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1418
    and-int/lit8 v4, v51, 0x1

    if-nez v4, :cond_22

    if-eqz v33, :cond_22

    .line 1419
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1420
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1421
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1391
    .end local v33           #keepCandidate:Z
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1414
    :cond_20
    const/16 v33, 0x0

    goto :goto_a

    .line 1415
    .restart local v33       #keepCandidate:Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_b

    .line 1423
    :cond_22
    if-nez p1, :cond_23

    if-nez v33, :cond_27

    .line 1430
    .end local v18           #createHere:Z
    .end local v33           #keepCandidate:Z
    .end local v36           #lastY:F
    :cond_23
    const/16 v20, 0x0

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1432
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v5, v5, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 1435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget-boolean v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    if-nez v4, :cond_25

    .line 1436
    if-nez p1, :cond_24

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v4, 0x0

    new-instance v5, Lcom/itextpdf/text/Phrase;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v6, v6, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    add-float v6, v6, v38

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v7, v7, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V

    .line 1438
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 1440
    :cond_25
    and-int/lit8 v4, v51, 0x1

    if-eqz v4, :cond_26

    .line 1441
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1442
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1443
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/ListItem;->getSpacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1445
    :cond_26
    and-int/lit8 v4, v51, 0x2

    if-eqz v4, :cond_1

    .line 1446
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1425
    .restart local v18       #createHere:Z
    .restart local v33       #keepCandidate:Z
    .restart local v36       #lastY:F
    :cond_27
    if-nez v32, :cond_28

    .line 1426
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1427
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1381
    :cond_28
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .line 1448
    .end local v17           #count:I
    .end local v18           #createHere:Z
    .end local v29           #item:Lcom/itextpdf/text/ListItem;
    .end local v30           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    .end local v31           #k:I
    .end local v32           #keep:I
    .end local v33           #keepCandidate:Z
    .end local v36           #lastY:F
    .end local v37           #list:Lcom/itextpdf/text/List;
    .end local v38           #listIndentation:F
    .end local v50           #stack:Ljava/util/Stack;,"Ljava/util/Stack<[Ljava/lang/Object;>;"
    .end local v51           #status:I
    :cond_29
    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_4c

    move-object/from16 v53, v19

    .line 1453
    check-cast v53, Lcom/itextpdf/text/pdf/PdfPTable;

    .line 1456
    .local v53, table:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v5

    if-gt v4, v5, :cond_2a

    .line 1457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1462
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v57, v0

    .line 1463
    .local v57, yTemp:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    add-float v57, v57, v4

    .line 1464
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-eqz v4, :cond_2b

    .line 1465
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore()F

    move-result v4

    sub-float v57, v57, v4

    .line 1468
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v57, v4

    if-ltz v4, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v4, v57, v4

    if-lez v4, :cond_2d

    .line 1469
    :cond_2c
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1472
    :cond_2d
    move/from16 v9, v57

    .line 1473
    .local v9, yLineWrite:F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1474
    .local v8, x1:F
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 1477
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isLockedWidth()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1478
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getTotalWidth()F

    move-result v56

    .line 1479
    .local v56, tableWidth:F
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1489
    :goto_c
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->normalizeHeadersFooters()V

    .line 1490
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v27

    .line 1491
    .local v27, headerRows:I
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getFooterRows()I

    move-result v24

    .line 1492
    .local v24, footerRows:I
    sub-int v44, v27, v24

    .line 1493
    .local v44, realHeaderRows:I
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderHeight()F

    move-result v26

    .line 1494
    .local v26, headerHeight:F
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getFooterHeight()F

    move-result v23

    .line 1497
    .local v23, footerHeight:F
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isSkipFirstHeader()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v44

    if-gt v4, v0, :cond_30

    const/16 v48, 0x1

    .line 1499
    .local v48, skipHeader:Z
    :goto_d
    if-nez v48, :cond_31

    .line 1500
    sub-float v57, v57, v26

    .line 1501
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v57, v4

    if-ltz v4, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v4, v57, v4

    if-lez v4, :cond_31

    .line 1502
    :cond_2e
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1482
    .end local v23           #footerHeight:F
    .end local v24           #footerRows:I
    .end local v26           #headerHeight:F
    .end local v27           #headerRows:I
    .end local v44           #realHeaderRows:I
    .end local v48           #skipHeader:Z
    .end local v56           #tableWidth:F
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getWidthPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v56, v4, v5

    .line 1483
    .restart local v56       #tableWidth:F
    move-object/from16 v0, v53

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    goto :goto_c

    .line 1497
    .restart local v23       #footerHeight:F
    .restart local v24       #footerRows:I
    .restart local v26       #headerHeight:F
    .restart local v27       #headerRows:I
    .restart local v44       #realHeaderRows:I
    :cond_30
    const/16 v48, 0x0

    goto :goto_d

    .line 1509
    .restart local v48       #skipHeader:Z
    :cond_31
    const/16 v31, 0x0

    .line 1510
    .restart local v31       #k:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v27

    if-ge v4, v0, :cond_32

    .line 1511
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    .line 1513
    :cond_32
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1514
    sub-float v57, v57, v23

    .line 1516
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v31, v0

    :goto_e
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_34

    .line 1517
    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v45

    .line 1518
    .local v45, rowHeight:F
    sub-float v4, v57, v45

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_36

    .line 1523
    .end local v45           #rowHeight:F
    :cond_34
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_35

    .line 1524
    add-float v57, v57, v23

    .line 1527
    :cond_35
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitRows()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1528
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 1529
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v31

    if-ne v0, v4, :cond_39

    .line 1531
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-ne v0, v4, :cond_37

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1520
    .restart local v45       #rowHeight:F
    :cond_36
    sub-float v57, v57, v45

    .line 1516
    add-int/lit8 v31, v31, 0x1

    goto :goto_e

    .line 1537
    .end local v45           #rowHeight:F
    :cond_37
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1538
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1543
    :cond_38
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitLate()Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->hasRowspan(I)Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v31

    if-ge v4, v0, :cond_40

    .line 1544
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 1573
    :cond_39
    :goto_f
    const/16 v20, 0x0

    .line 1576
    if-nez p1, :cond_48

    .line 1578
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1585
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float v4, v4, v56

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v8, v4

    .line 1588
    :goto_10
    :pswitch_1
    invoke-static/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->shallowCopy(Lcom/itextpdf/text/pdf/PdfPTable;)Lcom/itextpdf/text/pdf/PdfPTable;

    move-result-object v3

    .line 1589
    .local v3, nt:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v52

    .line 1591
    .local v52, sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    if-nez v48, :cond_44

    if-lez v44, :cond_44

    .line 1592
    const/4 v4, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1597
    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1599
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isSkipLastFooter()Z

    move-result v4

    if-nez v4, :cond_45

    const/16 v47, 0x1

    .line 1600
    .local v47, showFooter:Z
    :goto_12
    const/16 v39, 0x0

    .line 1601
    .local v39, newPageFollows:Z
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_3a

    .line 1602
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setComplete(Z)V

    .line 1603
    const/16 v47, 0x1

    .line 1604
    const/16 v39, 0x1

    .line 1607
    :cond_3a
    if-lez v24, :cond_46

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz v47, :cond_46

    .line 1608
    add-int v4, v44, v24

    move-object/from16 v0, v53

    move/from16 v1, v44

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1615
    :goto_13
    const/16 v45, 0x0

    .line 1616
    .restart local v45       #rowHeight:F
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v35, v4, v24

    .line 1617
    .local v35, lastIdx:I
    move-object/from16 v0, v52

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1618
    .local v34, last:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow(Z)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1619
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v45

    .line 1620
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    sub-float v4, v57, v4

    add-float v4, v4, v45

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    .line 1621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v57, v0

    .line 1625
    :cond_3b
    if-eqz v39, :cond_3c

    .line 1626
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getTableEvent()Lcom/itextpdf/text/pdf/PdfPTableEvent;

    move-result-object v55

    .line 1627
    .local v55, tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;
    move-object/from16 v0, v55

    instance-of v4, v0, Lcom/itextpdf/text/pdf/PdfPTableEventSplit;

    if-eqz v4, :cond_3c

    .line 1628
    check-cast v55, Lcom/itextpdf/text/pdf/PdfPTableEventSplit;

    .end local v55           #tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;
    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTableEventSplit;->splitTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 1633
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    if-eqz v4, :cond_47

    .line 1634
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;Z)F

    .line 1639
    :goto_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    move/from16 v0, v31

    if-ne v4, v0, :cond_3d

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_3d

    .line 1640
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1641
    .local v49, splitted:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object/from16 v0, v49

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->copyRowContent(Lcom/itextpdf/text/pdf/PdfPTable;I)V

    .line 1644
    .end local v49           #splitted:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_3d
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow(Z)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1645
    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    .line 1653
    .end local v3           #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v34           #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v35           #lastIdx:I
    .end local v39           #newPageFollows:Z
    .end local v45           #rowHeight:F
    .end local v47           #showFooter:Z
    .end local v52           #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_3e
    :goto_15
    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1654
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1655
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 1656
    if-nez v48, :cond_3f

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1657
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    add-float v4, v4, v23

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1658
    :cond_3f
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-lt v0, v4, :cond_4a

    .line 1660
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_49

    .line 1661
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1666
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1667
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 1668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    goto/16 :goto_0

    .line 1547
    :cond_40
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_39

    .line 1549
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    move/from16 v0, v31

    if-eq v0, v4, :cond_42

    .line 1550
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 1551
    new-instance v54, Lcom/itextpdf/text/pdf/PdfPTable;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 1552
    .end local v53           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .local v54, table:Lcom/itextpdf/text/pdf/PdfPTable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1553
    invoke-virtual/range {v54 .. v54}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v46

    .line 1554
    .local v46, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    move/from16 v28, v27

    .local v28, i:I
    :goto_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v28

    if-ge v0, v4, :cond_41

    .line 1555
    const/4 v4, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1554
    add-int/lit8 v28, v28, 0x1

    goto :goto_17

    :cond_41
    move-object/from16 v53, v54

    .line 1558
    .end local v28           #i:I
    .end local v46           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    .end local v54           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v53       #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    sub-float v25, v57, v4

    .line 1560
    .local v25, h:F
    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v4

    move-object/from16 v0, v53

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPRow;->splitRow(Lcom/itextpdf/text/pdf/PdfPTable;IF)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v40

    .line 1562
    .local v40, newRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v40, :cond_43

    .line 1563
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 1564
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v0, v31

    if-ne v4, v0, :cond_39

    .line 1565
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1568
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v57, v0

    .line 1569
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 1582
    .end local v25           #h:F
    .end local v40           #newRow:Lcom/itextpdf/text/pdf/PdfPRow;
    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float v4, v4, v56

    add-float/2addr v8, v4

    .line 1583
    goto/16 :goto_10

    .line 1595
    .restart local v3       #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v52       #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_44
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeaderRows(I)V

    goto/16 :goto_11

    .line 1599
    :cond_45
    const/16 v47, 0x0

    goto/16 :goto_12

    .line 1611
    .restart local v39       #newPageFollows:Z
    .restart local v47       #showFooter:Z
    :cond_46
    const/16 v24, 0x0

    goto/16 :goto_13

    .line 1636
    .restart local v34       #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v35       #lastIdx:I
    .restart local v45       #rowHeight:F
    :cond_47
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;Z)F

    goto/16 :goto_14

    .line 1649
    .end local v3           #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v34           #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v35           #lastIdx:I
    .end local v39           #newPageFollows:Z
    .end local v45           #rowHeight:F
    .end local v47           #showFooter:Z
    .end local v52           #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_48
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow()Z

    move-result v4

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    const/high16 v5, -0x3180

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3e

    .line 1650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v57, v0

    goto/16 :goto_15

    .line 1664
    :cond_49
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_16

    .line 1671
    :cond_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4b

    .line 1672
    invoke-virtual/range {v53 .. v53}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v46

    .line 1673
    .restart local v46       #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    move/from16 v28, v0

    .restart local v28       #i:I
    :goto_18
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_4b

    .line 1674
    const/4 v4, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1673
    add-int/lit8 v28, v28, 0x1

    goto :goto_18

    .line 1676
    .end local v28           #i:I
    .end local v46           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_4b
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    .line 1677
    const/16 v51, 0x2

    goto/16 :goto_1

    .line 1680
    .end local v8           #x1:F
    .end local v9           #yLineWrite:F
    .end local v23           #footerHeight:F
    .end local v24           #footerRows:I
    .end local v26           #headerHeight:F
    .end local v27           #headerRows:I
    .end local v31           #k:I
    .end local v44           #realHeaderRows:I
    .end local v48           #skipHeader:Z
    .end local v53           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v56           #tableWidth:F
    .end local v57           #yTemp:F
    :cond_4c
    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_4e

    .line 1681
    if-nez p1, :cond_4d

    move-object/from16 v10, v19

    .line 1682
    check-cast v10, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1683
    .local v10, zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v16, v0

    invoke-interface/range {v10 .. v16}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1685
    .end local v10           #zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1686
    :cond_4e
    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_54

    .line 1687
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1689
    .local v22, floatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    :cond_4f
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/Element;

    move-object/from16 v19, v4

    .line 1692
    :goto_19
    if-eqz v19, :cond_50

    invoke-interface/range {v19 .. v19}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x25

    if-eq v4, v5, :cond_4f

    .line 1694
    :cond_50
    new-instance v4, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v20, :cond_51

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_53

    :cond_51
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    if-eqz v4, :cond_53

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    :goto_1a
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 1703
    new-instance v21, Lcom/itextpdf/text/pdf/FloatLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/itextpdf/text/pdf/FloatLayout;-><init>(Lcom/itextpdf/text/pdf/ColumnText;Ljava/util/List;)V

    .line 1704
    .local v21, fl:Lcom/itextpdf/text/pdf/FloatLayout;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/FloatLayout;->setSimpleColumn(FFFF)V

    .line 1705
    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/FloatLayout;->layout(Z)I

    move-result v51

    .line 1708
    .restart local v51       #status:I
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/FloatLayout;->getYLine()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1709
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1710
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1711
    and-int/lit8 v4, v51, 0x1

    if-nez v4, :cond_1

    .line 1712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1691
    .end local v21           #fl:Lcom/itextpdf/text/pdf/FloatLayout;
    .end local v51           #status:I
    :cond_52
    const/16 v19, 0x0

    goto/16 :goto_19

    .line 1695
    :cond_53
    const/4 v4, 0x0

    goto :goto_1a

    .line 1716
    .end local v22           #floatingElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAdjustFirstLine()Z
    .locals 1

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    return v0
.end method

.method public isUseAscender()Z
    .locals 1

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    return v0
.end method

.method public setACopy(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;
    .locals 2
    .parameter "org"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleVars(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 293
    iget-object v0, p1, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/itextpdf/text/pdf/BidiLine;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/BidiLine;-><init>(Lcom/itextpdf/text/pdf/BidiLine;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 295
    :cond_0
    return-object p0
.end method

.method public setAdjustFirstLine(Z)V
    .locals 0
    .parameter "adjustFirstLine"

    .prologue
    .line 1853
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 1854
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 745
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 746
    return-void
.end method

.method public setArabicOptions(I)V
    .locals 0
    .parameter "arabicOptions"

    .prologue
    .line 1087
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 1088
    return-void
.end method

.method public setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1739
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1741
    :cond_0
    return-void
.end method

.method public setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "canvases"

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1750
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1751
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1753
    :cond_0
    return-void
.end method

.method public setColumns([F[F)V
    .locals 2
    .parameter "leftLine"
    .parameter "rightLine"

    .prologue
    .line 604
    const v0, -0x1da728d9

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 605
    const v0, 0x6258d727

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 606
    const/4 v0, 0x1

    aget v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setYLine(F)V

    .line 607
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/ColumnText;->convertColumn([F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 608
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->convertColumn([F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 609
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 611
    return-void
.end method

.method public setExtraParagraphSpace(F)V
    .locals 0
    .parameter "extraParagraphSpace"

    .prologue
    .line 998
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 999
    return-void
.end method

.method public setFilledWidth(F)V
    .locals 0
    .parameter "filledWidth"

    .prologue
    .line 1819
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 1820
    return-void
.end method

.method public setFollowingIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 792
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 794
    return-void
.end method

.method public setIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(FZ)V

    .line 764
    return-void
.end method

.method public setIndent(FZ)V
    .locals 1
    .parameter "indent"
    .parameter "repeatFirstLineIndent"

    .prologue
    .line 772
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 774
    iput-boolean p2, p0, Lcom/itextpdf/text/pdf/ColumnText;->repeatFirstLineIndent:Z

    .line 775
    return-void
.end method

.method public setLeading(F)V
    .locals 1
    .parameter "leading"

    .prologue
    .line 679
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 681
    return-void
.end method

.method public setLeading(FF)V
    .locals 0
    .parameter "fixedLeading"
    .parameter "multipliedLeading"

    .prologue
    .line 692
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 693
    iput p2, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 694
    return-void
.end method

.method public setRightIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 811
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 813
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 1039
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 1040
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 1042
    return-void
.end method

.method public setSimpleColumn(FFFF)V
    .locals 3
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 655
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 656
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 657
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 658
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 659
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iget v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 660
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 661
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 662
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 663
    return-void
.end method

.method public setSimpleColumn(FFFFFI)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "leading"
    .parameter "alignment"

    .prologue
    .line 640
    invoke-virtual {p0, p5}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(F)V

    .line 641
    iput p6, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 642
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 643
    return-void
.end method

.method public setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V
    .locals 7
    .parameter "phrase"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "leading"
    .parameter "alignment"

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 626
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 627
    return-void
.end method

.method public setSimpleColumn(Lcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 671
    return-void
.end method

.method protected setSimpleVars(Lcom/itextpdf/text/pdf/ColumnText;)V
    .locals 4
    .parameter "org"

    .prologue
    const/4 v3, 0x0

    .line 299
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 300
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 301
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 302
    iput-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 303
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 305
    :cond_0
    iput-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 306
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 308
    :cond_1
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 309
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 310
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 311
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 312
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 313
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 314
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 315
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 316
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 317
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 318
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 319
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 320
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 321
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 322
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 323
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->repeatFirstLineIndent:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->repeatFirstLineIndent:Z

    .line 324
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 325
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 326
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 327
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 328
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 329
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 330
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v1, :cond_3

    .line 331
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 332
    iget v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 333
    iget-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPTable;

    .line 334
    .local v0, table:Lcom/itextpdf/text/pdf/PdfPTable;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v0           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_2
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 339
    :cond_3
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 340
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    .line 341
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 342
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 343
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 344
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 345
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 346
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 347
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 348
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 349
    return-void
.end method

.method public setSpaceCharRatio(F)V
    .locals 0
    .parameter "spaceCharRatio"

    .prologue
    .line 1030
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 1031
    return-void
.end method

.method public setText(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 387
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 388
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 389
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 390
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 391
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 392
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rowIdx:I

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:I

    .line 394
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 395
    return-void
.end method

.method public setUseAscender(Z)V
    .locals 0
    .parameter "useAscender"

    .prologue
    .line 1793
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 1794
    return-void
.end method

.method public setYLine(F)V
    .locals 0
    .parameter "yLine"

    .prologue
    .line 720
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 721
    return-void
.end method

.method public updateFilledWidth(F)V
    .locals 1
    .parameter "w"

    .prologue
    .line 1828
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1829
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 1830
    :cond_0
    return-void
.end method

.method public zeroHeightElement()Z
    .locals 2

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
