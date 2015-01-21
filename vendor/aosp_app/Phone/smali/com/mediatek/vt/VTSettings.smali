.class public Lcom/mediatek/vt/VTSettings;
.super Ljava/lang/Object;
.source "VTSettings.java"


# static fields
.field static final CAMERA_ZOOM_SCALE_LEVELS:I = 0x10

.field private static final DEBUG:Z = true

.field static final KEY_CAMERA:Ljava/lang/String; = "camera"

.field static final KEY_IS_MUTE:Ljava/lang/String; = "microphone_is_mute"

.field static final KEY_LOCAL_IMAGE_PATH:Ljava/lang/String; = "KEY_LOCAL_IMAGE_PATH"

.field static final KEY_LOCAL_IMAGE_TYPE:Ljava/lang/String; = "KEY_LOCAL_IMAGE_TYPE"

.field static final KEY_LOCAL_VIDEO_TYPE:Ljava/lang/String; = "KEY_LOCAL_VIDEO_TYPE"

.field static final KEY_SPEAKER_IS_ON:Ljava/lang/String; = "SPEAKER_IS_ON"

.field static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VTSettings"

.field static final VTSETTING_FILE:Ljava/lang/String; = "vt_settings"


# instance fields
.field mCameraParamters:Lcom/mediatek/vt/CameraParamters;

.field mCameraZoomIncVal:I

.field mContext:Landroid/content/Context;

.field mImagePath:Ljava/lang/String;

.field mIsSwitch:Z

.field mLocalSurface:Landroid/view/SurfaceHolder;

.field mPeerSurface:Landroid/view/SurfaceHolder;

.field mVideoQuality:I

.field mVideoType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 191
    const-string v3, "VTSettings"

    const-string v4, "canDecBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v3, :cond_1

    .line 193
    const-string v3, "VTSettings"

    const-string v4, "canDecBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 197
    .local v1, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 198
    .local v0, min:I
    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canDecContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 329
    const-string v2, "VTSettings"

    const-string v3, "canDecContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v2, :cond_1

    .line 331
    const-string v2, "VTSettings"

    const-string v3, "canDecContrast,mCameraParamters is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const-string v2, "low"

    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canDecZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string v1, "VTSettings"

    const-string v2, "canDecZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canIncBrightness()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v3, "VTSettings"

    const-string v4, "getBrightnessMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v3, :cond_1

    .line 165
    const-string v3, "VTSettings"

    const-string v4, "getBrightnessMode,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 169
    .local v1, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 170
    .local v0, max:I
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canIncContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    const-string v2, "VTSettings"

    const-string v3, "canIncContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 301
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    const-string v2, "high"

    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    const-string v1, "VTSettings"

    const-string v2, "canIncZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMaxZoom()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decBrightness()Z
    .locals 5

    .prologue
    .line 174
    const-string v3, "VTSettings"

    const-string v4, "decBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v3, :cond_0

    .line 176
    const-string v3, "VTSettings"

    const-string v4, "decBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v3, 0x0

    .line 187
    :goto_0
    return v3

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 180
    .local v2, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 181
    .local v0, min:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 182
    .local v1, step:F
    int-to-float v3, v2

    sub-float/2addr v3, v1

    float-to-int v2, v3

    .line 183
    if-ge v2, v0, :cond_1

    .line 184
    move v2, v0

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/vt/CameraParamters;->setExposureCompensation(I)V

    .line 187
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public decContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 309
    const-string v2, "VTSettings"

    const-string v3, "decContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v2, :cond_1

    .line 311
    const-string v2, "VTSettings"

    const-string v3, "decContrast,mCameraParamters is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 316
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 325
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    const-string v2, "high"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_3
    const-string v2, "middle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public decZoom()Z
    .locals 3

    .prologue
    .line 253
    const-string v1, "VTSettings"

    const-string v2, "decZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_0

    .line 256
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    iget v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    sub-int v0, v1, v2

    .line 259
    .local v0, value:I
    if-gez v0, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1, v0}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    .line 263
    const/4 v1, 0x1

    goto :goto_0
.end method

.method deinit()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 100
    return-void
.end method

.method public getBrightnessMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getExposure()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getCameraSettings()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 105
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    .line 112
    :cond_0
    return-void
.end method

