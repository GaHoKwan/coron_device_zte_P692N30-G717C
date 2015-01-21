.class Lcom/android/gallery3d/app/InfoExtImpl;
.super Ljava/lang/Object;
.source "TimeBar.java"


# static fields
.field private static final ELLIPSE:Ljava/lang/String; = "..."

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/InfoExtensionImpl"


# instance fields
.field private mEllipseLength:I

.field private mInfoBounds:Landroid/graphics/Rect;

.field private mInfoPaint:Landroid/graphics/Paint;

.field private mInfoText:Ljava/lang/String;

.field private mVisibleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .parameter "textSizeInPx"

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    const v1, -0x313132

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mEllipseLength:I

    .line 424
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "infoBounds"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    :cond_0
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public updateVisibleText(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "parent"
    .parameter "progressBar"
    .parameter "timeBounds"

    .prologue
    const/4 v6, 0x0

    .line 439
    iget-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 440
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    .line 463
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 444
    .local v3, tw:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 445
    .local v2, space:F
    cmpl-float v4, v3, v6

    if-lez v4, :cond_1

    cmpl-float v4, v2, v6

    if-lez v4, :cond_1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v0, v4

    .line 448
    .local v0, originalNum:F
    iget v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mEllipseLength:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v3

    float-to-int v1, v4

    .line 450
    .local v1, realNum:I
    const-string v4, "Gallery2/InfoExtensionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVisibleText() infoText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", space="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originalNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", realNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getPaddingLeft()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getPaddingRight()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", progressBar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    .line 460
    .end local v0           #originalNum:F
    .end local v1           #realNum:I
    :goto_1
    const-string v4, "Gallery2/InfoExtensionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVisibleText() infoText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", visibleText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", text width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", space="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mInfoText:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/app/InfoExtImpl;->mVisibleText:Ljava/lang/String;

    goto :goto_1
.end method
