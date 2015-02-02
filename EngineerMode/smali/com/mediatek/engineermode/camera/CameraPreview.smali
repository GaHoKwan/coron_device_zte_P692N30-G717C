.class public Lcom/mediatek/engineermode/camera/CameraPreview;
.super Landroid/app/Activity;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;,
        Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;,
        Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1FirstThread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$WaitFocusThread;,
        Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    }
.end annotation


# static fields
.field private static final AF_AUTO:Ljava/lang/String; = "auto"

.field private static final AF_FULLSCAN:Ljava/lang/String; = "fullscan"

.field private static final AF_MANUAL:Ljava/lang/String; = "manual"

.field private static final AUTO_STR:Ljava/lang/String; = "0"

.field public static final CAPTURE_ID:I = 0x1

.field private static final COMPLETE_CAPTURE:I = 0x66

.field private static final DIALOG_PROGRESS:I = 0x3e8

.field private static final FINAL_ROTATION_0:I = 0x0

.field private static final FINAL_ROTATION_180:I = 0xb4

.field private static final FINAL_ROTATION_270:I = 0x10e

.field private static final FINAL_ROTATION_90:I = 0x5a

.field private static final FOCUES_COMPLETE:I = 0x69

.field private static final FULL_SCAN_COMPLET:I = 0x65

.field private static final FULL_SCAN_START:I = 0x64

.field private static final ITEM_MODE_3:I = 0x3

.field private static final ITEM_MODE_4:I = 0x4

.field private static final ITEM_MODE_5:I = 0x5

.field private static final JPEG_CAPTURE_MODE:I = 0x3

.field private static final MGIC_NUM_24:I = 0x18

.field private static final MSG_AF_MODE1:I = 0x3e9

.field private static final MSG_AF_MODE3:I = 0x3eb

.field private static final MSG_AF_MODE4:I = 0x3ec

.field private static final MSG_AF_MODE5:I = 0x3ed

.field private static final MSG_RENEW_SHOTNUM:I = 0x3ee

.field private static final MSG_REPEAT_COMPLET:I = 0x3ef

.field private static final PICTURE_8M_HIG:I = 0x990

.field private static final PICTURE_8M_WID:I = 0xcc0

.field private static final POSITION_VALUE:I = 0x32

.field private static final PREVIEW_HIGTH:I = 0x1e0

.field private static final PREVIEW_WIDTH:I = 0x280

.field private static final ROTATION_360:I = 0x168

.field private static final SLEEP_TIME:I = 0xc8

.field private static final SLEEP_TIME1:I = 0x7d0

.field private static final SLEEP_TIMES:I = 0x14

.field private static final SLEEP_TIME_100:I = 0x64

.field private static final START_CAPTURE:I = 0x67

.field private static final TAG:Ljava/lang/String; = "EM/Camera"

.field private static final WAIT_FOCUES:I = 0x68

.field public static sCanBack:Z


# instance fields
.field private mAFEngMode:I

.field private mAeLockSupported:Z

.field private final mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

.field private mAwbLockSupported:Z

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private mCameraParam:Landroid/hardware/Camera$Parameters;

.field private mCaptureBtn:Landroid/widget/Button;

.field private mFocusFlag:Z

.field private mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

.field private final mHandler:Landroid/os/Handler;

.field private mISO:Ljava/lang/String;

.field private mImgBucketName:Ljava/lang/String;

.field private mIsCapture:I

.field private mIsFocused:I

.field private mIsOnPause:Z

.field private mIsPreviewing:I

.field private mIsRawCapture:Z

.field private mIsTest:Z

.field private mIsoName:Ljava/lang/String;

.field private mIssdcardExist:Z

.field private mMode:I

.field private mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

.field private mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

.field private mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

.field private mModeName:Ljava/lang/String;

.field private mPos:I

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mProgresDlgExist:Z

.field private final mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

.field private mRawCptFileName:Ljava/lang/String;

