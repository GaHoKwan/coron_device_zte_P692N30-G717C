.class final Lcom/android/camera/actor/VideoActor$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method public constructor <init>(Lcom/android/camera/actor/VideoActor;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1594
    const-string v0, "VideoActor"

    const-string v1, "onPictureTaken,storeImage"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/SaveRequest;->setData([B)V

    .line 1596
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 1597
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1598
    return-void
.end method
