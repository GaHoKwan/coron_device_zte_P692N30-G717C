.class public Lcom/mediatek/mock/hardware/MockCamera;
.super Ljava/lang/Object;
.source "MockCamera.java"

# interfaces
.implements Lcom/mediatek/camera/ICamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mock/hardware/MockCamera$Area;,
        Lcom/mediatek/mock/hardware/MockCamera$Size;,
        Lcom/mediatek/mock/hardware/MockCamera$PictureCreator;,
        Lcom/mediatek/mock/hardware/MockCamera$EventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final ISO_SPEED_ENG:Ljava/lang/String; = "iso-speed-eng"

.field private static final KEY_AFLAMP_MODE:Ljava/lang/String; = "aflamp-mode"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final KEY_BRIGHTNESS_MODE:Ljava/lang/String; = "brightness"

.field private static final KEY_BURST_SHOT_NUM:Ljava/lang/String; = "burst-num"

.field private static final KEY_CAMERA_MODE:Ljava/lang/String; = "mtk-cam-mode"

.field private static final KEY_CAPTURE_MODE:Ljava/lang/String; = "cap-mode"

.field private static final KEY_CAPTURE_PATH:Ljava/lang/String; = "capfname"

.field private static final KEY_CONTINUOUS_SPEED_MODE:Ljava/lang/String; = "continuous-shot-speed"

.field private static final KEY_CONTRAST_MODE:Ljava/lang/String; = "contrast"

.field private static final KEY_DISP_H:Ljava/lang/String; = "disp-h"

.field private static final KEY_DISP_ROTATE:Ljava/lang/String; = "disp-rotate"

.field private static final KEY_DISP_W:Ljava/lang/String; = "disp-w"

.field private static final KEY_DISP_X:Ljava/lang/String; = "disp-x"

.field private static final KEY_DISP_Y:Ljava/lang/String; = "disp-y"

.field private static final KEY_EDGE_MODE:Ljava/lang/String; = "edge"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EIS_MODE:Ljava/lang/String; = "eis-mode"

.field private static final KEY_EXPOSURE:Ljava/lang/String; = "exposure"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_EXPOSURE_METER:Ljava/lang/String; = "exposure-meter"

.field private static final KEY_FD_MODE:Ljava/lang/String; = "fd-mode"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final KEY_FOCUS_DRAW:Ljava/lang/String; = "af-draw"

.field private static final KEY_FOCUS_ENG_MODE:Ljava/lang/String; = "afeng-mode"

.field private static final KEY_FOCUS_ENG_STEP:Ljava/lang/String; = "afeng-pos"

.field private static final KEY_FOCUS_METER:Ljava/lang/String; = "focus-meter"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_FPS_MODE:Ljava/lang/String; = "fps-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_HUE_MODE:Ljava/lang/String; = "hue"

.field private static final KEY_ISOSPEED_MODE:Ljava/lang/String; = "iso-speed"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_MATV_PREVIEW_DELAY:Ljava/lang/String; = "tv-delay"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_PANORAMA_DIR:Ljava/lang/String; = "pano-dir"

.field private static final KEY_PANORAMA_IDX:Ljava/lang/String; = "pano-idx"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_RAW_PATH:Ljava/lang/String; = "rawfname"

.field private static final KEY_RAW_SAVE_MODE:Ljava/lang/String; = "rawsave-mode"

.field private static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SATURATION_MODE:Ljava/lang/String; = "saturation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SENSOR_DEV:Ljava/lang/String; = "sensor-dev"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final KEY_ZSD_MODE:Ljava/lang/String; = "zsd-mode"

.field private static final KEY_ZSD_SUPPORTED:Ljava/lang/String; = "zsd-supported"

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_MAV:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_START_PREVIEW_DONE:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "MockCamera"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static sFrameReporter:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mASDCallback:Landroid/hardware/Camera$ASDCallback;

.field private mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

.field private mCaptureMode:Ljava/lang/String;

.field private mCapturePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMAVCallback:Landroid/hardware/Camera$MAVCallback;

.field private mMav:Lcom/mediatek/mock/hardware/Mav;

.field private mNativeContext:I

.field private mNativeParamters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOneShot:Z

