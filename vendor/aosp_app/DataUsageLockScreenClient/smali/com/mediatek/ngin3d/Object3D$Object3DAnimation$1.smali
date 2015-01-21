.class Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;
.super Ljava/lang/Object;
.source "Object3D.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;-><init>(Lcom/mediatek/ngin3d/Object3D;Lcom/mediatek/ngin3d/Object3D;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

.field final synthetic val$this$0:Lcom/mediatek/ngin3d/Object3D;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;Lcom/mediatek/ngin3d/Object3D;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    iput-object p2, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->val$this$0:Lcom/mediatek/ngin3d/Object3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 4
    .parameter "timeline"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->this$0:Lcom/mediatek/ngin3d/Object3D;

    #getter for: Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;
    invoke-static {v1}, Lcom/mediatek/ngin3d/Object3D;->access$300(Lcom/mediatek/ngin3d/Object3D;)Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getLoop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-static {v1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$400(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/animation/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v1

    int-to-float v0, v1

    .line 429
    .local v0, duration:F
    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;
    invoke-static {v1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$000(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/Object3D;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Object3D;->setAnimationProgress(F)V

    .line 430
    const-string v1, "Object3D"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0           #duration:F
    :cond_0
    return-void
.end method

.method public onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 3
    .parameter "timeline"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-static {v1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$500(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/animation/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$114(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;J)J

    .line 436
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
    .locals 0
    .parameter "timeline"
    .parameter "elapsedMsecs"
    .parameter "marker"
    .parameter "direction"

    .prologue
    .line 420
    return-void
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
    .locals 5
    .parameter "timeline"
    .parameter "elapsedMsecs"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$000(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/Object3D;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mLoopTime:J
    invoke-static {v1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$100(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    #calls: Lcom/mediatek/ngin3d/Object3D;->update(F)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/Object3D;->access$200(Lcom/mediatek/ngin3d/Object3D;F)V

    .line 416
    return-void
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$000(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/Object3D;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Animation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->onAnimationStopped(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 3
    .parameter "timeline"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    #getter for: Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->access$000(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/Object3D;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Animation;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;->this$1:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->onAnimationStarted(Ljava/lang/String;Lcom/mediatek/ngin3d/animation/Animation;)V

    .line 412
    return-void
.end method
