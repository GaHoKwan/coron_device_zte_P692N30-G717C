.class Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;
.super Ljava/lang/Object;
.source "KeyframeAnimation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->setupTimelineListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 7
    .parameter "timeline"

    .prologue
    const/4 v6, 0x0

    .line 113
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "KeyframeAnimation"

    const-string v1, "%d: Animation %s is completed, target is %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v4}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v1

    int-to-float v1, v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$100(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->getAnimationKey(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$200(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->onAnimationStopped(Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v6}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v6}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v1

    int-to-float v1, v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    goto :goto_0
.end method

.method public onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 0
    .parameter "timeline"

    .prologue
    .line 137
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
    .locals 0
    .parameter "timeline"
    .parameter "elapsedMsecs"
    .parameter "marker"
    .parameter "direction"

    .prologue
    .line 104
    return-void
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
    .locals 2
    .parameter "timeline"
    .parameter "elapsedMsecs"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    int-to-float v1, p2

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    .line 100
    return-void
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$100(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->getAnimationKey(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$200(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->onAnimationStopped(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 6
    .parameter "timeline"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "KeyframeAnimation"

    const-string v1, "%d: Animation %s is started"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->mSamples:Lcom/mediatek/ngin3d/animation/Samples;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$100(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->getAnimationKey(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$200(Lcom/mediatek/ngin3d/animation/Samples;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->onAnimationStarted(Ljava/lang/String;Lcom/mediatek/ngin3d/animation/Animation;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    .line 96
    :cond_2
    :goto_0
    return-void

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v1

    int-to-float v1, v1

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->onAnimate(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;->access$300(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;F)V

    goto :goto_0
.end method