.field private mPictureCreator:Lcom/mediatek/mock/hardware/MockCamera$PictureCreator;

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mSceneDetector:Lcom/mediatek/mock/hardware/AutoSceneDetectThread;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    .line 257
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 168
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    .line 237
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 238
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 239
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 240
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 241
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 242
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 246
    new-instance v1, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;-><init>(Lcom/mediatek/mock/hardware/MockCamera;Lcom/mediatek/mock/hardware/MockCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    .line 253
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_setup(Ljava/lang/Object;I)V

    .line 254
    return-void

    .line 247
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    new-instance v1, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;-><init>(Lcom/mediatek/mock/hardware/MockCamera;Lcom/mediatek/mock/hardware/MockCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    goto :goto_0

    .line 250
    :cond_1
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    goto :goto_0
.end method

.method private final _addCallbackBuffer([BI)V
    .locals 0
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 469
    return-void
.end method

.method private final _startFaceDetection(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 825
    return-void
.end method

.method private final _stopFaceDetection()V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method private final _stopPreview()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ASDCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$MAVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ContinuousShotDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000()Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/mock/hardware/MockCamera;->sFrameReporter:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mock/hardware/MockCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCaptureMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/mock/hardware/MockCamera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/mock/hardware/MockCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/mock/hardware/MockCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/mock/hardware/MockCamera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mock/hardware/MockCamera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/mock/hardware/MockCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 457
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mock/hardware/MockCamera;->_addCallbackBuffer([BI)V

    .line 464
    return-void
.end method

.method private enableFocusMoveCallback(I)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 721
    return-void
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/mediatek/mock/hardware/MockCameraSensor;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 218
    return-void
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x2

    return v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    const-string v0, "persist.sys.screen.size"

    const-string v1, "800x480"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRestricted(I)Z
    .locals 10
    .parameter "pid"

    .prologue
    .line 1037
    const/4 v7, 0x0

    .line 1038
    .local v7, ret:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, f:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1042
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 1047
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1048
    .local v6, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    new-array v0, v8, [C

    .line 1051
    .local v0, buf:[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/Reader;->read([C)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 1052
    const/4 v8, 0x0

    aget-char v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1055
    :catch_0
    move-exception v2

    .line 1056
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1059
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.unveil"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1060
    const/4 v7, 0x1

    .line 1062
    :cond_0
    return v7

    .line 1043
    .end local v0           #buf:[C
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v6           #inReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 1044
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1054
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:[C
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v6       #inReader:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native_mock_autoFocus()V
    .locals 5

    .prologue
    .line 701
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    return-void
.end method

.method private final native_mock_cancelAutoFocus()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method private final native_mock_getParameters()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1014
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    iget-object v3, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1020
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private final native_mock_release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/MockCameraSensor;->close()V

    .line 300
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/CaptureThread;->quit()V

    .line 302
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/AutoRama;->quit()V

    .line 306
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/mock/hardware/Mav;->stopMAV(I)V

    .line 310
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSceneDetector:Lcom/mediatek/mock/hardware/AutoSceneDetectThread;

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSceneDetector:Lcom/mediatek/mock/hardware/AutoSceneDetectThread;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->quit()V

    .line 314
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSceneDetector:Lcom/mediatek/mock/hardware/AutoSceneDetectThread;

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 318
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 320
    :cond_4
    return-void
.end method

.method private final native_mock_setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter "params"

    .prologue
    .line 973
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "scene-mode"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 974
    .local v6, scene:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, newScene:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 977
    .local v0, clz:Ljava/lang/Class;
    const-string v7, "mMap"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 978
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 979
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 980
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 981
    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 987
    .end local v0           #clz:Ljava/lang/Class;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 988
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "exposure-compensation"

    const-string v9, "exposure-compensation"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "whitebalance"

    const-string v9, "whitebalance"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "iso-speed"

    const-string v9, "iso-speed"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "exposure-meter"

    const-string v9, "exposure-meter"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "edge"

    const-string v9, "edge"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "hue"

    const-string v9, "hue"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "saturation"

    const-string v9, "saturation"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "brightness"

    const-string v9, "brightness"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "contrast"

    const-string v9, "contrast"

    invoke-static {v9, v5}, Lcom/mediatek/mock/hardware/MiniFeatureTable;->pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    :cond_0
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "capfname"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapturePath:Ljava/lang/String;

    .line 1008
    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v8, "cap-mode"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCaptureMode:Ljava/lang/String;

    .line 1009
    const-string v7, "MockCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setParameters:mCaptureMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCaptureMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .local v1, e1:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 984
    .end local v1           #e1:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 985
    .local v2, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private final native_mock_setup(Ljava/lang/Object;I)V
    .locals 9
    .parameter "camera_this"
    .parameter "cameraId"

    .prologue
    const/4 v8, 0x0

    .line 272
    new-instance v6, Lcom/mediatek/mock/hardware/MockCameraSensor;

    invoke-direct {v6, p2}, Lcom/mediatek/mock/hardware/MockCameraSensor;-><init>(I)V

    iput-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

    .line 273
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

    invoke-virtual {v6}, Lcom/mediatek/mock/hardware/MockCameraSensor;->open()V

    .line 274
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 275
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

    invoke-virtual {v6}, Lcom/mediatek/mock/hardware/MockCameraSensor;->defaultParameters()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, kv:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 279
    .local v3, pos:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 282
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, k:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, v:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #kv:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v5           #v:Ljava/lang/String;
    :cond_1
    new-instance v6, Landroid/media/MediaActionSound;

    invoke-direct {v6}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 287
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v6, v8}, Landroid/media/MediaActionSound;->load(I)V

    .line 288
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 289
    iget-object v6, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 291
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    const-string v6, "MockCamera"

    iget-object v7, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCurrentSensor:Lcom/mediatek/mock/hardware/MockCameraSensor;

    invoke-virtual {v7}, Lcom/mediatek/mock/hardware/MockCameraSensor;->defaultParameters()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v6, "MockCamera"

    const-string v7, "loading camera sound"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final native_mock_takePicture(I)V
    .locals 5
    .parameter "msgType"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Lcom/mediatek/mock/hardware/CaptureThread;

    iget-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    iget-object v3, p0, Lcom/mediatek/mock/hardware/MockCamera;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/mock/hardware/CaptureThread;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/media/MediaActionSound;)V

    iput-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    .line 732
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mNativeParamters:Ljava/util/HashMap;

    const-string v2, "burst-num"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 736
    .local v0, num:I
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    invoke-virtual {v1, v0}, Lcom/mediatek/mock/hardware/CaptureThread;->setCaptureNum(I)V

    .line 737
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    invoke-virtual {v1}, Lcom/mediatek/mock/hardware/CaptureThread;->capture()V

    .line 752
    return-void
.end method

.method public static open()Lcom/mediatek/mock/hardware/MockCamera;
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/mediatek/mock/hardware/MockCamera;->getNumberOfCameras()I

    move-result v2

    .line 226
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 227
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 228
    invoke-static {v1, v0}, Lcom/mediatek/mock/hardware/MockCamera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 229
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 230
    new-instance v3, Lcom/mediatek/mock/hardware/MockCamera;

    invoke-direct {v3, v1}, Lcom/mediatek/mock/hardware/MockCamera;-><init>(I)V

    .line 233
    :goto_1
    return-object v3

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Lcom/mediatek/mock/hardware/MockCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 221
    new-instance v0, Lcom/mediatek/mock/hardware/MockCamera;

    invoke-direct {v0, p0}, Lcom/mediatek/mock/hardware/MockCamera;-><init>(I)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 682
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mock/hardware/MockCamera;

    .line 683
    .local v0, c:Lcom/mediatek/mock/hardware/MockCamera;
    if-nez v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v2, v0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, v0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 689
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final setHasPreviewCallback(ZZ)V
    .locals 0
    .parameter "installed"
    .parameter "manualBuffer"

    .prologue
    .line 438
    return-void
.end method

.method public static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1334
    sput-object p0, Lcom/mediatek/mock/hardware/MockCamera;->sFrameReporter:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 1335
    return-void
.end method

.method private final setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    return-void
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 448
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mock/hardware/MockCamera;->_addCallbackBuffer([BI)V

    .line 449
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 452
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mock/hardware/MockCamera;->addCallbackBuffer([BI)V

    .line 453
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 696
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_autoFocus()V

    .line 698
    return-void

    .line 696
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 708
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_cancelAutoFocus()V

    .line 710
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    return-void

    .line 708
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelContinuousShot()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapture:Lcom/mediatek/mock/hardware/CaptureThread;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/CaptureThread;->cancelCapture()V

    .line 946
    return-void
.end method

.method public cancelSDPreview()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mediatek/mock/hardware/MockCamera;->release()V

    .line 269
    return-void
.end method

.method public getCameraSound()Landroid/media/MediaActionSound;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method public getInstance()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 5

    .prologue
    .line 1077
    invoke-static {}, Lcom/mediatek/mock/hardware/MockCamera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1078
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 1081
    const-string v2, "MockCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MockCamera getParameters ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-object v0
.end method

.method public final lock()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public final previewEnabled()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public final reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_release()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 325
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 868
    return-void
.end method

.method public final setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    .line 864
    return-void
.end method

.method public final setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 872
    return-void
.end method

.method public final setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 879
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 717
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/mock/hardware/MockCamera;->enableFocusMoveCallback(I)V

    .line 718
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 959
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    .line 960
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mContext:Landroid/content/Context;

    .line 261
    return-void
.end method

.method public setContinuousShotState(II)V
    .locals 0
    .parameter "sotredSize"
    .parameter "leftMemory"

    .prologue
    .line 949
    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 787
    return-void
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 839
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 795
    return-void
.end method

.method public final setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    .line 860
    return-void
.end method

.method public setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 823
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 431
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mOneShot:Z

    .line 432
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mWithBuffer:Z

    .line 433
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mock/hardware/MockCamera;->setHasPreviewCallback(ZZ)V

    .line 434
    return-void

    :cond_0
    move v0, v1

    .line 433
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1026
    return-void
.end method

.method public setPictureCreator(Lcom/mediatek/mock/hardware/MockCamera$PictureCreator;)V
    .locals 0
    .parameter "creator"

    .prologue
    .line 968
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPictureCreator:Lcom/mediatek/mock/hardware/MockCamera$PictureCreator;

    .line 969
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 407
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 408
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mOneShot:Z

    .line 409
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mWithBuffer:Z

    .line 412
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mock/hardware/MockCamera;->setHasPreviewCallback(ZZ)V

    .line 413
    return-void

    :cond_0
    move v0, v1

    .line 412
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 441
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 442
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mOneShot:Z

    .line 443
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mWithBuffer:Z

    .line 444
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mock/hardware/MockCamera;->setHasPreviewCallback(ZZ)V

    .line 445
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/hardware/MockCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/mediatek/mock/hardware/MockCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 955
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 956
    return-void
.end method

.method public final setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 349
    return-void
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 843
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 791
    return-void
.end method

.method public final startAUTORAMA(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Lcom/mediatek/mock/hardware/AutoRama;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    iget-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/mock/hardware/AutoRama;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/media/MediaActionSound;)V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    .line 890
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapturePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/mock/hardware/AutoRama;->setCapturePath(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    invoke-virtual {v0}, Lcom/mediatek/mock/hardware/AutoRama;->startAutoRama()V

    .line 894
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 799
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/mock/hardware/MockCamera;->_startFaceDetection(I)V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 803
    return-void
.end method

.method public final startMAV(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/mock/hardware/Mav;->stopMAV(I)V

    .line 914
    :cond_0
    new-instance v0, Lcom/mediatek/mock/hardware/Mav;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/mock/hardware/Mav;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    .line 915
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/mock/hardware/Mav;->setContext(Landroid/content/Context;)V

    .line 916
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mCapturePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/mock/hardware/Mav;->setCapturePath(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    invoke-virtual {v0, p1}, Lcom/mediatek/mock/hardware/Mav;->startMAV(I)V

    .line 918
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 919
    return-void
.end method

.method public startMotionTrack(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 934
    return-void
.end method

.method public startOT(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 817
    return-void
.end method

.method public final startPreview()V
    .locals 5

    .prologue
    .line 352
    const-string v1, "MockCamera"

    const-string v2, "startPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/high16 v2, 0x4000

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    return-void
.end method

.method public startSDPreview()V
    .locals 6

    .prologue
    .line 846
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40b7700000000000L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 847
    .local v0, delay:I
    const-string v1, "MockCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSDPreview, smile delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    iget-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mEventHandler:Lcom/mediatek/mock/hardware/MockCamera$EventHandler;

    const/high16 v3, 0x4000

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 852
    return-void
.end method

.method public final startSmoothZoom(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 781
    return-void
.end method

.method public stopAUTORAMA(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoRama:Lcom/mediatek/mock/hardware/AutoRama;

    invoke-virtual {v0, p1}, Lcom/mediatek/mock/hardware/AutoRama;->stopAutoRama(I)V

    .line 903
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->_stopFaceDetection()V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 813
    return-void
.end method

.method public stopMAV(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    invoke-virtual {v0, p1}, Lcom/mediatek/mock/hardware/Mav;->stopMAV(I)V

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mMav:Lcom/mediatek/mock/hardware/Mav;

    .line 929
    return-void
.end method

.method public stopMotionTrack()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public stopOT()V
    .locals 0

    .prologue
    .line 820
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCamera;->_stopPreview()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 367
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 368
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 369
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 370
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 371
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iput-object v2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 375
    return-void

    .line 373
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final stopSmoothZoom()V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/mock/hardware/MockCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 726
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 757
    iput-object p2, p0, Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 758
    iput-object p3, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 759
    iput-object p4, p0, Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, msgType:I
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 764
    or-int/lit8 v0, v0, 0x2

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 767
    or-int/lit16 v0, v0, 0x80

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 770
    or-int/lit8 v0, v0, 0x40

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 773
    or-int/lit16 v0, v0, 0x100

    .line 776
    :cond_3
    invoke-direct {p0, v0}, Lcom/mediatek/mock/hardware/MockCamera;->native_mock_takePicture(I)V

    .line 777
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/MockCamera;->mFaceDetectionRunning:Z

    .line 778
    return-void
.end method

.method public final unlock()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method
