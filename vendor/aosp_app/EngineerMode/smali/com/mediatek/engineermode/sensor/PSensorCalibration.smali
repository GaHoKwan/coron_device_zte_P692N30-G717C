.class public Lcom/mediatek/engineermode/sensor/PSensorCalibration;
.super Landroid/app/Activity;
.source "PSensorCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_CALCULATE_FAILURE:I = 0x7

.field private static final MSG_CALCULATE_MAX_VALUE:I = 0x1

.field private static final MSG_CALCULATE_MIN_VALUE:I = 0x0

.field private static final MSG_CALCULATE_SUCCESS:I = 0x6

.field private static final MSG_CALIBRARION_FAILURE:I = 0xb

.field private static final MSG_CALIBRARION_SUCCESS:I = 0xa

.field private static final MSG_CLEAR_CALIBRARION:I = 0x3

.field private static final MSG_CLEAR_FAILURE:I = 0xd

.field private static final MSG_CLEAR_SUCCESS:I = 0xc

.field private static final MSG_DO_CALIBRARION:I = 0x2

.field private static final MSG_GET_DATA:I = 0x4

.field private static final MSG_GET_DATA_FAILURE:I = 0x9

.field private static final MSG_GET_DATA_SUCCESS:I = 0x8

.field private static final MSG_UPDATE_DATA:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PSensorCalibration"

.field private static final UPDATE_INTERVAL:I = 0x32


# instance fields
.field private mClearCalibration:Landroid/widget/Button;

.field private mCurrentData:Landroid/widget/TextView;

.field private mData:I

.field private mDoCalibration:Landroid/widget/Button;

.field private mGetMax:Landroid/widget/Button;

.field private mGetMin:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHigh:I

.field private mLow:I

.field private mMax:I

.field private mMaxValue:Landroid/widget/TextView;

.field private mMin:I

.field private mMinValue:Landroid/widget/TextView;

.field private mResult:Landroid/widget/TextView;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I

    .line 96
    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHigh:I

    .line 97
    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mLow:I

    .line 98
    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    .line 99
    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "async_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    .line 105
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensor:Landroid/hardware/Sensor;

    .line 107
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration$1;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/sensor/PSensorCalibration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->calibration(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMinValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMaxValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHigh:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mLow:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mCurrentData:Landroid/widget/TextView;

    return-object v0
.end method

.method private calibration(I)V
    .locals 10
    .parameter "what"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, result:I
    if-eq p1, v7, :cond_0

    .line 266
    const-string v1, "PSensorCalibration"

    const-string v2, "calibration(), operation %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    if-eq p1, v7, :cond_1

    .line 321
    const-string v1, "PSensorCalibration"

    const-string v2, "calibration(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    return-void

    .line 271
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->getCurrentData()V

    .line 272
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorData()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I

    .line 276
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 280
    :pswitch_2
    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    iget v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/sensor/EmSensor;->doPsensorCalibration(II)I

    move-result v0

    .line 281
    sget v1, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v0, v1, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->getCurrentData()V

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 289
    :pswitch_3
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->clearPsensorCalibration()I

    move-result v0

    .line 290
    sget v1, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v0, v1, :cond_3

    .line 291
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->getCurrentData()V

    .line 292
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    :pswitch_4
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->calculatePsensorMinValue()I

    move-result v0

    .line 299
    sget v1, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v0, v1, :cond_4

    .line 300
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorMinValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    .line 301
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorMinValue(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 308
    :pswitch_5
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->calculatePsensorMaxValue()I

    move-result v0

    .line 309
    sget v1, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    if-ne v0, v1, :cond_5

    .line 310
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorMaxValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    .line 311
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorMaxValue(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 314
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMin:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 327
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMax:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 328
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mDoCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 329
    return-void
.end method

.method private getCurrentData()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v1, "PSensorCalibration"

    const-string v2, "getCurrentData()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorData()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I

    .line 246
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorData(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mData:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorMinValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    .line 249
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorMinValue(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorMaxValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    .line 252
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorMaxValue(), ret %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-array v0, v7, [I

    .line 255
    .local v0, result:[I
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorThreshold([I)I

    .line 256
    const-string v1, "PSensorCalibration"

    const-string v2, "getPsensorThreshold(), ret %d, %d"

    new-array v3, v7, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    aget v1, v0, v5

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHigh:I

    .line 258
    aget v1, v0, v6

    iput v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mLow:I

    .line 260
    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 335
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mToast:Landroid/widget/Toast;

    .line 336
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMin:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 228
    const-string v0, "PSensorCalibration"

    const-string v1, "get min"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->enableButtons(Z)V

    .line 241
    return-void

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMax:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 231
    const-string v0, "PSensorCalibration"

    const-string v1, "get max"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mDoCalibration:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 234
    const-string v0, "PSensorCalibration"

    const-string v1, "do calibration"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mClearCalibration:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 237
    const-string v0, "PSensorCalibration"

    const-string v1, "clear calibration"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 124
    const v0, 0x7f0b03e3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMin:Landroid/widget/Button;

    .line 125
    const v0, 0x7f0b03e5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMax:Landroid/widget/Button;

    .line 126
    const v0, 0x7f0b03e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mDoCalibration:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0b03e7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mClearCalibration:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mGetMax:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mDoCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mClearCalibration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0b03e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mCurrentData:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMinValue:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b03e4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mMaxValue:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b03e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mResult:Landroid/widget/TextView;

    .line 139
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCalibration$2;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCalibration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mUiHandler:Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCalibration$3;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/sensor/PSensorCalibration$3;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCalibration;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "PSensorCalibration"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 221
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    const-string v0, "PSensorCalibration"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensor:Landroid/hardware/Sensor;

    .line 210
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 212
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCalibration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method
