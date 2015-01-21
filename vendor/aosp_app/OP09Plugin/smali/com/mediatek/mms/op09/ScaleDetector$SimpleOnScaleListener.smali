.class public abstract Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;
.super Ljava/lang/Object;
.source "ScaleDetector.java"

# interfaces
.implements Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/op09/ScaleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleOnScaleListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener$OnTextSizeChanged;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0x12

.field private static final MAX_TEXT_SIZE:I = 0x20

.field private static final MIN_ADJUST_TEXT_SIZE:F = 0.2f

.field private static final MIN_TEXT_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SimpleOnScaleListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;-><init>(Landroid/content/Context;F)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .parameter "context"
    .parameter "initTextSize"

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    .line 396
    iput-object p1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mContext:Landroid/content/Context;

    .line 397
    iput p2, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    .line 398
    return-void
.end method


# virtual methods
.method public onScale(Lcom/mediatek/mms/op09/ScaleDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 417
    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    invoke-virtual {p1}, Lcom/mediatek/mms/op09/ScaleDetector;->getScaleFactor()F

    move-result v2

    mul-float v0, v1, v2

    .line 419
    .local v0, size:F
    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 432
    :goto_0
    return v1

    .line 422
    :cond_0
    const/high16 v1, 0x4120

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 423
    const/high16 v0, 0x4120

    .line 425
    :cond_1
    const/high16 v1, 0x4200

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 426
    const/high16 v0, 0x4200

    .line 428
    :cond_2
    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    sub-float v1, v0, v1

    float-to-double v1, v1

    const-wide v3, 0x3e7ad7f29abcaf48L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    sub-float v1, v0, v1

    float-to-double v1, v1

    const-wide v3, -0x4185280d654350b8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 429
    :cond_3
    iput v0, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    .line 430
    invoke-virtual {p0, v0}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->performChangeText(F)V

    .line 432
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Lcom/mediatek/mms/op09/ScaleDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 410
    const-string v0, "SimpleOnScaleListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd -> mTextSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    invoke-static {v0, v1}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->setTextSize(Landroid/content/Context;F)V

    .line 414
    return-void
.end method

.method public onScaleStart(Lcom/mediatek/mms/op09/ScaleDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 436
    const-string v0, "SimpleOnScaleListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleStart -> mTextSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract performChangeText(F)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mContext:Landroid/content/Context;

    .line 402
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 405
    iput p1, p0, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->mTextSize:F

    .line 406
    return-void
.end method
