.class Lcom/android/camera/Camera$CameraStartUpThread$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$CameraStartUpThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$CameraStartUpThread;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$CameraStartUpThread;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStartUpThread$1;->this$1:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/Camera$CameraStartUpThread$1;->this$1:Lcom/android/camera/Camera$CameraStartUpThread;

    iget-object v0, v0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    .line 470
    return-void
.end method
