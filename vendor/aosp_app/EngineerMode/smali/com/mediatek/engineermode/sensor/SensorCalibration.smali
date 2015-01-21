.class public Lcom/mediatek/engineermode/sensor/SensorCalibration;
.super Landroid/app/Activity;
.source "SensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CALIBRAION_TYPE:Ljava/lang/String; = "type"

.field public static final GSENSOR:I = 0x0

.field public static final GYROSCOPE:I = 0x1

.field private static final MSG_CLEAR_CALIBRARION:I = 0x2

.field private static final MSG_DO_CALIBRARION_20:I = 0x0

.field private static final MSG_DO_CALIBRARION_40:I = 0x1

.field private static final MSG_GET_CALIBRARION:I = 0x3

.field private static final MSG_GET_FAILURE:I = 0x7

.field private static final MSG_GET_SUCCESS:I = 0x5

.field private static final MSG_SET_FAILURE:I = 0x6

.field private static final MSG_SET_SUCCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SensorCalibration"

.field private static final TOLERANCE_20:I = 0x2

.field private static final TOLERANCE_40:I = 0x4


# instance fields
.field private mCaliData:Landroid/widget/TextView;

.field private mClearCalibration:Landroid/widget/Button;

.field private mCurrentData:Landroid/widget/TextView;

.field private mData:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:I

.field private mSetCalibration20:Landroid/widget/Button;

.field private mSetCalibration40:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field private mType:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "async_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    .line 94
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensor:Landroid/hardware/Sensor;

    .line 96
    new-instance v0, Lcom/mediatek/engineermode/sensor/SensorCalibration$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/SensorCalibration$1;-><init>(Lcom/mediatek/engineermode/sensor/SensorCalibration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/sensor/SensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorType:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCurrentData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/SensorCalibration;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->enableButtons(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/SensorCalibration;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCaliData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->getCalibration()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/sensor/SensorCalibration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->setCalibration(I)V

    return-void
.end method

.method private enableButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration20:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration40:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mClearCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 279
    return-void
.end method

.method private getCalibration()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    const-string v4, "SensorCalibration"

    const-string v5, "getGsensorCalibration()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-array v0, v9, [F

    .line 223
    .local v0, result:[F
    const/4 v1, 0x0

    .line 224
    .local v1, ret:I
    iget v4, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    if-nez v4, :cond_0

    .line 225
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/EmSensor;->getGsensorCalibration([F)I

    move-result v1

    .line 229
    :goto_0
    const-string v4, "SensorCalibration"

    const-string v5, "getGsensorCalibration(), ret %d, values %f, %f, %f"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    aget v7, v0, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    aget v7, v0, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget v4, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v1, v4, :cond_1

    .line 233
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%+8.4f,%+8.4f,%+8.4f"

    new-array v6, v9, [Ljava/lang/Object;

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v2

    aget v3, v0, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mData:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    :goto_1
    return v2

    .line 227
    :cond_0
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/EmSensor;->getGyroscopeCalibration([F)I

    move-result v1

    goto :goto_0

    .line 238
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mData:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v2, v3

    .line 240
    goto :goto_1
.end method

.method private setCalibration(I)V
    .locals 9
    .parameter "what"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, result:I
    const-string v1, "SensorCalibration"

    const-string v2, "setCalibration(), operation %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    if-nez v1, :cond_4

    .line 248
    if-nez p1, :cond_2

    .line 249
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/EmSensor;->doGsensorCalibration(I)I

    move-result v0

    .line 264
    :cond_0
    :goto_0
    const-string v1, "SensorCalibration"

    const-string v2, "setCalibration(), ret %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget v1, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v0, v1, :cond_7

    .line 267
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->getCalibration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    :cond_1
    :goto_1
    return-void

    .line 250
    :cond_2
    if-ne v5, p1, :cond_3

    .line 251
    invoke-static {v7}, Lcom/mediatek/engineermode/sensor/EmSensor;->doGsensorCalibration(I)I

    move-result v0

    goto :goto_0

    .line 252
    :cond_3
    if-ne v6, p1, :cond_0

    .line 253
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->clearGsensorCalibration()I

    move-result v0

    goto :goto_0

    .line 255
    :cond_4
    iget v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    if-ne v1, v5, :cond_0

    .line 256
    if-nez p1, :cond_5

    .line 257
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/EmSensor;->doGyroscopeCalibration(I)I

    move-result v0

    goto :goto_0

    .line 258
    :cond_5
    if-ne v5, p1, :cond_6

    .line 259
    invoke-static {v7}, Lcom/mediatek/engineermode/sensor/EmSensor;->doGyroscopeCalibration(I)I

    move-result v0

    goto :goto_0

    .line 260
    :cond_6
    if-ne v6, p1, :cond_0

    .line 261
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->clearGyroscopeCalibration()I

    move-result v0

    goto :goto_0

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 285
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mToast:Landroid/widget/Toast;

    .line 286
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration20:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 208
    const-string v0, "SensorCalibration"

    const-string v1, "do calibration 20"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->enableButtons(Z)V

    .line 218
    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration40:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 211
    const-string v0, "SensorCalibration"

    const-string v1, "do calibration 40"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mClearCalibration:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    const-string v0, "SensorCalibration"

    const-string v1, "clear calibration"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    .line 119
    const-string v0, "SensorCalibration"

    const-string v1, "onCreate(), type %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    if-nez v0, :cond_0

    .line 121
    iput v5, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorType:I

    .line 122
    const v0, 0x7f0805f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 128
    :goto_0
    const v0, 0x7f0b03d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration20:Landroid/widget/Button;

    .line 129
    const v0, 0x7f0b03d9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration40:Landroid/widget/Button;

    .line 130
    const v0, 0x7f0b03da

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mClearCalibration:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration20:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSetCalibration40:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mClearCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0b03db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCurrentData:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCurrentData:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v0, 0x7f0b03dc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCaliData:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCaliData:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;-><init>(Lcom/mediatek/engineermode/sensor/SensorCalibration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mUiHandler:Landroid/os/Handler;

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    new-instance v0, Lcom/mediatek/engineermode/sensor/SensorCalibration$3;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration$3;-><init>(Lcom/mediatek/engineermode/sensor/SensorCalibration;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandler:Landroid/os/Handler;

    .line 178
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorType:I

    .line 125
    const v0, 0x7f0805f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 198
    const-string v0, "SensorCalibration"

    const-string v1, "onPause(), type %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v0, "SensorCalibration"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    const-string v0, "SensorCalibration"

    const-string v1, "onResume(), type %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensor:Landroid/hardware/Sensor;

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "SensorCalibration"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    return-void

    .line 190
    :cond_0
    const-string v0, "get default sensor failed."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
