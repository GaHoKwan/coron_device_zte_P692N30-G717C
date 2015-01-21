.class Lcom/mediatek/ngin3d/animation/AnimationGroup$1;
.super Ljava/lang/Object;
.source "AnimationGroup.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/AnimationGroup;->setupTimelineListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 8
    .parameter "timeline"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    iget v2, v2, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "AnimationGroup"

    const-string v3, "%d: AnimationGroup %s is completed"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    iget v2, v2, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$100(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 116
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/ngin3d/animation/Animation;->setProgress(F)V

    goto :goto_0

    .line 119
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/Animation;->applyOnCompletedFlags()V

    .line 120
    return-void
.end method

.method public onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 123
    new-instance v0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;-><init>(Lcom/mediatek/ngin3d/animation/AnimationGroup$1;)V

    .line 135
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v1, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
    .locals 4
    .parameter "timeline"
    .parameter "elapsedMsecs"
    .parameter "marker"
    .parameter "direction"

    .prologue
    .line 91
    const-string v3, "{Stop}"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne p4, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$100(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 93
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->getDuration()I

    move-result v1

    .line 94
    .local v1, duration:I
    if-lt v1, p2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #calls: Lcom/mediatek/ngin3d/animation/AnimationGroup;->action(Lcom/mediatek/ngin3d/animation/Animation;II)V
    invoke-static {v3, v0, p2, p4}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$200(Lcom/mediatek/ngin3d/animation/AnimationGroup;Lcom/mediatek/ngin3d/animation/Animation;II)V

    goto :goto_0

    .line 99
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    .end local v1           #duration:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
    .locals 0
    .parameter "timeline"
    .parameter "elapsedMsecs"

    .prologue
    .line 88
    return-void
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 6
    .parameter "timeline"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "AnimationGroup"

    const-string v1, "%d: AnimationGroup %s is paused"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$000(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$000(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Animation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->onAnimationStopped(Ljava/lang/String;)V

    .line 108
    :cond_1
    return-void
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 6
    .parameter "timeline"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    iget v0, v0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "AnimationGroup"

    const-string v1, "%d: AnimationGroup %s is started"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Animation;->applyOnStartedFlags()V

    .line 81
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$000(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mTarget:Lcom/mediatek/ngin3d/Actor;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$000(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Animation;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->onAnimationStarted(Ljava/lang/String;Lcom/mediatek/ngin3d/animation/Animation;)V

    .line 84
    :cond_1
    return-void
.end method
