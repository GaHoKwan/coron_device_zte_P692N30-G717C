.class public abstract Lcom/amoi/AmoiEngineerMode/base/BacklightBase;
.super Landroid/app/Activity;
.source "BacklightBase.java"


# static fields
.field private static final LCD_LED_FILE:Ljava/lang/String; = "/sys/class/leds/lcd-backlight/brightness"

.field protected static final LIGHT_VALUES:[F = null

.field private static final MSG_CHANGE_LIGHT:I = 0x1


# instance fields
.field protected backlightIndex:I

.field protected handler:Landroid/os/Handler;

.field private lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

.field protected msgTextView:Landroid/widget/TextView;

.field protected originalLight:Landroid/view/WindowManager$LayoutParams;

.field private originalState:Ljava/lang/String;

.field protected textView:Landroid/widget/TextView;

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->LIGHT_VALUES:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    return-void
.end method

.method private initBackLight()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/amoi/AmoiEngineerMode/util/LightController;

    invoke-direct {v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    .line 60
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->getLightState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->originalState:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->setBrightness(Ljava/lang/String;I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected changeLight()V
    .locals 4

    .prologue
    .line 113
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->LIGHT_VALUES:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    .line 116
    :cond_0
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    sget-object v1, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->LIGHT_VALUES:[F

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 129
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->backlightIndex:I

    .line 130
    const-string v1, "EngineerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BacklightBase change light to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 118
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->msgTextView:Landroid/widget/TextView;

    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Lcom/amoi/AmoiEngineerMode/util/LightController;->setBrightness(Ljava/lang/String;I)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->msgTextView:Landroid/widget/TextView;

    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/amoi/AmoiEngineerMode/util/LightController;->setBrightness(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/BacklightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->handler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timer:Ljava/util/Timer;

    .line 91
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/BacklightBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timerTask:Ljava/util/TimerTask;

    .line 98
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 99
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->setContentView(I)V

    .line 66
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->textView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->msgTextView:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->msgTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "EngineerMode"

    const-string v1, "BacklightBase onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initButton()V

    .line 48
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initBackLight()V

    .line 51
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->originalLight:Landroid/view/WindowManager$LayoutParams;

    .line 52
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initHandler()V

    .line 53
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->initTimerAndTimerTask()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    const-string v0, "EngineerMode"

    const-string v1, "BacklightBase onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->stopTimerAndTimerTask()V

    .line 138
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->lightController:Lcom/amoi/AmoiEngineerMode/util/LightController;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->originalState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->setLightState(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->originalLight:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method protected stopTimerAndTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 104
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timer:Ljava/util/Timer;

    .line 106
    :cond_0
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BacklightBase;->timerTask:Ljava/util/TimerTask;

    .line 107
    return-void
.end method
