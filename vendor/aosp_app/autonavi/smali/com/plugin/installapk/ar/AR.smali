.class public Lcom/plugin/installapk/ar/AR;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final AR_STATUS_FINISH:I = 0x2

.field public static final AR_STATUS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "chenwei.AR"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private cameraDis:I

.field private compassBitmap:Landroid/graphics/Bitmap;

.field compassBitmapHeight:I

.field compassBitmapWidth:I

.field private degrees:F

.field private dformat:Ljava/text/DecimalFormat;

.field private final dirFlag:Z

.field private dirId:I

.field private first:Z

.field imageByte:[B

.field private isAROpen:Z

.field private isLandscape:Z

.field private isZoom:Z

.field private mArLogic:Lcom/plugin/installapk/ar/ARLogic;

.field private mCameraBitmap:Landroid/graphics/Bitmap;

.field private mCameraDis:Landroid/widget/TextView;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private mCompass:Lcom/plugin/installapk/ar/MyCompass;

.field private mContext:Landroid/content/Context;

.field private mDir:Landroid/widget/ImageView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mInfo:Lcom/plugin/installapk/ar/Info;

.field private mNextRoad:Lcom/plugin/installapk/ar/GDScrollText;

.field private mNextRoadDis:Landroid/widget/TextView;

.field private mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

.field private mReceiver:Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

.field private mRemainDis:Landroid/widget/TextView;

.field private mRemainTime:Landroid/widget/TextView;

.field private mRes:Landroid/content/res/Resources;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSpeed:Landroid/widget/TextView;

.field private mSpeedBitmap:Landroid/graphics/Bitmap;

.field private mSpeedIcon:Landroid/widget/ImageView;

.field private mSwitchMode:Landroid/widget/ImageButton;

.field private mTemp:F

.field private mValues:[F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mZoomView:Landroid/widget/ImageButton;

.field private mZoomViewPressed:Landroid/widget/ImageButton;

.field private matrix:Landroid/graphics/Matrix;

.field private orientation:I

.field private orientationAngle:I

.field private sCameraText:Ljava/lang/String;

.field private sDisText:Ljava/lang/String;

.field private sHeight:I

.field private sMeter:Ljava/lang/String;

.field private sNextRoadDis:Ljava/lang/String;

.field private sSpeedText:Ljava/lang/String;

.field private sWidth:I

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempDis:I

.field private totalDis:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iput-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->dirFlag:Z

    iput-boolean v1, p0, Lcom/plugin/installapk/ar/AR;->isZoom:Z

    iput-boolean v1, p0, Lcom/plugin/installapk/ar/AR;->isLandscape:Z

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    const/4 v0, 0x0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->mTemp:F

    iput-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    iput-boolean v1, p0, Lcom/plugin/installapk/ar/AR;->isAROpen:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static synthetic access$100(Lcom/plugin/installapk/ar/AR;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/plugin/installapk/ar/AR;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/ar/AR;->bundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private drawProgress(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    iput p1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    iput p1, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyProgressView;->setTotalDis(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyProgressView;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    iput p1, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyProgressView;->setTotalDis(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    invoke-virtual {v0, v2}, Lcom/plugin/installapk/ar/MyProgressView;->setProgress(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/plugin/installapk/ar/ARLogic;->getInstance()Lcom/plugin/installapk/ar/ARLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/plugin/installapk/ar/AR;->sWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->sHeight:I

    invoke-direct {p0}, Lcom/plugin/installapk/ar/AR;->initWidget()V

    invoke-direct {p0}, Lcom/plugin/installapk/ar/AR;->initXml()V

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->orientation:I

    iget v0, p0, Lcom/plugin/installapk/ar/AR;->orientation:I

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/plugin/installapk/ar/AR;->isLandscape:Z

    iput v3, p0, Lcom/plugin/installapk/ar/AR;->orientationAngle:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    new-instance v0, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;-><init>(Lcom/plugin/installapk/ar/AR;Lcom/plugin/installapk/ar/AR$1;)V

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mReceiver:Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.autonavi.xmgd.plugin.action.ar.updateview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mReceiver:Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/plugin/installapk/ar/AR;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    iget v0, p0, Lcom/plugin/installapk/ar/AR;->orientation:I

    if-ne v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->isLandscape:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->orientationAngle:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/plugin/installapk/ar/AR;->orientation:I

    if-ne v0, v4, :cond_0

    iput-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->isLandscape:Z

    const/16 v0, -0x5a

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->orientationAngle:I

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/plugin/installapk/ar/GDScrollText;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mNextRoad:Lcom/plugin/installapk/ar/GDScrollText;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mNextRoad:Lcom/plugin/installapk/ar/GDScrollText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/GDScrollText;->setTextColor(I)V

    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mRemainDis:Landroid/widget/TextView;

    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mRemainTime:Landroid/widget/TextView;

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSpeed:Landroid/widget/TextView;

    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mNextRoadDis:Landroid/widget/TextView;

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCameraDis:Landroid/widget/TextView;

    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSwitchMode:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSwitchMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/plugin/installapk/ar/MyCompass;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCompass:Lcom/plugin/installapk/ar/MyCompass;

    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mDir:Landroid/widget/ImageView;

    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCameraIcon:Landroid/widget/ImageView;

    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSpeedIcon:Landroid/widget/ImageView;

    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/plugin/installapk/ar/MyProgressView;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->sWidth:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyProgressView;->setRectWidth(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCompass:Lcom/plugin/installapk/ar/MyCompass;

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/MyCompass;->bringToFront()V

    return-void
.end method

.method private initXml()V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->sDisText:Ljava/lang/String;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->sSpeedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->sCameraText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->compassBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->compassBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->compassBitmapHeight:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->compassBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->compassBitmapWidth:I

    return-void
.end method

.method private notificatonExternalStatus(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "chenwei.AR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,notificatonExternalStatus  ARLogic.isFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/plugin/installapk/ar/ARLogic;->isFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1

    iput-boolean v3, p0, Lcom/plugin/installapk/ar/AR;->isAROpen:Z

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.plugin.action.ar.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ar_status"

    iget-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->isAROpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->isAROpen:Z

    goto :goto_0
.end method

.method private updateZoomView(Landroid/graphics/Bitmap;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->isZoom:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomViewPressed:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mZoomView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->finish()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->isZoom:Z

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget-object v0, v0, Lcom/plugin/installapk/ar/Info;->zoomBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v1, v1, Lcom/plugin/installapk/ar/Info;->zoomViewStatu:I

    invoke-direct {p0, v0, v1}, Lcom/plugin/installapk/ar/AR;->updateZoomView(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->isZoom:Z

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget-object v0, v0, Lcom/plugin/installapk/ar/Info;->zoomBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v1, v1, Lcom/plugin/installapk/ar/Info;->zoomViewStatu:I

    invoke-direct {p0, v0, v1}, Lcom/plugin/installapk/ar/AR;->updateZoomView(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0009
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->setContentView(I)V

    iput-object p0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/plugin/installapk/ar/ARLogic;->isFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/plugin/installapk/ar/AR;->notificatonExternalStatus(I)V

    invoke-static {}, Lcom/plugin/installapk/ar/ARLogic;->getInstance()Lcom/plugin/installapk/ar/ARLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/ARLogic;->isSupportAR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mContext:Landroid/content/Context;

    const v1, 0x7f0701d6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->finish()V

    :cond_0
    invoke-static {}, Lcom/plugin/installapk/ar/ARLogic;->getInstance()Lcom/plugin/installapk/ar/ARLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/ARLogic;->getImageLocalPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "arinfo_ImageOnSDCard_path"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/plugin/installapk/ar/ARLogic;->getInstance()Lcom/plugin/installapk/ar/ARLogic;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/plugin/installapk/ar/ARLogic;->setImageLocalPath(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/plugin/installapk/ar/AR;->init()V

    if-eqz p1, :cond_3

    const-string v0, "totalDis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    const-string v0, "first"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    const-string v0, "tempDis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    :cond_3
    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v1, "totalDis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    const-string v1, "first"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    const-string v1, "tempDis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    :cond_4
    iget-boolean v0, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mProgressView:Lcom/plugin/installapk/ar/MyProgressView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyProgressView;->setTotalDis(I)V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mReceiver:Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mReceiver:Lcom/plugin/installapk/ar/AR$GDBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/plugin/installapk/ar/AR;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/plugin/installapk/ar/AR;->notificatonExternalStatus(I)V

    invoke-static {}, Lcom/plugin/installapk/ar/ARLogic;->getInstance()Lcom/plugin/installapk/ar/ARLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/ARLogic;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "totalDis"

    iget v2, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "first"

    iget-boolean v2, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "tempDis"

    iget v2, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "totalDis"

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->totalDis:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "first"

    iget-boolean v1, p0, Lcom/plugin/installapk/ar/AR;->first:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "tempDis"

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->tempDis:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCompass:Lcom/plugin/installapk/ar/MyCompass;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mValues:[F

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mValues:[F

    aget v0, v0, v2

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->mTemp:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCompass:Lcom/plugin/installapk/ar/MyCompass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mValues:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->mTemp:F

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mValues:[F

    aget v0, v0, v2

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->orientationAngle:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->degrees:F

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCompass:Lcom/plugin/installapk/ar/MyCompass;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->degrees:F

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/MyCompass;->setRotation(F)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onStart()V

    const-string v0, "chenwei.AR"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateInfo(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    if-nez v0, :cond_1

    new-instance v0, Lcom/plugin/installapk/ar/Info;

    invoke-direct {v0}, Lcom/plugin/installapk/ar/Info;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    :cond_1
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_next_road_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/plugin/installapk/ar/Info;->nextRoadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_next_road_dis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->nextRoadDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_remin_dis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->routeReminDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_turn_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->trunID:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_limit_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->limitSpeed:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_car_speed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->carSpeed:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_has_camera"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/plugin/installapk/ar/Info;->hasCamera:Z

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_limit_distance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->cameraLimitDis:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    const-string v1, "arinfo_arrival_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/plugin/installapk/ar/Info;->arrivalTime:I

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/AR;->updateView()V

    goto :goto_0
.end method

.method public updateView()V
    .locals 3

    const-string v0, "chenwei.AR"

    const-string v1, "updateView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v0, v0, Lcom/plugin/installapk/ar/Info;->nextRoadDis:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/ARLogic;->updateDir(I)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->dirId:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mDir:Landroid/widget/ImageView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->dirId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mNextRoad:Lcom/plugin/installapk/ar/GDScrollText;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget-object v1, v1, Lcom/plugin/installapk/ar/Info;->nextRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/GDScrollText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mRemainDis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v2, v2, Lcom/plugin/installapk/ar/Info;->routeReminDis:I

    invoke-virtual {v1, v2}, Lcom/plugin/installapk/ar/ARLogic;->getRemainDis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v2, v2, Lcom/plugin/installapk/ar/Info;->arrivalTime:I

    invoke-virtual {v1, v2}, Lcom/plugin/installapk/ar/ARLogic;->getRemainTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v1, v1, Lcom/plugin/installapk/ar/Info;->nextRoadDis:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/ARLogic;->getDistance(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->sNextRoadDis:Ljava/lang/String;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    invoke-virtual {v0}, Lcom/plugin/installapk/ar/ARLogic;->isKM()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " km"

    :goto_1
    iput-object v0, p0, Lcom/plugin/installapk/ar/AR;->sMeter:Ljava/lang/String;

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mNextRoadDis:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->sDisText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /><big><big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->sNextRoadDis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</big></big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->sMeter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->sSpeedText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /><big><big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v2, v2, Lcom/plugin/installapk/ar/Info;->carSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</big></big> km/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v0, v0, Lcom/plugin/installapk/ar/Info;->nextRoadDis:I

    invoke-direct {p0, v0}, Lcom/plugin/installapk/ar/AR;->drawProgress(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v1, v1, Lcom/plugin/installapk/ar/Info;->cameraLimitDis:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/ARLogic;->getCameraDis(I)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->cameraDis:I

    iget v0, p0, Lcom/plugin/installapk/ar/AR;->cameraDis:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCameraDis:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mArLogic:Lcom/plugin/installapk/ar/ARLogic;

    iget-object v1, p0, Lcom/plugin/installapk/ar/AR;->mInfo:Lcom/plugin/installapk/ar/Info;

    iget v1, v1, Lcom/plugin/installapk/ar/Info;->trunID:I

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/ar/ARLogic;->updateDir(I)I

    move-result v0

    iput v0, p0, Lcom/plugin/installapk/ar/AR;->dirId:I

    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mDir:Landroid/widget/ImageView;

    iget v1, p0, Lcom/plugin/installapk/ar/AR;->dirId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, " m"

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/plugin/installapk/ar/AR;->mCameraDis:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/plugin/installapk/ar/AR;->sCameraText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /><big><big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/plugin/installapk/ar/AR;->cameraDis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</big></big> m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
