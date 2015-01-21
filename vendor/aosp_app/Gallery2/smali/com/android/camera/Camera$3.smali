.class Lcom/android/camera/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->applyParameters(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$changedPreviewSize:Z


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    iput-boolean p2, p0, Lcom/android/camera/Camera$3;->val$changedPreviewSize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->setRotationToParameters()V

    .line 612
    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setZoomParameter()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)V

    .line 613
    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 614
    iget-boolean v0, p0, Lcom/android/camera/Camera$3;->val$changedPreviewSize:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->fetchParametersFromServer()Landroid/hardware/Camera$Parameters;

    .line 620
    :cond_0
    return-void
.end method
