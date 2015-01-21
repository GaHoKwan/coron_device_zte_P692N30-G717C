.class Lcom/android/camera/actor/PanoramaActor$7$1;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/PanoramaActor$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/PanoramaActor$7;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor$7;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$7$1;->this$1:Lcom/android/camera/actor/PanoramaActor$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7$1;->this$1:Lcom/android/camera/actor/PanoramaActor$7;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mStopping:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$702(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7$1;->this$1:Lcom/android/camera/actor/PanoramaActor$7;

    iget-boolean v0, v0, Lcom/android/camera/actor/PanoramaActor$7;->val$isMerge:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7$1;->this$1:Lcom/android/camera/actor/PanoramaActor$7;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #calls: Lcom/android/camera/actor/PanoramaActor;->onHardwareStopped(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$800(Lcom/android/camera/actor/PanoramaActor;Z)V

    .line 221
    :cond_0
    return-void
.end method
