.class public abstract Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;
.super Landroid/app/Activity;
.source "FlashLightBase.java"

# interfaces
.implements Lcom/amoi/AmoiEngineerMode/base/Retestable;


# static fields
.field protected static final MSG_CHANGE_LIGHT:I = 0x2

.field protected static final MSG_END_FLASH:I = 0x3

.field protected static final MSG_RESET:I = 0x4

.field protected static final MSG_TURN_OFF_FLASH:I = 0x0

.field protected static final MSG_TURN_ON_FLASH:I = 0x1


# instance fields
.field protected exitButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private mCamera:Landroid/hardware/Camera;

.field private mCount:I

.field protected nextButton:Landroid/widget/Button;

.field protected prevButton:Landroid/widget/Button;

.field private retestButton:Landroid/widget/Button;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private tipsView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->openFlashLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->closeFlashLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->changeFlashLight()V

    return-void
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->tipsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retestButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeFlashLight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 121
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->isAgingTest()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 134
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    :goto_1
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->openFlashLight()V

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->closeFlashLight()V

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private closeFlashLight()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 144
    .local v0, parameter:Landroid/hardware/Camera$Parameters;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 146
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 147
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    .line 150
    .end local v0           #parameter:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->setContentView(I)V

    .line 52
    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->tipsView:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0600dd

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->hideAutoButtons(Landroid/app/Activity;)V

    .line 58
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retestButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retestButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;-><init>(Lcom/amoi/AmoiEngineerMode/base/Retestable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private openFlashLight()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 159
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 160
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 162
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 163
    return-void
.end method


# virtual methods
.method protected gotest()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    return-void
.end method

.method protected abstract initButton()V
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timer:Ljava/util/Timer;

    .line 100
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$3;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$3;-><init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timerTask:Ljava/util/TimerTask;

    .line 107
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 108
    return-void
.end method

.method protected inithandler()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public isAgingTest()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->initView()V

    .line 38
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->initButton()V

    .line 39
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->inithandler()V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->closeFlashLight()V

    .line 185
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->stopTimerAndTimerTask()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    return-void
.end method

.method public retest()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->mCount:I

    .line 167
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0600dd

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->retestButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->initTimerAndTimerTask()V

    .line 170
    return-void
.end method

.method protected abstract showButton()V
.end method

.method protected stopTimerAndTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 113
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timer:Ljava/util/Timer;

    .line 115
    :cond_0
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;->timerTask:Ljava/util/TimerTask;

    .line 116
    return-void
.end method
