.class Lcom/android/camera/actor/MavActor$6$1;
.super Ljava/lang/Object;
.source "MavActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/MavActor$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/MavActor$6;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MavActor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$6$1;->this$1:Lcom/android/camera/actor/MavActor$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6$1;->this$1:Lcom/android/camera/actor/MavActor$6;

    iget-object v0, v0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    #setter for: Lcom/android/camera/actor/MavActor;->mStopping:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$702(Lcom/android/camera/actor/MavActor;Z)Z

    .line 242
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6$1;->this$1:Lcom/android/camera/actor/MavActor$6;

    iget-boolean v0, v0, Lcom/android/camera/actor/MavActor$6;->val$isMerge:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6$1;->this$1:Lcom/android/camera/actor/MavActor$6;

    iget-object v0, v0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    #calls: Lcom/android/camera/actor/MavActor;->onHardwareStopped(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$800(Lcom/android/camera/actor/MavActor;Z)V

    .line 247
    :cond_0
    return-void
.end method
