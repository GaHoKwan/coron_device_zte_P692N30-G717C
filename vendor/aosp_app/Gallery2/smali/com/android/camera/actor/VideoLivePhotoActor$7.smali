.class Lcom/android/camera/actor/VideoLivePhotoActor$7;
.super Ljava/lang/Object;
.source "VideoLivePhotoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoLivePhotoActor;->unlockOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoLivePhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor$7;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$7;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 475
    return-void
.end method