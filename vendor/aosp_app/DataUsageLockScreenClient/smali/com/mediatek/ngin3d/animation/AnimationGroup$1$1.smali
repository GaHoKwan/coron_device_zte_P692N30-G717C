.class Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;
.super Ljava/lang/Object;
.source "AnimationGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/AnimationGroup$1;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #calls: Lcom/mediatek/ngin3d/animation/AnimationGroup;->alignAnimation()V
    invoke-static {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$300(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V

    .line 128
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #getter for: Lcom/mediatek/ngin3d/animation/AnimationGroup;->mAnimations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$100(Lcom/mediatek/ngin3d/animation/AnimationGroup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Animation;

    .line 129
    .local v0, animation:Lcom/mediatek/ngin3d/animation/Animation;
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDirection()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ngin3d/animation/Animation;->setDirection(I)V

    goto :goto_0

    .line 131
    .end local v0           #animation:Lcom/mediatek/ngin3d/animation/Animation;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/AnimationGroup$1$1;->this$1:Lcom/mediatek/ngin3d/animation/AnimationGroup$1;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/AnimationGroup$1;->this$0:Lcom/mediatek/ngin3d/animation/AnimationGroup;

    #calls: Lcom/mediatek/ngin3d/animation/AnimationGroup;->startAll()V
    invoke-static {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->access$400(Lcom/mediatek/ngin3d/animation/AnimationGroup;)V

    .line 133
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
