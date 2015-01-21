.class Lcom/android/camera/actor/SmileActor$2;
.super Ljava/lang/Object;
.source "SmileActor.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v2, 0x2

    .line 110
    if-nez p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$2;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
