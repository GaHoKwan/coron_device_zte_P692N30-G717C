.class public Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;
.super Landroid/view/View;
.source "TsHandWriting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsHandWriting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mCurDown:Z

.field mCurLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPressure:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private mHeaderBottom:I

.field public mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mVelocity:Landroid/view/VelocityTracker;

.field public mVelocityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsHandWriting;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter "c"

    .prologue
    const/16 v4, 0x1e0

    const/16 v8, 0xc0

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 199
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsHandWriting;

    .line 200
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v3, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v3}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocityList:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 203
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 205
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    .local v2, screenWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 207
    .local v1, screenHeight:I
    if-ne v4, v2, :cond_0

    const/16 v3, 0x320

    if-eq v3, v1, :cond_1

    :cond_0
    const/16 v3, 0x320

    if-ne v3, v2, :cond_2

    if-ne v4, v1, :cond_2

    .line 209
    :cond_1
    const/4 v3, 0x2

    #setter for: Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mZoom:I
    invoke-static {p1, v3}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->access$002(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;I)I

    .line 212
    :cond_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    .line 213
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->mZoom:I
    invoke-static {p1}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting;->access$000(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 215
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 219
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 220
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 222
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    .line 223
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 225
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v5, v6, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 230
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 357
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 358
    .local v1, m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 360
    .end local v1           #m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 361
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 363
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v20, v1, 0x5

    .line 248
    .local v20, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v1, v1

    add-int/lit8 v10, v1, 0x1

    .line 249
    .local v10, base:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mHeaderBottom:I

    .line 250
    .local v11, bottom:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v1, v20, -0x1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x3f80

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 253
    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    mul-int/lit8 v1, v20, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Y: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v20, 0x1

    int-to-float v4, v4

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 256
    mul-int/lit8 v1, v20, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v20, 0x3

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    mul-int/lit8 v1, v20, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v20, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const/high16 v4, 0x3f80

    sub-float v4, v1, v4

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 261
    const-string v1, "EM/TouchScreen/HW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurPressure = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pres: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v4, v20, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    mul-int/lit8 v1, v20, 0x3

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v20, 0x4

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    const/16 v22, 0x0

    .line 270
    .local v22, xVelocity:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XVel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v4, v20, 0x3

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    mul-int/lit8 v1, v20, 0x4

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    const/16 v24, 0x0

    .line 275
    .local v24, yVelocity:I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YVel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v4, v20, 0x4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 278
    .local v14, lineSz:I
    const/4 v13, 0x0

    .line 279
    .local v13, k:I
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 282
    .local v15, m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    const/4 v2, 0x0

    .line 283
    .local v2, lastX:F
    const/4 v3, 0x0

    .line 284
    .local v3, lastY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 285
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 286
    .local v18, sz:I
    const/4 v12, 0x0

    .line 287
    .local v12, i:I
    const/4 v12, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    .line 288
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;

    .line 289
    .local v16, n:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;
    if-lez v12, :cond_0

    .line 290
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;->mX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;->mY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 294
    :cond_0
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;->mX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 295
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;->mY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 268
    .end local v2           #lastX:F
    .end local v3           #lastY:F
    .end local v12           #i:I
    .end local v13           #k:I
    .end local v14           #lineSz:I
    .end local v15           #m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    .end local v16           #n:Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;
    .end local v18           #sz:I
    .end local v22           #xVelocity:I
    .end local v24           #yVelocity:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x447a

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v22, v0

    goto/16 :goto_0

    .line 273
    .restart local v22       #xVelocity:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x447a

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v24, v0

    goto/16 :goto_1

    .line 298
    .restart local v2       #lastX:F
    .restart local v3       #lastY:F
    .restart local v12       #i:I
    .restart local v13       #k:I
    .restart local v14       #lineSz:I
    .restart local v15       #m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    .restart local v18       #sz:I
    .restart local v24       #yVelocity:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/VelocityTracker;

    .line 299
    .local v19, velocity:Landroid/view/VelocityTracker;
    if-nez v19, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 309
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurDown:Z

    if-eqz v1, :cond_4

    .line 310
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    int-to-float v6, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    int-to-float v5, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    const/high16 v4, 0x437f

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move/from16 v17, v0

    .line 315
    .local v17, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x80

    move/from16 v0, v17

    rsub-int v6, v0, 0xff

    move/from16 v0, v17

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 318
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    .end local v17           #pressureLevel:I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 302
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 303
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v4, 0x4180

    mul-float v21, v1, v4

    .line 304
    .local v21, xVel:F
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v4, 0x4180

    mul-float v23, v1, v4

    .line 305
    .local v23, yVel:F
    add-float v4, v2, v21

    add-float v5, v3, v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 323
    .end local v2           #lastX:F
    .end local v3           #lastY:F
    .end local v12           #i:I
    .end local v15           #m:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;>;"
    .end local v18           #sz:I
    .end local v19           #velocity:Landroid/view/VelocityTracker;
    .end local v21           #xVel:F
    .end local v23           #yVel:F
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 238
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mHeaderBottom:I

    .line 239
    const-string v0, "EM/TouchScreen/HW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metrics: ascent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, action:I
    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    .line 331
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocityList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurLine:Ljava/util/ArrayList;

    .line 334
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mLines:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurLine:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 339
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 340
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurLine:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;

    iget-object v6, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsHandWriting;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;-><init>(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;Ljava/lang/Float;Ljava/lang/Float;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurLine:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;

    iget-object v6, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->this$0:Lcom/mediatek/engineermode/touchscreen/TsHandWriting;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$PT;-><init>(Lcom/mediatek/engineermode/touchscreen/TsHandWriting;Ljava/lang/Float;Ljava/lang/Float;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurDown:Z

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurX:I

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurY:I

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    .line 349
    const-string v3, "EM/TouchScreen/HW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event.getPressure()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurPressure:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/mediatek/engineermode/touchscreen/TsHandWriting$MyView;->mCurWidth:I

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 353
    return v4

    .line 344
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
