.class Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;
.super Ljava/lang/Object;
.source "MavRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/mpo/MavRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animation"
.end annotation


# static fields
.field private static final INTERVALTIME:D = 0.02


# instance fields
.field private RATIO:D

.field private mCurrenfAnimationFrame:I

.field private mCurrentMavFrameIndex:I

.field private mIntervalTime:D

.field private mNumberOfAnimationFrame:I

.field private mTargetMavFrameIndex:I

.field public mType:I

.field final synthetic this$0:Lcom/mediatek/gallery3d/mpo/MavRenderThread;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/mpo/MavRenderThread;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0xffff

    .line 87
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->this$0:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mIntervalTime:D

    .line 93
    iput v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrenfAnimationFrame:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/mpo/MavRenderThread;Lcom/mediatek/gallery3d/mpo/MavRenderThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;-><init>(Lcom/mediatek/gallery3d/mpo/MavRenderThread;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->advanceAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getCurrentFramIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getIntervalTime()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getTagetFrameIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->isFinished()Z

    move-result v0

    return v0
.end method

.method private advanceAnimation()Z
    .locals 5

    .prologue
    const v3, 0xffff

    const/4 v1, 0x1

    .line 112
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    if-ne v2, v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    iget v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    sub-int v0, v2, v3

    .line 116
    .local v0, DValue:I
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mType:I

    if-nez v2, :cond_5

    .line 117
    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrenfAnimationFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrenfAnimationFrame:I

    .line 118
    if-lez v0, :cond_3

    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    iput v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    .line 119
    const-wide v1, 0x3f947ae147ae147bL

    iput-wide v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mIntervalTime:D

    .line 123
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->this$0:Lcom/mediatek/gallery3d/mpo/MavRenderThread;

    #getter for: Lcom/mediatek/gallery3d/mpo/MavRenderThread;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->access$600(Lcom/mediatek/gallery3d/mpo/MavRenderThread;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DValue======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mCurrenfAnimationFrame=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrenfAnimationFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mIntervalTime==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mIntervalTime:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mCurrentMavFrameIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mTargetMavFrameIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->isFinished()Z

    move-result v1

    goto :goto_0

    .line 118
    :cond_3
    if-gez v0, :cond_4

    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    goto :goto_1

    .line 120
    :cond_5
    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mType:I

    if-ne v2, v1, :cond_2

    .line 121
    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    iput v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    goto :goto_2
.end method

.method private getCurrentFramIndex()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    return v0
.end method

.method private getIntervalTime()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mIntervalTime:D

    return-wide v0
.end method

.method private getTagetFrameIndex()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    return v0
.end method

.method private isFinished()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initAnimation(II)V
    .locals 4
    .parameter "lastIndex"
    .parameter "type"

    .prologue
    const v1, 0xffff

    .line 101
    iput p2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mType:I

    .line 102
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 103
    iput p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrenfAnimationFrame:I

    .line 106
    iput p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    .line 107
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mCurrentMavFrameIndex:I

    iget v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mTargetMavFrameIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mNumberOfAnimationFrame:I

    .line 108
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mNumberOfAnimationFrame:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->mNumberOfAnimationFrame:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x3f947ae147ae147bL

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->RATIO:D

    .line 109
    return-void
.end method
