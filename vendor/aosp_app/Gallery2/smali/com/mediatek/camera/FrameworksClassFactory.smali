.class public Lcom/mediatek/camera/FrameworksClassFactory;
.super Ljava/lang/Object;
.source "FrameworksClassFactory.java"


# static fields
.field private static final LOG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final MOCK_CAMERA:Z = false

.field private static final TAG:Ljava/lang/String; = "FrameworksClassFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 67
    sget-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/mediatek/mock/hardware/MockCamera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto :goto_0
.end method

.method public static getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/mediatek/mock/media/MockMediaRecorder;

    invoke-direct {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;-><init>()V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    goto :goto_0
.end method

.method public static getMtkCamcorderProfile(II)Landroid/media/CamcorderProfile;
    .locals 1
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 51
    sget-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Lcom/mediatek/mock/media/MockCamcorderProfileHelper;->getMtkCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/mediatek/mock/hardware/MockCamera;->getNumberOfCameras()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    goto :goto_0
.end method

.method public static isMockCamera()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    return v0
.end method

.method public static openCamera(I)Lcom/mediatek/camera/ICamera;
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 29
    sget-boolean v1, Lcom/mediatek/camera/FrameworksClassFactory;->MOCK_CAMERA:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p0}, Lcom/mediatek/mock/hardware/MockCamera;->open(I)Lcom/mediatek/mock/hardware/MockCamera;

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    .line 32
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 33
    .local v0, camera:Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 34
    const-string v1, "FrameworksClassFactory"

    const-string v2, "openCamera:got null hardware camera!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Lcom/mediatek/camera/AndroidCamera;

    invoke-direct {v1, v0}, Lcom/mediatek/camera/AndroidCamera;-><init>(Landroid/hardware/Camera;)V

    goto :goto_0
.end method
