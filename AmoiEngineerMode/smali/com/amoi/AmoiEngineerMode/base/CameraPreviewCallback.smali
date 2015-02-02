.class public Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreviewCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_BACK_FACE:I = 0x1

.field public static final TYPE_FRONT_FACE:I = 0x2


# instance fields
.field private cameraType:I

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "cameraType"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->cameraType:I

    .line 33
    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL

    .line 81
    .local v1, ASPECT_TOLERANCE:D
    move/from16 v0, p2

    int-to-double v13, v0

    move/from16 v0, p3

    int-to-double v15, v0

    div-double v11, v13, v15

    .line 82
    .local v11, targetRatio:D
    if-nez p1, :cond_1

    .line 83
    const/4 v6, 0x0

    .line 112
    :cond_0
    return-object v6

    .line 85
    :cond_1
    const/4 v6, 0x0

    .line 86
    .local v6, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 88
    .local v4, minDiff:D
    move/from16 v10, p3

    .line 91
    .local v10, targetHeight:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 92
    .local v9, size:Landroid/hardware/Camera$Size;
    const-string v13, "EngineerMode"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v13, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v7, v13, v15

    .line 94
    .local v7, ratio:D
    sub-double v13, v7, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_2

    .line 96
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_2

    .line 97
    move-object v6, v9

    .line 98
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_0

    .line 103
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v6, :cond_0

    .line 104
    const-wide v4, 0x7fefffffffffffffL

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 106
    .restart local v9       #size:Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_4

    .line 107
    move-object v6, v9

    .line 108
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_1
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 117
    const-string v5, "EngineerMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " surfaceChanged w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 119
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->instance()Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCameraId:I

    aget-object v5, v5, v6

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 121
    .local v0, camOr:I
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 122
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v4, p3, p4}, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 123
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    const-string v5, "EngineerMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " optimalSize: width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v0, :cond_0

    const/16 v5, 0xb4

    if-ne v0, v5, :cond_2

    .line 126
    :cond_0
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 131
    :goto_0
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCameraId:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 132
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 143
    return-void

    .line 128
    :cond_2
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 140
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter "holder"

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x2

    .line 36
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceCreated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->cameraType:I

    if-ne v2, v5, :cond_1

    .line 39
    const/4 v2, 0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCameraId:I

    .line 43
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    .line 46
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 47
    .local v1, params:Landroid/hardware/Camera$Parameters;
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->cameraType:I

    if-ne v2, v5, :cond_0

    .line 49
    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 52
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    return-void

    .line 41
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCameraId:I

    goto :goto_0

    .line 56
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 57
    .local v0, exception:Ljava/io/IOException;
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error to create camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 65
    const-string v0, "EngineerMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceDestroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 67
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraPreviewCallback;->mCamera:Landroid/hardware/Camera;

    .line 69
    return-void
.end method
