.class public Lcom/mediatek/ngin3d/animation/KeyframeAnimator;
.super Landroid/animation/ValueAnimator;
.source "KeyframeAnimator.java"


# instance fields
.field private mInterpolatorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;",
            ">;"
        }
    .end annotation
.end field

.field private mKfDataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

.field private mTarget:Lcom/mediatek/ngin3d/Actor;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeDataSet;)V
    .locals 4
    .parameter "target"
    .parameter "kfDataSet"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mKfDataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    .line 66
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->setTarget(Lcom/mediatek/ngin3d/Actor;)V

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 69
    new-instance v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator$1;-><init>(Lcom/mediatek/ngin3d/animation/KeyframeAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/animation/KeyframeDataSet;)V
    .locals 1
    .parameter "kfDataSet"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;-><init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeDataSet;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimator;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->onAnimate(F)V

    return-void
.end method

.method private onAnimate(F)V
    .locals 9
    .parameter "timeMs"

    .prologue
    .line 77
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    if-nez v5, :cond_1

    .line 127
    :cond_0
    return-void

    .line 80
    :cond_1
    const/high16 v5, 0x447a

    div-float v0, p1, v5

    .line 82
    .local v0, currTime:F
    const/4 v3, 0x1

    .local v3, type:I
    :goto_0
    const/16 v5, 0x9

    if-ge v3, v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mInterpolatorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

    .line 84
    .local v1, interpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->getValue(F)Ljava/lang/Object;

    move-result-object v4

    .line 89
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 93
    packed-switch v3, :pswitch_data_0

    .line 82
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .restart local v4       #value:Ljava/lang/Object;
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    instance-of v5, v5, Lcom/mediatek/ngin3d/Plane;

    if-eqz v5, :cond_3

    .line 96
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Plane;

    check-cast v4, Lcom/mediatek/ngin3d/Point;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_1

    .line 97
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    instance-of v5, v5, Lcom/mediatek/ngin3d/BitmapText;

    if-eqz v5, :cond_2

    .line 98
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/BitmapText;

    check-cast v4, Lcom/mediatek/ngin3d/Point;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/BitmapText;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_1

    .line 102
    .restart local v4       #value:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->isNormalized()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 103
    check-cast v5, Lcom/mediatek/ngin3d/Point;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    .line 105
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v4, Lcom/mediatek/ngin3d/Point;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_1

    .line 111
    .restart local v4       #value:Ljava/lang/Object;
    :pswitch_2
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v4, Lcom/mediatek/ngin3d/Rotation;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/Actor;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_1

    .line 114
    .restart local v4       #value:Ljava/lang/Object;
    :pswitch_3
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v4, Lcom/mediatek/ngin3d/Scale;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    goto :goto_1

    .line 117
    .restart local v4       #value:Ljava/lang/Object;
    :pswitch_4
    const-wide v5, 0x4004666666666666L

    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 118
    .local v2, opacity:I
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v5, v2}, Lcom/mediatek/ngin3d/Actor;->setOpacity(I)V

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimator;
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    .line 159
    .local v0, animation:Lcom/mediatek/ngin3d/animation/KeyframeAnimator;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 160
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method public final setTarget(Lcom/mediatek/ngin3d/Actor;)V
    .locals 7
    .parameter "target"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 133
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mInterpolatorSet:Ljava/util/HashMap;

    .line 135
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mKfDataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/KeyframeData;

    .line 137
    .local v2, kfData:Lcom/mediatek/ngin3d/animation/KeyframeData;
    new-instance v1, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->getSamples()Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;-><init>(Lcom/mediatek/ngin3d/animation/Samples;)V

    .line 138
    .local v1, interpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->isNormalized()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->setNormalized(Z)V

    .line 139
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->mInterpolatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 144
    .end local v1           #interpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;
    .end local v2           #kfData:Lcom/mediatek/ngin3d/animation/KeyframeData;
    :cond_1
    return-void
.end method
