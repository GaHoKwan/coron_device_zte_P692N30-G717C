.class public abstract Lcom/amoi/AmoiEngineerMode/base/CompassBase;
.super Landroid/app/Activity;
.source "CompassBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static final LOCK:Ljava/lang/Object; = null

.field private static final SENSOR_ACCURY_NORMAL:I = 0x1

.field private static final SENSOR_ACCURY_UNNORMAL:I


# instance fields
.field protected mAccuracy:Landroid/widget/TextView;

.field private mAccuryErrMap:Landroid/graphics/Bitmap;

.field private mBGBitmaps:Landroid/graphics/Bitmap;

.field private mCompasses:Landroid/graphics/Bitmap;

.field private mCompassesBitmaps:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field protected mDegree:F

.field private mErrBg:Landroid/graphics/Bitmap;

.field private final mHeight:F

.field protected mIsErr:Z

.field private mOrieSensor:Landroid/hardware/Sensor;

.field private mPreIsAccuracy:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x43c8

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mWidth:F

    .line 48
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mHeight:F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mDegree:F

    .line 55
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mIsErr:Z

    .line 58
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mPreIsAccuracy:Z

    return-void
.end method

.method private getDirection(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x10e

    const/16 v2, 0xb4

    const/16 v1, 0x5a

    .line 140
    const-string v0, ""

    .line 141
    .local v0, diraction:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 155
    if-lez p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u5317"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :sswitch_0
    const-string v0, "   \u6b63\u5317"

    .line 144
    goto :goto_0

    .line 146
    :sswitch_1
    const-string v0, "   \u6b63\u4e1c"

    .line 147
    goto :goto_0

    .line 149
    :sswitch_2
    const-string v0, "   \u6b63\u5357"

    .line 150
    goto :goto_0

    .line 152
    :sswitch_3
    const-string v0, "   \u6b63\u897f"

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    if-le p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u5357"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    if-le p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u897f\u5357"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    if-le p1, v3, :cond_0

    const/16 v1, 0x168

    if-ge p1, v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u897f\u5317"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private initCompass()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 76
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceView:Landroid/view/SurfaceView;

    .line 77
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 79
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 80
    const-string v0, "ctl.stop"

    const-string v1, "geomagneticd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "ctl.start"

    const-string v1, "geomagneticd1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mVibrator:Landroid/os/Vibrator;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mOrieSensor:Landroid/hardware/Sensor;

    .line 89
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenWidth:I

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mBGBitmaps:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompasses:Landroid/graphics/Bitmap;

    .line 97
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 108
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 109
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenWidth:I

    .line 110
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenHeight:I

    .line 111
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->setContentView(I)V

    .line 112
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuracy:Landroid/widget/TextView;

    .line 113
    return-void
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmp"

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x43c8

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 129
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 131
    .local v4, height:I
    int-to-float v0, v3

    div-float v7, v2, v0

    .line 132
    .local v7, scaleWidth:F
    int-to-float v0, v4

    div-float v8, v2, v0

    .line 134
    .local v8, scaltHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 136
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmp"
    .parameter "bitwidth"
    .parameter "bitheight"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 117
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 119
    .local v4, height:I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v7, v0, v2

    .line 120
    .local v7, scaleWidth:F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 122
    .local v8, scaltHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 124
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accuryChange(I)I
    .locals 5
    .parameter "accuracy"

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, isAccu:Z
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    .line 244
    const/4 v0, 0x1

    .line 248
    .local v0, accu:I
    :goto_0
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 251
    :cond_0
    const/4 v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuracy:Landroid/widget/TextView;

    const v3, 0x7f0600fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuracy:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :goto_1
    iget-boolean v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mPreIsAccuracy:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 260
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 262
    :cond_1
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mPreIsAccuracy:Z

    .line 263
    const-string v2, "CompassBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accuracy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v0

    .line 246
    .end local v0           #accu:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #accu:I
    goto :goto_0

    .line 255
    :cond_3
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuracy:Landroid/widget/TextView;

    const v3, 0x7f0600fa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuracy:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected deleteSurfaceView()V
    .locals 2

    .prologue
    .line 355
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 356
    .local v0, layout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 189
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenWidth:I

    .line 190
    .local v3, screenW:I
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenHeight:I

    .line 191
    .local v2, screenH:I
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 192
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v6, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 194
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 196
    .local v1, paint:Landroid/graphics/Paint;
    const v4, -0xffff01

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 198
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    const/high16 v4, 0x4220

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-boolean v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mIsErr:Z

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v0, v6, v6, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 202
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mErrBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuryErrMap:Landroid/graphics/Bitmap;

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    :goto_0
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 237
    return-void

    .line 207
    :cond_0
    invoke-virtual {v0, v6, v6, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mBGBitmaps:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 214
    :goto_1
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mDegree:F

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getDirection(I)Ljava/lang/String;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, -0x46

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0xa

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 217
    :try_start_1
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompasses:Landroid/graphics/Bitmap;

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 225
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mDegree:F

    neg-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 227
    :try_start_2
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v4

    goto :goto_3

    .line 220
    :catch_1
    move-exception v4

    goto :goto_2

    .line 210
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method drawScreenWithoutAccury(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 325
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    return-void
.end method

.method enableHomeKeyDispatched(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 360
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableHomeKeyDispatched, enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 363
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 364
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 365
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 369
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 370
    return-void

    .line 367
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->deleteSurfaceView()V

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 339
    return-void
.end method

.method protected abstract initButton()V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->accuryChange(I)I

    move-result v0

    .line 173
    .local v0, accu:I
    packed-switch v0, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mIsErr:Z

    .line 176
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->drawScreen()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iput-object p0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->initView()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "ctl.stop"

    const-string v1, "geomagneticd1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "ctl.start"

    const-string v1, "geomagneticd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 383
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->initButton()V

    .line 71
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->initCompass()V

    .line 72
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 271
    sget-object v1, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 273
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 274
    :cond_0
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 280
    sget-object v1, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mOrieSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mOrieSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 286
    :cond_0
    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 289
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020004

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenWidth:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mScreenHeight:I

    invoke-direct {p0, v0, v2, v3}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mErrBg:Landroid/graphics/Bitmap;

    .line 293
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f02

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuryErrMap:Landroid/graphics/Bitmap;

    .line 295
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->drawScreen()V

    .line 296
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    return-void

    .line 289
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 296
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 303
    sget-object v1, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 305
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mErrBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mErrBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuryErrMap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mAccuryErrMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompassesBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompasses:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mCompasses:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mBGBitmaps:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CompassBase;->mBGBitmaps:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_4
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
