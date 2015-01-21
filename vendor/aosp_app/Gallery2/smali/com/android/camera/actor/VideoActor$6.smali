.class Lcom/android/camera/actor/VideoActor$6;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoActor;->restoreReviewIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/io/FileDescriptor;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$6;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/lang/String;)V

    goto :goto_0
.end method
