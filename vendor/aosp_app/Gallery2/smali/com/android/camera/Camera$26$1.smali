.class Lcom/android/camera/Camera$26$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$26;->onStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$26;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$26;)V
    .locals 0
    .parameter

    .prologue
    .line 3870
    iput-object p1, p0, Lcom/android/camera/Camera$26$1;->this$1:Lcom/android/camera/Camera$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3873
    iget-object v0, p0, Lcom/android/camera/Camera$26$1;->this$1:Lcom/android/camera/Camera$26;

    iget-object v0, v0, Lcom/android/camera/Camera$26;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3874
    iget-object v0, p0, Lcom/android/camera/Camera$26$1;->this$1:Lcom/android/camera/Camera$26;

    iget-object v0, v0, Lcom/android/camera/Camera$26;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 3876
    :cond_0
    return-void
.end method
