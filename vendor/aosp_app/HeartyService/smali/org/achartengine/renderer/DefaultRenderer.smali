.class public Lorg/achartengine/renderer/DefaultRenderer;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1000000

.field public static final NO_COLOR:I = 0x0

.field private static final REGULAR_TEXT_FONT:Landroid/graphics/Typeface; = null

.field public static final TEXT_COLOR:I = -0x333334


# instance fields
.field private mAntialiasing:Z

.field private mApplyBackgroundColor:Z

.field private mAxesColor:I

.field private mBackgroundColor:I

.field private mChartTitle:Ljava/lang/String;

.field private mChartTitleTextSize:F

.field private mClickEnabled:Z

.field private mExternalZoomEnabled:Z

.field private mFitLegend:Z

.field private mInScroll:Z

.field private mLabelsColor:I

.field private mLabelsTextSize:F

.field private mLegendHeight:I

.field private mLegendTextSize:F

.field private mMargins:[I

.field private mOriginalScale:F

.field private mPanEnabled:Z

.field private mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private mShowAxes:Z

.field private mShowCustomTextGrid:Z

.field private mShowGridX:Z

.field private mShowGridY:Z

.field private mShowLabels:Z

.field private mShowLegend:Z

.field private mStartAngle:F

.field private mTextTypefaceName:Ljava/lang/String;

.field private mTextTypefaceStyle:I

.field private mZoomButtonsVisible:Z

.field private mZoomEnabled:Z

.field private mZoomRate:F

.field private selectableBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/achartengine/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v1, -0x333334

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    .line 33
    const/high16 v0, 0x4170

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitleTextSize:F

    .line 44
    sget-object v0, Lorg/achartengine/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    .line 46
    iput v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    .line 52
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    .line 54
    iput v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    .line 56
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    .line 58
    iput v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    .line 60
    const/high16 v0, 0x4120

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 62
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    .line 64
    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 66
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mFitLegend:Z

    .line 68
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridX:Z

    .line 70
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridY:Z

    .line 72
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowCustomTextGrid:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    .line 76
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAntialiasing:Z

    .line 78
    iput v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    .line 82
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mScale:F

    .line 84
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mPanEnabled:Z

    .line 86
    iput-boolean v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomEnabled:Z

    .line 88
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    .line 90
    const/high16 v0, 0x3fc0

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomRate:F

    .line 92
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    .line 94
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mScale:F

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mOriginalScale:F

    .line 96
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mClickEnabled:Z

    .line 98
    const/16 v0, 0xf

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->selectableBuffer:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mStartAngle:F

    return-void

    .line 80
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "index"
    .parameter "renderer"

    .prologue
    .line 160
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method public addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 150
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public getAxesColor()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mBackgroundColor:I

    return v0
.end method

.method public getChartTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getChartTitleTextSize()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitleTextSize:F

    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    return v0
.end method

.method public getLabelsTextSize()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    return v0
.end method

.method public getLegendHeight()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    return v0
.end method

.method public getMargins()[I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    return-object v0
.end method

.method public getOriginalScale()F
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mOriginalScale:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mScale:F

    return v0
.end method

.method public getSelectableBuffer()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->selectableBuffer:I

    return v0
.end method

.method public getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 1
    .parameter "index"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getSeriesRendererCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeriesRenderers()[Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mStartAngle:F

    return v0
.end method

.method public getTextTypefaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypefaceStyle()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    return v0
.end method

.method public getZoomRate()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomRate:F

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAntialiasing:Z

    return v0
.end method

.method public isApplyBackgroundColor()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    return v0
.end method

.method public isClickEnabled()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mClickEnabled:Z

    return v0
.end method

.method public isExternalZoomEnabled()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    return v0
.end method

.method public isFitLegend()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mFitLegend:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mInScroll:Z

    return v0
.end method

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mPanEnabled:Z

    return v0
.end method

.method public isShowAxes()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    return v0
.end method

.method public isShowCustomTextGrid()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowCustomTextGrid:Z

    return v0
.end method

.method public isShowGridX()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridX:Z

    return v0
.end method

.method public isShowGridY()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridY:Z

    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    return v0
.end method

.method public isZoomButtonsVisible()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomEnabled:Z

    return v0
.end method

.method public removeSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public setAntialiasing(Z)V
    .locals 0
    .parameter "antialiasing"

    .prologue
    .line 489
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAntialiasing:Z

    .line 490
    return-void
.end method

.method public setApplyBackgroundColor(Z)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 233
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    .line 234
    return-void
.end method

.method public setAxesColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 251
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    .line 252
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 215
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mBackgroundColor:I

    .line 216
    return-void
.end method

.method public setChartTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setChartTitleTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 141
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mChartTitleTextSize:F

    .line 142
    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 625
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mClickEnabled:Z

    .line 626
    return-void
.end method

.method public setExternalZoomEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 571
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    .line 572
    return-void
.end method

.method public setFitLegend(Z)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mFitLegend:Z

    .line 425
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "inScroll"

    .prologue
    .line 700
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mInScroll:Z

    .line 701
    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 270
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    .line 271
    return-void
.end method

.method public setLabelsTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 288
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 289
    return-void
.end method

.method public setLegendHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 661
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    .line 662
    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 460
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 461
    return-void
.end method

.method public setMargins([I)V
    .locals 0
    .parameter "margins"

    .prologue
    .line 681
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    .line 682
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 598
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mPanEnabled:Z

    .line 599
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 517
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mScale:F

    .line 518
    return-void
.end method

.method public setSelectableBuffer(I)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 643
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->selectableBuffer:I

    .line 644
    return-void
.end method

.method public setShowAxes(Z)V
    .locals 0
    .parameter "showAxes"

    .prologue
    .line 306
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    .line 307
    return-void
.end method

.method public setShowCustomTextGrid(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowCustomTextGrid:Z

    .line 389
    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowGridX(Z)V

    .line 370
    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowGridY(Z)V

    .line 371
    return-void
.end method

.method public setShowGridX(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 351
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridX:Z

    .line 352
    return-void
.end method

.method public setShowGridY(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 360
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGridY:Z

    .line 361
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0
    .parameter "showLabels"

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    .line 325
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .parameter "showLegend"

    .prologue
    .line 406
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    .line 407
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .parameter "startAngle"

    .prologue
    .line 722
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mStartAngle:F

    .line 723
    return-void
.end method

.method public setTextTypeface(Ljava/lang/String;I)V
    .locals 0
    .parameter "typefaceName"
    .parameter "style"

    .prologue
    .line 470
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    .line 471
    iput p2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    .line 472
    return-void
.end method

.method public setZoomButtonsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 553
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    .line 554
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 535
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomEnabled:Z

    .line 536
    return-void
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 607
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mZoomRate:F

    .line 608
    return-void
.end method
