.class Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;
.super Ljava/lang/Object;
.source "BasicAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

.field final synthetic val$d:I

.field final synthetic val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

.field final synthetic val$m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iput-object p2, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    iput p3, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$d:I

    iput-object p4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$l:Lcom/mediatek/ngin3d/animation/Animation$Listener;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->this$1:Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v2, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$d:I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;->val$m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/animation/Animation$Listener;->onMarkerReached(Lcom/mediatek/ngin3d/animation/Animation;ILjava/lang/String;)V

    .line 124
    return-void
.end method
