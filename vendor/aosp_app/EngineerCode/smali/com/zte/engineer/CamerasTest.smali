.class public abstract Lcom/zte/engineer/CamerasTest;
.super Lcom/zte/engineer/EmActivity;
.source "CamerasTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_OPEN_FAIL:I = 0x2

.field private static final CAMERA_OPEN_OK:I = 0x1

.field private static final MSG_ENABLE_SHOT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CamerasTest"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCamera:Landroid/hardware/Camera;

.field protected mCameraID:I

.field mCameraOpen:Z

.field mCameraOpenThread:Ljava/lang/Thread;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field mHandler:Landroid/os/Handler;

.field mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOldVolume:I

.field mOldbrightness:I

.field protected mOpenCameraFail:Z

.field private mPausing:Z

.field private mPreviewing:Z

.field protected mShotbtn:Landroid/widget/ImageButton;

.field protected mStartPreviewFail:Z

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    .line 42
    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPreviewing:Z

    .line 43
    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    .line 44
    iput v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    .line 46
    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mOpenCameraFail:Z

    .line 51
    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraOpen:Z

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/CamerasTest$1;

    invoke-direct {v1, p0}, Lcom/zte/engineer/CamerasTest$1;-><init>(Lcom/zte/engineer/CamerasTest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraOpenThread:Ljava/lang/Thread;

    .line 297
    new-instance v0, Lcom/zte/engineer/CamerasTest$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/CamerasTest$3;-><init>(Lcom/zte/engineer/CamerasTest;)V

    iput-object v0, p0, Lcom/zte/engineer/CamerasTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/engineer/CamerasTest;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/engineer/CamerasTest;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zte/engineer/CamerasTest;->getCameraDisplayOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/CamerasTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/engineer/CamerasTest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/zte/engineer/CamerasTest;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/engineer/CamerasTest;)Landroid/media/MediaActionSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/engineer/CamerasTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPausing:Z

    return v0
.end method

.method private getCameraDisplayOrientation(I)I
    .locals 7
    .parameter "cameraId"

    .prologue
    .line 58
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 59
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 60
    const-string v4, "CamerasTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++++++cameraId----- ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, degrees:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 64
    .local v3, rotation:I
    packed-switch v3, :pswitch_data_0

    .line 71
    :goto_0
    const/4 v2, 0x0

    .line 72
    .local v2, result:I
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 73
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 74
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 78
    :goto_1
    return v2

    .line 65
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 67
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 68
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 76
    .restart local v2       #result:I
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected closeCamera()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>------closeCamera()------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPreviewing:Z

    .line 279
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<------closeCamera()------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 284
    const-string v2, "CamerasTest"

    const-string v3, ">>>>dispatchKeyEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 286
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 293
    const-string v1, "CamerasTest"

    const-string v2, "<<<<dispatchKeyEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 288
    :pswitch_0
    iput-boolean v1, p0, Lcom/zte/engineer/CamerasTest;->mPreviewing:Z

    .line 289
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 290
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 137
    const-string v1, "CamerasTest"

    const-string v2, ">>>>onCreate++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 140
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 141
    iput-boolean v4, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 143
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/zte/engineer/CamerasTest;->mOldVolume:I

    .line 145
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/zte/engineer/CamerasTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 148
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 150
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 151
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/CamerasTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mSurfaceView:Landroid/view/SurfaceView;

    .line 156
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 157
    .local v0, holder:Landroid/view/SurfaceHolder;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 158
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 159
    new-instance v1, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;-><init>(Lcom/zte/engineer/CamerasTest;Lcom/zte/engineer/CamerasTest$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 161
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mCameraSound:Landroid/media/MediaActionSound;

    .line 165
    :cond_0
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    .line 166
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/engineer/CamerasTest$2;

    invoke-direct {v2, p0}, Lcom/zte/engineer/CamerasTest$2;-><init>(Lcom/zte/engineer/CamerasTest;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const-string v1, "CamerasTest"

    const-string v2, "<<<<<onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 253
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>>>>onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPausing:Z

    .line 256
    invoke-virtual {p0}, Lcom/zte/engineer/CamerasTest;->closeCamera()V

    .line 257
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/zte/engineer/CamerasTest;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 259
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<<<onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>>>>onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/CamerasTest;->mPausing:Z

    .line 247
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<<<onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public showErrorAndFinish()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/zte/engineer/CamerasTest$4;

    invoke-direct {v0, p0}, Lcom/zte/engineer/CamerasTest$4;-><init>(Lcom/zte/engineer/CamerasTest;)V

    .line 333
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06009f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    return-void
.end method
