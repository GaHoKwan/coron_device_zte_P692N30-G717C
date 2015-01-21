.class Lcom/android/camera/actor/VideoLivePhotoActor$2;
.super Ljava/lang/Object;
.source "VideoLivePhotoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoLivePhotoActor;->doStartPreview()V
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
    .line 165
    iput-object p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor$2;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$2;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 169
    return-void
.end method
