.class public Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
.super Lcom/mediatek/ngin3d/animation/BasicAnimation;
.source "KeyframeAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyframeAnimation"


# instance fields
.field private mInterpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

.field private mNormalized:Z

.field private final mSamples:Lcom/mediatek/ngin3d/animation/Samples;

.field private mTarget:Lcom/mediatek/ngin3d/Actor;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeData;)V
    .locals 4
    .parameter "target"
    .parameter "kfData"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 65
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->getSamples()Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    .line 66
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/animation/KeyframeData;->isNormalized()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mNormalized:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;

    .line 69
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v1

    .line 70
    .local v1, time:[F
    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 75
    .local v0, duration:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 76
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->setupTimelineListener()V

    .line 77
    return-void

    .line 73
    .end local v0           #duration:I
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .restart local v0       #duration:I
    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/animation/KeyframeData;)V
    .locals 1
    .parameter "kfData"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeData;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->getAnimationKey(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V

    return-void
.end method

.method private static getAnimationKey(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;
    .locals 4
    .parameter "samples"

    .prologue
    .line 207
    const-string v0, ""

    .line 208
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown samples type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :pswitch_0
    const-string v0, "anchor"

    .line 238
    :goto_0
    :pswitch_1
    return-object v0

    .line 214
    :pswitch_2
    const-string v0, "position"

    .line 215
    goto :goto_0

    .line 224
    :pswitch_3
    const-string v0, "rotation"

    .line 225
    goto :goto_0

    .line 228
    :pswitch_4
    const-string v0, "scale"

    .line 229
    goto :goto_0

    .line 232
    :pswitch_5
    const-string v0, "alpha"

    .line 233
    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private onAnimate(F)V
    .locals 10
    .parameter "timeMs"

    .prologue
    const/4 v8, 0x1

    .line 142
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    if-nez v6, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/high16 v6, 0x447a

    div-float v0, p1, v6

    .line 147
    .local v0, currTime:F
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

    invoke-virtual {v6, v0}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;->getValue(F)Ljava/lang/Object;

    move-result-object v5

    .line 148
    .local v5, value:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 151
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Samples;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-boolean v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mNormalized:Z

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 162
    check-cast v6, Lcom/mediatek/ngin3d/Point;

    iput-boolean v8, v6, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    .line 164
    :cond_2
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Point;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 153
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    instance-of v6, v6, Lcom/mediatek/ngin3d/Plane;

    if-eqz v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v6, Lcom/mediatek/ngin3d/Plane;

    check-cast v5, Lcom/mediatek/ngin3d/Point;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .line 155
    .restart local v5       #value:Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    instance-of v6, v6, Lcom/mediatek/ngin3d/BitmapText;

    if-eqz v6, :cond_0

    .line 156
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v6, Lcom/mediatek/ngin3d/BitmapText;

    check-cast v5, Lcom/mediatek/ngin3d/Point;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/BitmapText;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0

    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_2
    move-object v3, v5

    .line 168
    check-cast v3, Lcom/mediatek/ngin3d/Rotation;

    .line 169
    .local v3, rot:Lcom/mediatek/ngin3d/Rotation;
    iget v6, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    .line 170
    sget-object v6, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {v3, v6}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F

    move-result-object v1

    .line 171
    .local v1, newValue:[F
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Actor;->getRotation()Lcom/mediatek/ngin3d/Rotation;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F

    move-result-object v4

    .line 172
    .local v4, target:[F
    sget-object v6, Lcom/mediatek/ngin3d/EulerOrder;->ZYX:Lcom/mediatek/ngin3d/EulerOrder;

    const/4 v7, 0x0

    aget v7, v1, v7

    aget v8, v1, v8

    const/4 v9, 0x2

    aget v9, v4, v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/mediatek/ngin3d/Rotation;->set(Lcom/mediatek/ngin3d/EulerOrder;FFF)V

    .line 174
    .end local v1           #newValue:[F
    .end local v4           #target:[F
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v6, v3}, Lcom/mediatek/ngin3d/Actor;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_0

    .line 178
    .end local v3           #rot:Lcom/mediatek/ngin3d/Rotation;
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Rotation;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Actor;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto :goto_0

    .line 182
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Rotation;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Actor;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto/16 :goto_0

    .line 186
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_5
    iget v6, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_0

    .line 187
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Rotation;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Actor;->setRotation(Lcom/mediatek/ngin3d/Rotation;)V

    goto/16 :goto_0

    .line 192
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_6
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    check-cast v5, Lcom/mediatek/ngin3d/Scale;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    goto/16 :goto_0

    .line 196
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_7
    const-wide v6, 0x4004666666666666L

    check-cast v5, Ljava/lang/Float;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 197
    .local v2, opacity:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    invoke-virtual {v6, v2}, Lcom/mediatek/ngin3d/Actor;->setOpacity(I)V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private setupTimelineListener()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    new-instance v1, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;-><init>(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    .line 139
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    .line 285
    .local v0, animation:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
    invoke-direct {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->setupTimelineListener()V

    .line 286
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 287
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
    .line 52
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->clone()Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public complete()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->complete()Lcom/mediatek/ngin3d/animation/Animation;

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getOriginalDuration()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V

    .line 274
    :goto_0
    return-object p0

    .line 272
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V

    goto :goto_0
.end method

.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method public reset()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->reset()Lcom/mediatek/ngin3d/animation/Animation;

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V

    .line 263
    :goto_0
    return-object p0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getOriginalDuration()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V

    goto :goto_0
.end method

.method public final setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 2
    .parameter "target"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 245
    new-instance v0, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;-><init>(Lcom/mediatek/ngin3d/animation/Samples;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mInterpolator:Lcom/mediatek/ngin3d/animation/KeyframeInterpolator;

    .line 246
    return-object p0
.end method
