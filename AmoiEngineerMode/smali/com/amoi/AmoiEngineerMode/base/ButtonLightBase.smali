.class public abstract Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;
.super Landroid/app/Activity;
.source "ButtonLightBase.java"


# static fields
.field private static final BUTTON_LED_FILE:Ljava/lang/String; = "/sys/class/leds/button-backlight/brightness"

.field protected static final MSG_CHANGE_LIGHT:I = 0x1


# instance fields
.field private backlightOn:Z

.field protected handler:Landroid/os/Handler;

.field protected lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

.field private originalState:Ljava/lang/String;

.field protected switcher:Z

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->switcher:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z

    return p1
.end method

.method private initButtonLight()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/amoi/AmoiEngineerMode/util/LightController;

    invoke-direct {v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    .line 52
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/button-backlight/brightness"

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->getLightState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->originalState:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->backlightOn:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->handler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timerTask:Ljava/util/TimerTask;

    .line 91
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 92
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 69
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->setContentView(I)V

    .line 70
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .restart local v0       #textView:Landroid/widget/TextView;
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "EngineerMode"

    const-string v1, "ButtonLightBase onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initView()V

    .line 43
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initButton()V

    .line 44
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initButtonLight()V

    .line 45
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initHandler()V

    .line 46
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->initTimerAndTimerTask()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    const-string v0, "EngineerMode"

    const-string v1, "ButtonLightBase onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->stopTimerAndTimerTask()V

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/button-backlight/brightness"

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->originalState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->setLightState(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected stopTimerAndTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timer:Ljava/util/Timer;

    .line 99
    :cond_0
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;->timerTask:Ljava/util/TimerTask;

    .line 100
    return-void
.end method
