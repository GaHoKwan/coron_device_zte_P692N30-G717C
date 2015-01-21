.class Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;
.super Ljava/lang/Object;
.source "BasicAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

.field final synthetic val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Animation$Listener;->onStarted(Lcom/mediatek/ngin3d/animation/Animation;)V

    .line 86
    return-void
.end method
