.class Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;
.super Ljava/lang/Object;
.source "BasicAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

.field final synthetic val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    iput p3, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->val$t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v2, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;->val$t:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Animation$Listener;->onNewFrame(Lcom/mediatek/ngin3d/animation/Animation;I)V

    .line 104
    return-void
.end method
