.class public Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;
.super Landroid/app/Activity;
.source "PSensorChangeThreshold.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_CHANGE_THRESHOLD:I = 0x0

.field private static final MSG_INVALID_NUMBER:I = 0x3

.field private static final MSG_SET_FAILURE:I = 0x2

.field private static final MSG_SET_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PSensorChangeThreshold"

.field private static final THRESHOLD_MAX:I = 0xffff

.field private static final THRESHOLD_MIN:I


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mEtHigh:Landroid/widget/EditText;

.field private mEtLow:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

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

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "async_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    iput-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensor:Landroid/hardware/Sensor;

    .line 86
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$1;-><init>(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtHigh:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtLow:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mToast:Landroid/widget/Toast;

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 179
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "change threshold"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f03007f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 103
    const v0, 0x7f0b03eb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0b03e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtHigh:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0b03ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtLow:Landroid/widget/EditText;

    .line 109
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$2;-><init>(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mUiHandler:Landroid/os/Handler;

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;-><init>(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mHandler:Landroid/os/Handler;

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    const-string v0, "PSensorChangeThreshold"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensor:Landroid/hardware/Sensor;

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 166
    return-void
.end method
