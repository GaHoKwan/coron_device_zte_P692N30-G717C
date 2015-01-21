.class final Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1504
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1507
    const-string v0, "EM/Camera"

    const-string v1, "JpegPictureCallback"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    const-string v0, "EM/Camera"

    const-string v1, "jpegData != null"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->storeImage([B)V
    invoke-static {v0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3900(Lcom/mediatek/engineermode/camera/CameraPreview;[B)V

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$4002(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1513
    return-void
.end method