.field private final mRawPicCalback:Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;

.field private mShotNum:Landroid/widget/TextView;

.field private final mShutterCalback:Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;

.field private mStage:I

.field private mStep:I

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    .line 95
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    .line 96
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    .line 97
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I

    .line 99
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    .line 100
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShutterCalback:Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;

    .line 101
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawPicCalback:Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;

    .line 103
    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    .line 106
    const-string v0, "ISO"

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    .line 108
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    .line 142
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraId:I

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    .line 144
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    .line 146
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsRawCapture:Z

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    .line 150
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 152
    iput v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    .line 154
    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPreviewRect:Landroid/graphics/Rect;

    .line 165
    iput-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z

    .line 171
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$1;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    .line 1504
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/camera/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCaptureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->capturePicture()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/camera/CameraPreview;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/engineermode/camera/CameraPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/engineermode/camera/CameraPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    return p1
.end method

.method static synthetic access$2808(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mediatek/engineermode/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/engineermode/camera/CameraPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->handleMode5Stage1()V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->handleMode5Stage2()V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/engineermode/camera/CameraPreview;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview;->storeImage([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4002(Lcom/mediatek/engineermode/camera/CameraPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;)Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->onHandleShotNum()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    return-object v0
.end method

.method private captureMode0()V
    .locals 3

    .prologue
    .line 936
    const-string v1, "EM/Camera"

    const-string v2, "Enter captureMode0 function."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v1, "EM/Camera"

    const-string v2, "captureMode0()->judgeSdcard()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 942
    .local v0, mode0Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private captureMode1()V
    .locals 3

    .prologue
    .line 984
    const-string v1, "EM/Camera"

    const-string v2, "Enter captureMode1 function."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v1, "EM/Camera"

    const-string v2, "captureMode1()->judgeSdcard()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v2, "manual"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const-string v2, "One AF"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    :cond_1
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1FirstThread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1FirstThread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 993
    .local v0, threadFirst:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1FirstThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private captureMode2()V
    .locals 3

    .prologue
    .line 1119
    const-string v1, "EM/Camera"

    const-string v2, "Enter captureMode2 function."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v1, "EM/Camera"

    const-string v2, "captureMode2()->judgeSdcard()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1125
    .local v0, mode2Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private captureMode3()V
    .locals 3

    .prologue
    .line 1169
    const-string v0, "EM/Camera"

    const-string v1, "Enter captureMode3 function."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v0, "EM/Camera"

    const-string v1, "captureMode3()->judgeSdcard()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1175
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    .line 1176
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "fullscan"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1179
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 1180
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "focus-mode"

    const-string v2, "fullscan"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1186
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    .line 1187
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode3Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode3Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private captureMode4()V
    .locals 3

    .prologue
    .line 1246
    const-string v0, "EM/Camera"

    const-string v1, "Enter captureMode4 function."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, "EM/Camera"

    const-string v1, "captureMode4()->judgeSdcard()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1253
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    .line 1256
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1257
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "focus-meter"

    const-string v2, "spot"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1265
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    .line 1266
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode4Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private captureMode5()V
    .locals 3

    .prologue
    .line 1331
    const-string v0, "EM/Camera"

    const-string v1, "Enter captureMode5 function."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v0, "EM/Camera"

    const-string v1, "captureMode5()->judgeSdcard()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1337
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    .line 1338
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    .line 1339
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1343
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "focus-meter"

    const-string v2, "spot"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1351
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    .line 1352
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode5Thread:Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private capturePicture()V
    .locals 3

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 872
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "sdcard is busy"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 873
    const-string v1, "Sorry, your SD card is busy."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 874
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 891
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    const-string v1, "EM/Camera"

    const-string v2, "CapturePicture()->judgeSdcard()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    if-eqz v1, :cond_2

    .line 883
    const-string v1, "It is in capturing, can not repeat capture."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 885
    iget-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v1, :cond_0

    .line 886
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 890
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->handleCaptureMode()V

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    const-string v0, "EM/Camera"

    const-string v1, "closeCamera() start!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 581
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 582
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 583
    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 585
    :cond_0
    const-string v0, "EM/Camera"

    const-string v1, "closeCamera() end!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private static createName(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 1595
    const-string v0, "ddkkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createNameJpeg(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 1599
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL

    .line 779
    .local v1, aspectTolerance:D
    if-nez p1, :cond_1

    .line 780
    const/4 v7, 0x0

    .line 836
    :cond_0
    return-object v7

    .line 782
    :cond_1
    const/4 v7, 0x0

    .line 783
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 790
    .local v5, minDiff:D
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 791
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 792
    .local v11, targetHeight:I
    if-gtz v11, :cond_2

    .line 794
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 795
    .local v12, windowManager:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 798
    .end local v12           #windowManager:Landroid/view/WindowManager;
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 799
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    if-gt v11, v13, :cond_3

    .line 802
    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 803
    .local v8, ratio:D
    sub-double v13, v8, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_3

    .line 806
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_3

    .line 807
    move-object v7, v10

    .line 808
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_0

    .line 812
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v7, :cond_6

    .line 814
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 815
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 816
    .restart local v8       #ratio:D
    sub-double v13, v8, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_5

    .line 819
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_5

    .line 820
    move-object v7, v10

    .line 821
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_1

    .line 826
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_6
    if-nez v7, :cond_0

    .line 827
    const-string v13, "EM/Camera"

    const-string v14, "No preview size match the aspect ratio"

    invoke-static {v13, v14}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-wide v5, 0x7fefffffffffffffL

    .line 829
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 830
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_7

    .line 831
    move-object v7, v10

    .line 832
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_2
.end method

.method private handleCaptureMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 894
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 933
    :goto_0
    return-void

    .line 897
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode0()V

    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "manual"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode1()V

    goto :goto_0

    .line 907
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode2()V

    goto :goto_0

    .line 910
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "fullscan"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode3()V

    goto :goto_0

    .line 917
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 921
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode4()V

    goto :goto_0

    .line 924
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "fullscan"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 928
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->captureMode5()V

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleMode5Stage1()V
    .locals 10

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1378
    iput v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    .line 1379
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1380
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-eqz v2, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1388
    :goto_1
    sput-boolean v6, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1389
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "fullscan"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1390
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1392
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V

    .line 1393
    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1394
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V

    .line 1395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1396
    .local v0, dateTaken:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->createName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    .line 1397
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "rawfname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_0

    .line 1401
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1402
    sput-boolean v7, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1403
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V

    .line 1404
    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    if-ge v2, v8, :cond_3

    .line 1405
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1407
    :cond_3
    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    if-lt v2, v8, :cond_0

    .line 1408
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    .line 1409
    iput v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1410
    const/4 v2, 0x3

    iput v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    .line 1411
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "fullscan"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1412
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1413
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 1414
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "focus-mode"

    const-string v4, "fullscan"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1420
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1385
    .end local v0           #dateTaken:J
    :cond_5
    const-string v2, "EM/Camera"

    const-string v3, "AFMode5Thread does not support auto mode."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iput v7, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    goto/16 :goto_1
.end method

.method private handleMode5Stage2()V
    .locals 9

    .prologue
    const/16 v4, 0x64

    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1425
    iput v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    .line 1426
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "fullscan"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1427
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-eqz v2, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1431
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1438
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "fullscan"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1441
    :cond_2
    sput-boolean v6, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1442
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V

    .line 1443
    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    .line 1444
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1446
    .local v0, dateTaken:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->createName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    .line 1447
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "rawfname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1452
    sput-boolean v7, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1453
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V

    .line 1454
    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    if-ge v2, v8, :cond_3

    .line 1455
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1457
    :cond_3
    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    if-lt v2, v8, :cond_0

    .line 1458
    iput-boolean v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    .line 1459
    iput v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    .line 1460
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "fullscan"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1461
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1463
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1433
    .end local v0           #dateTaken:J
    :cond_5
    const-string v2, "EM/Camera"

    const-string v3, "AFMode5Thread does not support fullscan mode."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1435
    iput v7, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    .line 1436
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private handleRawType(II)V
    .locals 6
    .parameter "rawCaptureMode"
    .parameter "rawCaptureType"

    .prologue
    const/4 v3, 0x1

    .line 675
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 676
    iput-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsRawCapture:Z

    .line 677
    if-ne p1, v3, :cond_2

    .line 678
    const-string v2, "Preview"

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    .line 682
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "rawsave-mode"

    invoke-virtual {v2, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 683
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "isp-mode"

    invoke-virtual {v2, v3, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 684
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    .line 685
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set iso speed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 687
    .local v0, dateTaken:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->createName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    .line 688
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v3, "rawfname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v2, "EM/Camera"

    const-string v3, "Set raw name success!"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v0           #dateTaken:J
    :cond_1
    return-void

    .line 679
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 680
    const-string v2, "Image"

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 694
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 695
    .local v0, mInitialParams:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/engineermode/camera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 696
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAeLockSupported:Z

    .line 697
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAwbLockSupported:Z

    .line 698
    return-void
.end method

.method private isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 5
    .parameter "mParam"
    .parameter "afMode"

    .prologue
    const/4 v3, 0x0

    .line 1632
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1633
    .local v2, supportFocusMode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return v3

    .line 1635
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1638
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1639
    .local v0, fm:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1640
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private judgeSdcard()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 840
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    iput-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    .line 846
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    if-eqz v3, :cond_1

    .line 865
    :goto_1
    return v1

    .line 843
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    goto :goto_0

    .line 849
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    if-eqz v1, :cond_2

    .line 850
    iput-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    .line 851
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 853
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 857
    const-string v1, "EM/Camera"

    const-string v3, "judgeSdcard()  mCameraParam.setFocusDrawMode(0)"

    invoke-static {v1, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 861
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "SD Card not available"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 862
    const-string v1, "Please insert an SD Card."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 863
    const-string v1, "OK"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    move v1, v2

    .line 865
    goto :goto_1
.end method

.method private judgedSupportedSize(II)Z
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 566
    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 567
    .local v2, supprortSizeList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 568
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 569
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v3, p2, :cond_0

    .line 570
    const/4 v3, 0x1

    .line 574
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private mySleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1545
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onHandleShotNum()V
    .locals 3

    .prologue
    .line 327
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :pswitch_4
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 5_Full:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 342
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode 5_Auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private openCamera()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/engineermode/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v1, :cond_3

    .line 537
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 542
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 546
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    const-string v1, "0"

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    .line 550
    :cond_1
    const-string v1, "EM/Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent mISO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "0"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1600"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    .line 557
    :goto_0
    const-string v1, "EM/Camera"

    const-string v2, "Enter openCamera to init the mCamera."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_3

    .line 559
    const-string v1, "EM/Camera"

    const-string v2, "init the mCamera is null."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const v1, 0x7f08051b

    invoke-static {p0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 563
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 555
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;

    goto :goto_0
.end method

.method private rectToCameraString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .parameter "rect"

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setAeAwlock(Z)V
    .locals 3
    .parameter "locked"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/engineermode/camera/FocusManager;->setAeAwbLock(Z)V

    .line 664
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 666
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusManager.getAeAwbLock() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 670
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusManager.getAeAwbLock() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/camera/FocusManager;->getAeAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 5

    .prologue
    .line 701
    invoke-virtual {p0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 702
    .local v1, mDisplayRotation:I
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayOrientation() mDisplayRotation is !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->getDisplayOrientation(II)I

    move-result v0

    .line 704
    .local v0, mDisplayOrientation:I
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayOrientation() mDisplayOrientation is !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 707
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 1611
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$3;-><init>(Landroid/app/Activity;)V

    .line 1616
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08051c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1619
    return-void
.end method

.method private startPreview()V
    .locals 15

    .prologue
    const/16 v14, 0xcc0

    const/16 v13, 0x990

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 589
    const-string v8, "EM/Camera"

    const-string v9, "startPreview() start!"

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-eqz v8, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    .line 594
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    if-eqz v8, :cond_0

    .line 598
    invoke-direct {p0, v11}, Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V

    .line 599
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->setDisplayOrientation()V

    .line 600
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v9, "fps-mode"

    invoke-virtual {v8, v9, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 601
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    const-string v9, "mtk-cam-mode"

    invoke-virtual {v8, v9, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 603
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "RawCaptureMode"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 604
    .local v4, rawCaptureMode:I
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent get Raw capture mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v8, "RawType"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 606
    .local v5, rawCaptureType:I
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent get Raw Type  is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v8, "AntiFlicker"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, antiFlicker:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 609
    const-string v0, "50"

    .line 611
    :cond_2
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent get antiFlicker = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 613
    const-string v8, "AFMode"

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    .line 614
    const-string v8, "AFStep"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    .line 615
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The value of AFMode is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The value of AFStep is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v4, v5}, Lcom/mediatek/engineermode/camera/CameraPreview;->handleRawType(II)V

    .line 619
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 620
    .local v6, size:Landroid/hardware/Camera$Size;
    if-eqz v6, :cond_0

    .line 623
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Picturesize.width is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Picturesize.height is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const v8, 0x7f0b00c7

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;

    .line 626
    .local v1, frameLayout:Lcom/mediatek/engineermode/camera/PreviewFrameLayout;
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/engineermode/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 627
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 628
    .local v7, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v3, 0x0

    .line 629
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    if-eqz v8, :cond_3

    .line 630
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-direct {p0, v7, v8, v9}, Lcom/mediatek/engineermode/camera/CameraPreview;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 632
    :cond_3
    if-eqz v3, :cond_4

    .line 633
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "optimalSize.width is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "optimalSize.height is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    iget v10, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 637
    :cond_4
    invoke-direct {p0, v14, v13}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgedSupportedSize(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 638
    const-string v8, "EM/Camera"

    const-string v9, "Support 8M picture size!"

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v14, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 641
    :cond_5
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v8, :cond_0

    .line 644
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v9, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 648
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v8, :cond_0

    .line 652
    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->startPreview()V

    .line 658
    iput v12, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    .line 659
    const-string v8, "EM/Camera"

    const-string v9, "startPreview() end!"

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 766
    const-string v0, "EM/Camera"

    const-string v1, "stopPreview() start!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 770
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    .line 771
    const-string v0, "EM/Camera"

    const-string v1, "stopPreview() end!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private storeImage([B)V
    .locals 13
    .parameter "jpegData"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1552
    const-string v8, "EM/Camera"

    const-string v9, "storeImage()"

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1556
    .local v2, dateTaken:J
    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1559
    .local v7, name:Ljava/lang/StringBuffer;
    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-ne v8, v12, :cond_0

    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    if-eq v8, v10, :cond_1

    :cond_0
    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-nez v8, :cond_5

    .line 1560
    :cond_1
    const-string v8, "AF_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1566
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->createNameJpeg(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    iget-boolean v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsRawCapture:Z

    if-eqz v8, :cond_3

    .line 1569
    new-instance v8, Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1571
    :cond_3
    const-string v8, "EM/Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Jpeg name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v6, fHandle:Ljava/io/File;
    const/4 v0, 0x0

    .line 1575
    .local v0, bos:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1576
    .end local v0           #bos:Ljava/io/OutputStream;
    .local v1, bos:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1583
    if-eqz v1, :cond_a

    .line 1585
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1592
    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    :cond_4
    :goto_1
    return-void

    .line 1561
    .end local v0           #bos:Ljava/io/OutputStream;
    .end local v6           #fHandle:Ljava/io/File;
    :cond_5
    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-ne v8, v12, :cond_6

    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I

    if-eq v8, v11, :cond_7

    :cond_6
    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-eq v8, v11, :cond_7

    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1562
    :cond_7
    const-string v8, "Fullscan_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1563
    :cond_8
    iget v8, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I

    if-ne v8, v10, :cond_2

    .line 1564
    const-string v8, "Bracket_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1586
    .restart local v1       #bos:Ljava/io/OutputStream;
    .restart local v6       #fHandle:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1587
    .local v4, e:Ljava/io/IOException;
    const-string v8, "EM/Camera"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1588
    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    goto :goto_1

    .line 1578
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1579
    .local v5, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1583
    if-eqz v0, :cond_4

    .line 1585
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1586
    :catch_2
    move-exception v4

    .line 1587
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "EM/Camera"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1580
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 1581
    .local v5, ex:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1583
    if-eqz v0, :cond_4

    .line 1585
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1586
    :catch_4
    move-exception v4

    .line 1587
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "EM/Camera"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1583
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_9

    .line 1585
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1588
    :cond_9
    :goto_5
    throw v8

    .line 1586
    :catch_5
    move-exception v4

    .line 1587
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "EM/Camera"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1583
    .end local v0           #bos:Ljava/io/OutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #bos:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    goto :goto_4

    .line 1580
    .end local v0           #bos:Ljava/io/OutputStream;
    .restart local v1       #bos:Ljava/io/OutputStream;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    goto :goto_3

    .line 1578
    .end local v0           #bos:Ljava/io/OutputStream;
    .restart local v1       #bos:Ljava/io/OutputStream;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/OutputStream;
    .restart local v1       #bos:Ljava/io/OutputStream;
    :cond_a
    move-object v0, v1

    .end local v1           #bos:Ljava/io/OutputStream;
    .restart local v0       #bos:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private takePicture()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x1

    .line 1517
    const-string v1, "EM/Camera"

    const-string v2, "takePicture() start"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v1, "EM/Camera"

    const-string v2, "takePicture()-> judgeSdcard()"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z

    move-result v0

    .line 1520
    .local v0, isSDCard:Z
    if-nez v0, :cond_1

    .line 1521
    const-string v1, "EM/Camera"

    const-string v2, "No SdCard!"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    :goto_1
    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    if-nez v1, :cond_2

    .line 1526
    const-string v1, "EM/Camera"

    const-string v2, "takePicture()->sleep 1"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-direct {p0, v7, v8}, Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V

    goto :goto_1

    .line 1529
    :cond_2
    iput v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I

    .line 1531
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShutterCalback:Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mRawPicCalback:Lcom/mediatek/engineermode/camera/CameraPreview$RawPictureCallback;

    new-instance v4, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/engineermode/camera/CameraPreview$JpegPictureCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1536
    :goto_2
    iget v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I

    if-ne v1, v6, :cond_3

    .line 1538
    invoke-direct {p0, v7, v8}, Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V

    goto :goto_2

    .line 1540
    :cond_3
    const-string v1, "EM/Camera"

    const-string v2, "takePicture() end"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayOrientation(II)I
    .locals 5
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 751
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 752
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 754
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 755
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    .line 756
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 761
    :goto_0
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayOrientation() result is !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return v1

    .line 759
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public getDisplayRotation(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 716
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 717
    .local v1, rotation:I
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRotation() rotation is !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, finalRotation:I
    packed-switch v1, :pswitch_data_0

    .line 733
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    .line 721
    :pswitch_0
    const/4 v0, 0x0

    .line 722
    goto :goto_0

    .line 724
    :pswitch_1
    const/16 v0, 0x5a

    .line 725
    goto :goto_0

    .line 727
    :pswitch_2
    const/16 v0, 0xb4

    .line 728
    goto :goto_0

    .line 730
    :pswitch_3
    const/16 v0, 0x10e

    .line 731
    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1054
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() mCanBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-boolean v0, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    if-nez v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1058
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 211
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 213
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM/CameraEM/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    .line 214
    const-string v3, "EM/Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate start...path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v3, Lcom/mediatek/engineermode/camera/FocusManager;

    invoke-direct {v3}, Lcom/mediatek/engineermode/camera/FocusManager;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusManager:Lcom/mediatek/engineermode/camera/FocusManager;

    .line 218
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 219
    const-string v3, "EM/Camera"

    const-string v4, "onCreate start after setContentView"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const v3, 0x7f0b00cb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCaptureBtn:Landroid/widget/Button;

    .line 222
    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCaptureBtn:Landroid/widget/Button;

    new-instance v4, Lcom/mediatek/engineermode/camera/CameraPreview$2;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/camera/CameraPreview$2;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    const-string v3, "EM/Camera"

    const-string v4, "onCreate end"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 243
    .local v2, win:Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    .line 259
    .end local v1           #file:Ljava/io/File;
    :goto_1
    iget-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    if-nez v3, :cond_3

    .line 260
    const v3, 0x7f0801cb

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 266
    :goto_2
    return-void

    .line 251
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "EM/Camera"

    const-string v4, "create direct error"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIssdcardExist:Z

    goto :goto_1

    .line 264
    :cond_3
    const v3, 0x7f0b00ca

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    .line 265
    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mShotNum:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 316
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 317
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 320
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 323
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    const-string v0, "EM/Camera"

    const-string v1, "super onPause."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    :cond_0
    iput-boolean v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    .line 303
    iget v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    if-ne v3, v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->stopPreview()V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->closeCamera()V

    .line 307
    iput v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    .line 308
    iput-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 310
    const-string v0, "EM/Camera"

    const-string v1, "super onPause end."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    const-string v2, "EM/Camera"

    const-string v3, "onResume "

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_1

    .line 276
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 278
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/CameraEM/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    .line 279
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume...path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsPreviewing:I

    .line 281
    iput v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I

    .line 282
    iput v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsCapture:I

    .line 284
    const v2, 0x7f0b00c9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/camera/VideoPreview;

    .line 285
    .local v1, mVideoPreview:Lcom/mediatek/engineermode/camera/VideoPreview;
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/engineermode/camera/VideoPreview;->setAspectRatio(II)V

    .line 286
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 287
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 288
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 290
    iput-boolean v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z

    .line 291
    iput-boolean v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged width is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged height is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "EM/Camera"

    const-string v1, "before startPreview "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->initializeCapabilities()V

    .line 482
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V

    .line 484
    const-string v0, "EM/Camera"

    const-string v1, "after startPreview "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 494
    const-string v2, "EM/Camera"

    const-string v3, "surfaceCreated start"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->openCamera()V
    :try_end_0
    .catch Lcom/mediatek/engineermode/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z

    if-nez v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 508
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->setDisplayOrientation()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    :goto_2
    const-string v2, "EM/Camera"

    const-string v3, "surfaceCreated end"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Lcom/mediatek/engineermode/camera/CameraHardwareException;
    const v2, 0x7f08051b

    invoke-static {p0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 509
    .end local v0           #e:Lcom/mediatek/engineermode/camera/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 510
    .local v1, exception:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->closeCamera()V

    .line 511
    const-string v2, "EM/Camera"

    const-string v3, "surfaceCreated closeCamera "

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 523
    const-string v0, "EM/Camera"

    const-string v1, "enter surfaceDestroyed "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->stopPreview()V

    .line 530
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/CameraPreview;->closeCamera()V

    .line 531
    const-string v0, "EM/Camera"

    const-string v1, "surfaceDestroyed closeCamera "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method
