.class Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/mediatek/camera/ext/IAppGuideExt$OnGuideFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideFinish()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/Camera;->setAppGuideFinished(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;Z)V

    .line 829
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Lcom/android/camera/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VoiceManager;->startUpdateVoiceState()V

    .line 831
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showRemainingAways()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)V

    .line 833
    :cond_1
    return-void
.end method
