.class public Lcom/android/email/activity/MessageListItemCoordinates;
.super Ljava/lang/Object;
.source "MessageListItemCoordinates.java"


# static fields
.field public static final NORMAL_MODE:I = 0x1

.field public static final WIDE_MODE:I

.field private static sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/email/activity/MessageListItemCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private static sMinimumWidthWideMode:I

.field private static sMsgUseWideMode:I

.field private static sPaint:Landroid/text/TextPaint;

.field private static sSubjectLengths:[I


# instance fields
.field checkmarkWidthIncludingMargins:I

.field checkmarkX:I

.field checkmarkY:I

.field chipHeight:I

.field chipWidth:I

.field chipX:I

.field chipY:I

.field dateAscent:I

.field dateFontSize:I

.field dateXEnd:I

.field dateY:I

.field itemHeight:I

.field paperclipY:I

.field sendersAscent:I

.field sendersFontSize:I

.field sendersLineCount:I

.field sendersWidth:I

.field sendersX:I

.field sendersY:I

.field starX:I

.field starY:I

.field stateX:I

.field stateY:I

.field subjectAscent:I

.field subjectFontSize:I

.field subjectLineCount:I

.field subjectLineHeight:I

.field subjectTop:I

.field subjectWidth:I

.field subjectX:I

.field subjectY:I

.field unreadStateX:I

.field unreadStateY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 49
    sput v0, Lcom/android/email/activity/MessageListItemCoordinates;->sMinimumWidthWideMode:I

    .line 50
    sput v0, Lcom/android/email/activity/MessageListItemCoordinates;->sMsgUseWideMode:I

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sCache:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    .line 115
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 116
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forWidth(Landroid/content/Context;IZ)Lcom/android/email/activity/MessageListItemCoordinates;
    .locals 22
    .parameter "context"
    .parameter "width"
    .parameter "isSearchResult"

    .prologue
    .line 264
    sget-object v19, Lcom/android/email/activity/MessageListItemCoordinates;->sCache:Landroid/util/SparseArray;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessageListItemCoordinates;

    .line 265
    .local v6, coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    if-nez v6, :cond_0

    .line 266
    new-instance v6, Lcom/android/email/activity/MessageListItemCoordinates;

    .end local v6           #coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    invoke-direct {v6}, Lcom/android/email/activity/MessageListItemCoordinates;-><init>()V

    .line 267
    .restart local v6       #coordinates:Lcom/android/email/activity/MessageListItemCoordinates;
    sget-object v19, Lcom/android/email/activity/MessageListItemCoordinates;->sCache:Landroid/util/SparseArray;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    invoke-static/range {p0 .. p2}, Lcom/android/email/activity/MessageListItemCoordinates;->getMode(Landroid/content/Context;IZ)I

    move-result v10

    .line 272
    .local v10, mode:I
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/email/activity/MessageListItemCoordinates;->getHeight(Landroid/content/Context;I)I

    move-result v8

    .line 273
    .local v8, height:I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    invoke-static {v10}, Lcom/android/email/activity/MessageListItemCoordinates;->getLayoutId(I)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 274
    .local v17, view:Landroid/view/View;
    const/high16 v19, 0x4000

    move/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 275
    .local v18, widthSpec:I
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 276
    .local v9, heightSpec:I
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->measure(II)V

    .line 277
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/view/View;->layout(IIII)V

    .line 280
    iput v8, v6, Lcom/android/email/activity/MessageListItemCoordinates;->itemHeight:I

    .line 282
    const v19, 0x7f0f00b2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 283
    .local v4, checkmark:Landroid/view/View;
    invoke-static {v4}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    .line 284
    invoke-static {v4}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkY:I

    .line 285
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkWidthIncludingMargins:I

    .line 287
    const v19, 0x7f0f00b3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 288
    .local v13, star:Landroid/view/View;
    invoke-static {v13}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    .line 289
    invoke-static {v13}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->starY:I

    .line 291
    const v19, 0x7f0f00b1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 292
    .local v14, state:Landroid/view/View;
    invoke-static {v14}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    .line 293
    invoke-static {v14}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    .line 295
    const v19, 0x7f0f00b8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 296
    .local v16, unreadState:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->unreadStateX:I

    .line 297
    invoke-static/range {v16 .. v16}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->unreadStateY:I

    .line 299
    const v19, 0x7f0f00b7

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 300
    .local v12, senders:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    .line 301
    invoke-static {v12}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    .line 302
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v12, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersWidth:I

    .line 303
    invoke-static {v12}, Lcom/android/email/activity/MessageListItemCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersLineCount:I

    .line 304
    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersFontSize:I

    .line 305
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->ascent()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersAscent:I

    .line 307
    const v19, 0x7f0f0082

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 308
    .local v15, subject:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    .line 309
    invoke-static {v15}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    .line 310
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    .line 311
    invoke-static {v15}, Lcom/android/email/activity/MessageListItemCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineCount:I

    .line 312
    invoke-virtual {v15}, Landroid/widget/TextView;->getTextSize()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    .line 313
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->ascent()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectAscent:I

    .line 315
    invoke-virtual {v15}, Landroid/widget/TextView;->getLineHeight()I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineHeight:I

    .line 316
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->subjectTop:I

    .line 319
    const v19, 0x7f0f0067

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 320
    .local v5, chip:Landroid/view/View;
    invoke-static {v5}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    .line 321
    invoke-static {v5}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    .line 322
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getWidth(Landroid/view/View;Z)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->chipWidth:I

    .line 323
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/email/activity/MessageListItemCoordinates;->getHeight(Landroid/view/View;Z)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->chipHeight:I

    .line 325
    const v19, 0x7f0f00b6

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 326
    .local v7, date:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListItemCoordinates;->getX(Landroid/view/View;)I

    move-result v19

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->dateXEnd:I

    .line 327
    invoke-static {v7}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->dateY:I

    .line 328
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->dateFontSize:I

    .line 329
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->ascent()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->dateAscent:I

    .line 332
    const v19, 0x7f0f00b5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 333
    .local v11, paperclip:Landroid/view/View;
    invoke-static {v11}, Lcom/android/email/activity/MessageListItemCoordinates;->getY(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v6, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    .line 335
    .end local v4           #checkmark:Landroid/view/View;
    .end local v5           #chip:Landroid/view/View;
    .end local v7           #date:Landroid/widget/TextView;
    .end local v8           #height:I
    .end local v9           #heightSpec:I
    .end local v10           #mode:I
    .end local v11           #paperclip:Landroid/view/View;
    .end local v12           #senders:Landroid/widget/TextView;
    .end local v13           #star:Landroid/view/View;
    .end local v14           #state:Landroid/view/View;
    .end local v15           #subject:Landroid/widget/TextView;
    .end local v16           #unreadState:Landroid/view/View;
    .end local v17           #view:Landroid/view/View;
    .end local v18           #widthSpec:I
    :cond_0
    return-object v6
.end method

.method public static getDensityDependentArray([IF)[I
    .locals 3
    .parameter "values"
    .parameter "density"

    .prologue
    .line 167
    array-length v2, p0

    new-array v1, v2, [I

    .line 168
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 169
    aget v2, p0, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez p1, :cond_0

    const v1, 0x7f0a0007

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 181
    .local v0, itemHeight:F
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email messagelist itemHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    float-to-int v1, v0

    return v1

    .line 178
    .end local v0           #itemHeight:F
    :cond_0
    const v1, 0x7f0a0008

    goto :goto_0
.end method

.method public static getHeight(Landroid/view/View;Z)I
    .locals 4
    .parameter "view"
    .parameter "includeMargins"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getLayoutId(I)I
    .locals 3
    .parameter "mode"

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conversation header view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    const v0, 0x7f040041

    .line 157
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f040040

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLineCount(Landroid/widget/TextView;)I
    .locals 2
    .parameter "textView"

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public static getMode(Landroid/content/Context;IZ)I
    .locals 3
    .parameter "context"
    .parameter "width"
    .parameter "isSearch"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 129
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMinimumWidthWideMode:I

    if-gtz v2, :cond_2

    .line 132
    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMinimumWidthWideMode:I

    .line 134
    :cond_2
    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMsgUseWideMode:I

    if-gez v2, :cond_3

    .line 135
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMsgUseWideMode:I

    .line 138
    :cond_3
    const/4 v0, 0x1

    .line 139
    .local v0, mode:I
    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMsgUseWideMode:I

    if-eqz v2, :cond_0

    sget v2, Lcom/android/email/activity/MessageListItemCoordinates;->sMinimumWidthWideMode:I

    if-le p1, v2, :cond_0

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubjectLength(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/android/email/activity/MessageListItemCoordinates;->sSubjectLengths:[I

    if-nez v1, :cond_0

    .line 246
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItemCoordinates;->sSubjectLengths:[I

    .line 248
    :cond_0
    sget-object v1, Lcom/android/email/activity/MessageListItemCoordinates;->sSubjectLengths:[I

    aget v1, v1, p1

    return v1
.end method

.method public static getWidth(Landroid/view/View;Z)I
    .locals 4
    .parameter "view"
    .parameter "includeMargins"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 219
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getX(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, x:I
    :goto_0
    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 193
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 194
    :goto_1
    goto :goto_0

    .line 193
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 195
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method

.method private static getY(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, y:I
    :goto_0
    if-eqz p0, :cond_1

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 206
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object p0, v0

    .line 207
    :goto_1
    goto :goto_0

    .line 206
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 208
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method

.method public static isMultiPane(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static resetCaches()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/android/email/activity/MessageListItemCoordinates;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 256
    return-void
.end method
