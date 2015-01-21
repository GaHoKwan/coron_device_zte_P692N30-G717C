.class public Lcom/plugin/installapk/ar/CameraView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.CameraView"


# instance fields
.field afc:Landroid/hardware/Camera$AutoFocusCallback;

.field private configOrient:I

.field private isOppoFind5:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPreviewSize:Landroid/hardware/Camera$Size;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private screenHeight:I

.field private screenWidth:I

.field private surfaceOrinet:I

.field private tempH:I

.field private tempW:I

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/plugin/installapk/ar/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/plugin/installapk/ar/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/plugin/installapk/ar/CameraView$2;

    invoke-direct {v0, p0}, Lcom/plugin/installapk/ar/CameraView$2;-><init>(Lcom/plugin/installapk/ar/CameraView;)V

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->afc:Landroid/hardware/Camera$AutoFocusCallback;

    iput-object p1, p0, Lcom/plugin/installapk/ar/CameraView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/plugin/installapk/ar/CameraView;->getScreenSize()V

    invoke-direct {p0}, Lcom/plugin/installapk/ar/CameraView;->init()V

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private USE_UI_8()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private adjustCameraOrientation()V
    .locals 6

    const/16 v5, 0xb4

    const/16 v4, 0x5a

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/plugin/installapk/ar/CameraView;->getSurfaceOrinet()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->surfaceOrinet:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->surfaceOrinet:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->surfaceOrinet:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->surfaceOrinet:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->surfaceOrinet:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->configOrient:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 14
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

    move/from16 v0, p2

    int-to-double v1, v0

    move/from16 v0, p3

    int-to-double v3, v0

    div-double v5, v1, v3

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_5

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-wide v12, v2

    move-object v3, v1

    move-wide v1, v12

    :goto_1
    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto :goto_0

    :cond_3
    if-nez v4, :cond_0

    const-wide v1, 0x7fefffffffffffffL

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v6, v6, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_4

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v1

    move-wide v12, v2

    move-wide v1, v12

    :goto_3
    move-wide v2, v1

    goto :goto_2

    :cond_4
    move-wide v1, v2

    goto :goto_3

    :cond_5
    move-wide v12, v2

    move-wide v1, v12

    move-object v3, v4

    goto :goto_1
.end method

.method private getScreenSize()V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/plugin/installapk/ar/CameraView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->tempH:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->tempW:I

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->tempW:I

    iget v1, p0, Lcom/plugin/installapk/ar/CameraView;->tempH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->screenHeight:I

    iget v0, p0, Lcom/plugin/installapk/ar/CameraView;->tempW:I

    iget v1, p0, Lcom/plugin/installapk/ar/CameraView;->tempH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/CameraView;->screenWidth:I

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/plugin/installapk/ar/CameraView$1;

    invoke-direct {v0, p0}, Lcom/plugin/installapk/ar/CameraView$1;-><init>(Lcom/plugin/installapk/ar/CameraView;)V

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/CameraView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/plugin/installapk/ar/CameraView;->afc:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public getDisplayRotation()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHVA()D
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getSurfaceOrinet()I
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getVVA()D
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->parameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/plugin/installapk/ar/CameraView;->screenWidth:I

    iget v2, p0, Lcom/plugin/installapk/ar/CameraView;->screenHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/plugin/installapk/ar/CameraView;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->parameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/plugin/installapk/ar/CameraView;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/plugin/installapk/ar/CameraView;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0}, Lcom/plugin/installapk/ar/CameraView;->USE_UI_8()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->parameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/plugin/installapk/ar/CameraView;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0}, Lcom/plugin/installapk/ar/CameraView;->adjustCameraOrientation()V

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public test()I
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/ar/CameraView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method
