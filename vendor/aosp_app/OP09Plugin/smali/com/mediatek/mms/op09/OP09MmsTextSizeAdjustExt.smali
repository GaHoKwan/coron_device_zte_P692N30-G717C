.class public Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;
.super Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;
.source "OP09MmsTextSizeAdjustExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/OP09MmsTextSizeAdjustExt"


# instance fields
.field private mHostContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

.field private mScaleDetector:Lcom/mediatek/mms/op09/ScaleDetector;

.field private mTextsize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;-><init>(Landroid/content/Context;)V

    .line 51
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    .line 56
    new-instance v0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;

    invoke-direct {v0, p0}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt$OP09OnScaleListener;-><init>(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;)V

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

    .line 57
    new-instance v0, Lcom/mediatek/mms/op09/ScaleDetector;

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

    invoke-direct {v0, v1}, Lcom/mediatek/mms/op09/ScaleDetector;-><init>(Lcom/mediatek/mms/op09/ScaleDetector$OnScaleListener;)V

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mScaleDetector:Lcom/mediatek/mms/op09/ScaleDetector;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mScaleDetector:Lcom/mediatek/mms/op09/ScaleDetector;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mScaleDetector:Lcom/mediatek/mms/op09/ScaleDetector;

    invoke-virtual {v0, p1}, Lcom/mediatek/mms/op09/ScaleDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V
    .locals 2
    .parameter "host"
    .parameter "activity"

    .prologue
    .line 65
    const-string v0, "Mms/OP09MmsTextSizeAdjustExt"

    const-string v1, "init(): init IMmsTextSizeAdjustHost."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mScaleDetector:Lcom/mediatek/mms/op09/ScaleDetector;

    invoke-virtual {v0, p2}, Lcom/mediatek/mms/op09/ScaleDetector;->setActivity(Landroid/app/Activity;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->setHostContext(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 94
    const-string v1, "Mms/OP09MmsTextSizeAdjustExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh(): mHostContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getTextSize(Landroid/content/Context;)F

    move-result v0

    .line 98
    .local v0, size:F
    const-string v1, "Mms/OP09MmsTextSizeAdjustExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh(): Current textSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new textSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 100
    iput v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    .line 101
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

    iget v2, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->setTextSize(F)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->getHost()Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    invoke-interface {v1, v2}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;->setTextSize(F)V

    .line 105
    .end local v0           #size:F
    :cond_0
    return-void
.end method

.method public setHostContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getTextSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    .line 75
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->setContext(Landroid/content/Context;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mListener:Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;

    iget v1, p0, Lcom/mediatek/mms/op09/OP09MmsTextSizeAdjustExt;->mTextsize:F

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/op09/ScaleDetector$SimpleOnScaleListener;->setTextSize(F)V

    .line 78
    return-void
.end method
