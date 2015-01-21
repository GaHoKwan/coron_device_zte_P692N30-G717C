.class Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;
.super Lcom/mediatek/ngin3d/animation/Animation$Listener;
.source "ImplicitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Animation$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    iget-object v0, v0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/Transaction;->mCompletion:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    iget-object v0, v0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/Transaction;->mCompletion:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    iget-object v1, v0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    iget-object v0, v0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/ngin3d/ImplicitAnimation;->mDone:Z
    invoke-static {v0, v2}, Lcom/mediatek/ngin3d/ImplicitAnimation;->access$002(Lcom/mediatek/ngin3d/ImplicitAnimation;Z)Z

    .line 95
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;->this$1:Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;

    iget-object v0, v0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
