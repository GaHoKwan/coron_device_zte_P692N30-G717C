.class public abstract Lcom/amoi/AmoiEngineerMode/base/CameraBase;
.super Landroid/app/Activity;
.source "CameraBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;
    }
.end annotation


# static fields
.field protected static final MSG_RETAKE_PICTURE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraBase"

.field protected static final fileName:Ljava/lang/String; = "/mnt/sdcard/CameraBase_picture_test.jpg"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private focus_info:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mAutoFocusCallBack:Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private rawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private retakeButton:Landroid/widget/Button;

.field private takeButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mAutoFocusCallBack:Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;

    .line 164
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$4;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$4;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 174
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$5;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$5;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->rawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 184
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->rawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private buildView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 102
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    .line 103
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    .line 104
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/CameraBase$2;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/CameraBase$3;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$3;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 370
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 371
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 373
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 374
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 375
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 379
    :goto_0
    return v1

    .line 377
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 354
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    :pswitch_0
    return v1

    .line 358
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 360
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 362
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 15
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 386
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 387
    const/4 v6, 0x0

    .line 430
    :cond_0
    return-object v6

    .line 389
    :cond_1
    const/4 v6, 0x0

    .line 390
    .local v6, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 398
    .local v4, minDiff:D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 400
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 402
    .local v10, targetHeight:I
    if-gtz v10, :cond_2

    .line 404
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 408
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 409
    .local v9, size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 410
    .local v7, ratio:D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 412
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_3

    .line 413
    move-object v6, v9

    .line 414
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 420
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v6, :cond_0

    .line 421
    const-string v11, "CameraBase"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-wide v4, 0x7fefffffffffffffL

    .line 423
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 424
    .restart local v9       #size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_5

    .line 425
    move-object v6, v9

    .line 426
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method private isSupportCameraPictureSize(Landroid/hardware/Camera$Size;)Z
    .locals 10
    .parameter "size"

    .prologue
    const/4 v7, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 485
    .local v1, candidate:Ljava/lang/String;
    const/16 v8, 0x78

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 486
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 483
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 490
    .local v6, width:I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 491
    .local v2, height:I
    iget v8, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v8, v6, :cond_0

    iget v8, p1, Landroid/hardware/Camera$Size;->height:I

    if-ne v8, v2, :cond_0

    .line 492
    const/4 v7, 0x1

    .line 495
    .end local v1           #candidate:Ljava/lang/String;
    .end local v2           #height:I
    .end local v4           #index:I
    .end local v6           #width:I
    :cond_2
    return v7
.end method

.method private isSupportFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCameraId:I

    if-ne v1, v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :cond_0
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 342
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 346
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 347
    .local v1, DisplayRotation:I
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCameraId:I

    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getDisplayOrientation(II)I

    move-result v0

    .line 349
    .local v0, DisplayOrientation:I
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 350
    return-void
.end method

.method private setPictureSize(I)V
    .locals 6
    .parameter "camOri"

    .prologue
    .line 459
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 460
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 461
    .local v3, pictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 462
    .local v1, maxSize:Landroid/hardware/Camera$Size;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 463
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-gt v4, v5, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v4, v5, :cond_1

    .line 465
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v4}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupportCameraPictureSize(Landroid/hardware/Camera$Size;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #maxSize:Landroid/hardware/Camera$Size;
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 462
    .restart local v1       #maxSize:Landroid/hardware/Camera$Size;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_2
    if-eqz p1, :cond_3

    const/16 v4, 0xb4

    if-ne p1, v4, :cond_4

    .line 472
    :cond_3
    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 477
    :goto_1
    return-void

    .line 474
    :cond_4
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_1
.end method

.method private setPreviewSize()V
    .locals 12

    .prologue
    .line 434
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->instance()Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v8

    iget v9, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCameraId:I

    aget-object v8, v8, v9

    iget v2, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 435
    .local v2, camOri:I
    invoke-direct {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->setPictureSize(I)V

    .line 436
    iget-object v8, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 437
    .local v5, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 439
    .local v6, size:Landroid/hardware/Camera$Size;
    const-wide/16 v0, 0x0

    .line 440
    .local v0, aspectWtoH:D
    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    if-le v8, v9, :cond_2

    .line 441
    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    div-double v0, v8, v10

    .line 446
    :goto_0
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 447
    .local v7, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p0, v7, v0, v1}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 448
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 449
    .local v4, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 450
    if-eqz v2, :cond_0

    const/16 v8, 0xb4

    if-ne v2, v8, :cond_3

    .line 451
    :cond_0
    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 456
    :cond_1
    :goto_1
    return-void

    .line 443
    .end local v3           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v4           #original:Landroid/hardware/Camera$Size;
    .end local v7           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double v0, v8, v10

    goto :goto_0

    .line 453
    .restart local v3       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v4       #original:Landroid/hardware/Camera$Size;
    .restart local v7       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_1
.end method


# virtual methods
.method protected deleteFile()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/CameraBase_picture_test.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, localFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 277
    :cond_0
    return-void
.end method

.method protected deleteSurfaceView()V
    .locals 2

    .prologue
    .line 160
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 162
    .local v0, layout:Landroid/widget/RelativeLayout;
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->deleteSurfaceView()V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 151
    return-void
.end method

.method protected getCameraType()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initButton()V
.end method

.method protected initCamera()V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mSurfaceView:Landroid/view/SurfaceView;

    .line 94
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 97
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getCameraType()I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCameraId:I

    .line 98
    return-void
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->handler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->requestWindowFeature(I)Z

    .line 74
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->setContentView(I)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->initView()V

    .line 63
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->initButton()V

    .line 64
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->initCamera()V

    .line 65
    sput-object p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->buildView()V

    .line 67
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->initHandler()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->deleteFile()V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    return-void
.end method

.method protected retakePicture()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 258
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->deleteFile()V

    .line 259
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 260
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "auto"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupportFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 266
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 281
    sget-object v0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 318
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraBase surfaceChanged w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->setPreviewSize()V

    .line 320
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 321
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "auto"

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupportFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 330
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->setDisplayOrientation()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 339
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 287
    iput-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    .line 289
    :cond_0
    const-string v2, "CameraBase"

    const-string v3, "chenpx --- open camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    .line 291
    const-string v2, "CameraBase"

    const-string v3, "chenpx --- open camera success!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 294
    .local v1, params:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 298
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->setDisplayOrientation()V

    .line 299
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, exception:Ljava/io/IOException;
    const-string v2, "EngineerMode"

    const-string v3, "CameraBase error to create camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 303
    iput-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 309
    const-string v0, "EngineerMode"

    const-string v1, "CameraBase surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 311
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    .line 313
    return-void
.end method

.method protected takePicture()V
    .locals 6

    .prologue
    .line 227
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 232
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "auto"

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->isSupportFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mAutoFocusCallBack:Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 246
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 237
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->rawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 240
    .local v0, localException:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->finish()V

    goto :goto_0

    .line 244
    .end local v0           #localException:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->finish()V

    goto :goto_0
.end method
