.class Lcom/android/camera/actor/VideoEffectsActor$2$1;
.super Ljava/lang/Object;
.source "VideoEffectsActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoEffectsActor$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/VideoEffectsActor$2;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoEffectsActor$2;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/camera/actor/VideoEffectsActor$2$1;->this$1:Lcom/android/camera/actor/VideoEffectsActor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2$1;->this$1:Lcom/android/camera/actor/VideoEffectsActor$2;

    iget-object v0, v0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2$1;->this$1:Lcom/android/camera/actor/VideoEffectsActor$2;

    iget-object v0, v0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->backToLastMode()V

    .line 670
    return-void
.end method