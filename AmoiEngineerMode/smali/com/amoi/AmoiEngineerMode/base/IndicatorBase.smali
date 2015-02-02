.class public abstract Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;
.super Landroid/app/Activity;
.source "IndicatorBase.java"


# static fields
.field private static final GREEN_LED_FILE:Ljava/lang/String; = "/sys/class/leds/green/brightness"

.field protected static final MSG_CHANGE_LED_COLOR:I = 0x1

.field protected static final MSG_CHANGE_LED_ON_OFF:I = 0x2

.field private static final RED_LED_FILE:Ljava/lang/String; = "/sys/class/leds/red/brightness"

.field private static final TAG:Ljava/lang/String; = "IndicatorBase"


# instance fields
.field protected count:I

.field protected handler:Landroid/os/Handler;

.field protected isON:Z

.field protected lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

.field protected originalGreen:Ljava/lang/String;

.field protected originalRed:Ljava/lang/String;

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->originalRed:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->originalGreen:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->isON:Z

    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->handler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method protected initIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/amoi/AmoiEngineerMode/util/LightController;

    invoke-direct {v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    .line 70
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/red/brightness"

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->getLightState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->originalRed:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/green/brightness"

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->getLightState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->originalGreen:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->count:I

    .line 73
    iput-boolean v2, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->isON:Z

    .line 74
    return-void
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x320

    .line 96
    const-string v0, "EngineerMode"

    const-string v1, "IndicatorBase initTimerAndTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timer:Ljava/util/Timer;

    .line 98
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timerTask:Ljava/util/TimerTask;

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 107
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 54
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->setContentView(I)V

    .line 55
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .restart local v0       #textView:Landroid/widget/TextView;
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "EngineerMode"

    const-string v1, "IndicatorBase onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initButton()V

    .line 48
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initIndicator()V

    .line 49
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initHandler()V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    const-string v0, "EngineerMode"

    const-string v1, "IndicatorBase onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->stoptimerAndTimerTask()V

    .line 139
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;->MarqueeOFF()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->stoptimerAndTimerTask()V

    .line 124
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;->MarqueeOFF()V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->initTimerAndTimerTask()V

    .line 131
    return-void
.end method

.method protected stoptimerAndTimerTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string v0, "EngineerMode"

    const-string v1, "IndicatorBase stoptimerAndTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 113
    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timer:Ljava/util/Timer;

    .line 115
    :cond_0
    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/IndicatorBase;->timerTask:Ljava/util/TimerTask;

    .line 116
    return-void
.end method