.method public getCameraSettingsForTest()Lcom/mediatek/vt/CameraParamters;
    .locals 2

    .prologue
    .line 511
    const-string v0, "VTSettings"

    const-string v1, "call function getCameraSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 513
    const-string v0, "VTSettings"

    const-string v1, "call function getCameraSettings() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    return-object v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContrastMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, value:Ljava/lang/String;
    const-string v1, "VTSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContrastMode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getDefaultSettings()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 121
    return-void
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSwitch()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    return v0
.end method

.method public getLocalSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mLocalSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getNightMode()Z
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPeerSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mPeerSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_0

    .line 448
    :goto_0
    return-object v0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 443
    const-string v1, "VTSettings"

    const-string v2, "mCameraParamters.getSceneMode() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_1
    const-string v0, "VTSettings"

    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedBrightnessMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedExposure()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedContrastMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    return v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 370
    const-string v0, "VTSettings"

    const-string v1, "getZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getZoom()I

    move-result v0

    goto :goto_0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    const-string v0, "VTSettings"

    const-string v1, "getZoomRatios"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public incBrightness()Z
    .locals 5

    .prologue
    .line 146
    const-string v3, "VTSettings"

    const-string v4, "incBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v3, :cond_0

    .line 148
    const-string v3, "VTSettings"

    const-string v4, "incBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    .line 159
    :goto_0
    return v3

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 152
    .local v2, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 153
    .local v0, max:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 154
    .local v1, step:F
    int-to-float v3, v2

    add-float/2addr v3, v1

    float-to-int v2, v3

    .line 155
    if-le v2, v0, :cond_1

    .line 156
    move v2, v0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/vt/CameraParamters;->setExposureCompensation(I)V

    .line 159
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public incContrast()Z
    .locals 3

    .prologue
    .line 279
    const-string v1, "VTSettings"

    const-string v2, "incContrast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 291
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 283
    :cond_0
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public incZoom()Z
    .locals 4

    .prologue
    .line 226
    const-string v2, "VTSettings"

    const-string v3, "incZoom"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 236
    :goto_0
    return v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v2

    iget v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    add-int v1, v2, v3

    .line 231
    .local v1, value:I
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMaxZoom()I

    move-result v0

    .line 232
    .local v0, maxZoom:I
    if-le v1, v0, :cond_1

    .line 233
    move v1, v0

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2, v1}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    .line 236
    const/4 v2, 0x1

    goto :goto_0
.end method

.method init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "VTSettings"

    const-string v1, "init error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mContext:Landroid/content/Context;

    .line 90
    iput v1, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    .line 91
    iput-object v2, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    .line 94
    iput v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    .line 95
    iput-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    goto :goto_0
.end method

.method public isSupportNightMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 379
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v3

    .line 382
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, str:Ljava/lang/String;
    const-string v4, "night"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setBrightnessMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setExposure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContrastMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 424
    const-string v0, "VTSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContrastMode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "imagePath"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setIsSwitch(Z)V
    .locals 0
    .parameter "isSwitch"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    .line 482
    return-void
.end method

.method public setLocalSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "localSurface"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mLocalSurface:Landroid/view/SurfaceHolder;

    .line 490
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    const-string v0, "night"

    .line 396
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/vt/VTSettings;->setNightModeFrameRate(Z)V

    .line 397
    invoke-virtual {p0, v0}, Lcom/mediatek/vt/VTSettings;->setSceneMode(Ljava/lang/String;)V

    .line 398
    return-void

    .line 395
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "auto"

    goto :goto_0
.end method

.method public setNightModeFrameRate(Z)V
    .locals 2
    .parameter "isNightMode"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/CameraParamters;->setPreviewFrameRate(I)V

    .line 392
    return-void

    .line 391
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public setPeerSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "peerSurface"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mPeerSurface:Landroid/view/SurfaceHolder;

    .line 498
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 452
    const-string v0, "VTSettings"

    const-string v1, "setSceneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "VTSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 0
    .parameter "videoQuality"

    .prologue
    .line 505
    iput p1, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    .line 506
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .parameter "videoType"

    .prologue
    .line 465
    iput p1, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    .line 466
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 344
    const-string v0, "VTSettings"

    const-string v1, "setZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    if-gez p1, :cond_1

    .line 349
    const/4 p1, 0x0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    goto :goto_0
.end method
