.class Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;
.super Lcom/mediatek/ngin3d/animation/BasicAnimation;
.source "Object3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Object3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Object3DAnimation"
.end annotation


# instance fields
.field private mLoopTime:J

.field private final mTarget:Lcom/mediatek/ngin3d/Object3D;

.field final synthetic this$0:Lcom/mediatek/ngin3d/Object3D;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Object3D;Lcom/mediatek/ngin3d/Object3D;I)V
    .locals 2
    .parameter
    .parameter "target"
    .parameter "duration"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->this$0:Lcom/mediatek/ngin3d/Object3D;

    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    .line 407
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p3}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    .line 409
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    new-instance v1, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation$1;-><init>(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;Lcom/mediatek/ngin3d/Object3D;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/Object3D;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mLoopTime:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mLoopTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mLoopTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/animation/Timeline;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;)Lcom/mediatek/ngin3d/animation/Timeline;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    return-object v0
.end method


# virtual methods
.method public getTarget()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    return-object v0
.end method

.method public setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "loop"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->this$0:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->isRealized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->this$0:Lcom/mediatek/ngin3d/Object3D;

    #getter for: Lcom/mediatek/ngin3d/Object3D;->mAnimation:Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Object3D;->access$300(Lcom/mediatek/ngin3d/Object3D;)Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-object p0

    .line 470
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 471
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/Object3D;->setAnimationLoopEnabled(Z)V

    goto :goto_0
.end method

.method public final setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 2
    .parameter "target"

    .prologue
    .line 477
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "Object3DAnimation can not change target."

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 448
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Object3D;->rewind()V

    .line 449
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Object3D;->play()V

    .line 450
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->requestRender()V

    .line 451
    return-object p0
.end method

.method public stop()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->stop()Lcom/mediatek/ngin3d/animation/Animation;

    .line 457
    iget-object v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mTarget:Lcom/mediatek/ngin3d/Object3D;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Object3D;->stop()V

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ngin3d/Object3D$Object3DAnimation;->mLoopTime:J

    .line 459
    return-object p0
.end method
