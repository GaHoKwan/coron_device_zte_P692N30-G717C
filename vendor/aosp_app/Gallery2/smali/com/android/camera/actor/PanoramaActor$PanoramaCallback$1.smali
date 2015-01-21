.class Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->onCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;->this$1:Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;->this$1:Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1402(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 266
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;->this$1:Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->startCenterAnimation()V

    .line 267
    return-void
.end method
