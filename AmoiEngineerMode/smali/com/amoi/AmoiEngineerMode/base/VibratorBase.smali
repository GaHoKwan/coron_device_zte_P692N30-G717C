.class public abstract Lcom/amoi/AmoiEngineerMode/base/VibratorBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "VibratorBase.java"

# interfaces
.implements Lcom/amoi/AmoiEngineerMode/base/Retestable;


# static fields
.field protected static final MSG_END_OF_VIBRATING:I = 0x1

.field protected static final MSG_LOOP_VIBRATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VibratorBase"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected mAningTestTime:I

.field protected mTimer:Ljava/util/Timer;

.field protected retestButton:Landroid/widget/Button;

.field protected tipsView:Landroid/widget/TextView;

.field protected vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected initVibrator()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->vibrator:Landroid/os/Vibrator;

    .line 63
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/VibratorBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->handler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->startVibrate()V

    .line 85
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->setContentView(I)V

    .line 48
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->tipsView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isKeepScreenOn(Z)V

    .line 53
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->hideAutoButtons(Landroid/app/Activity;)V

    .line 55
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->retestButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->retestButton:Landroid/widget/Button;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;-><init>(Lcom/amoi/AmoiEngineerMode/base/Retestable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method protected isAgingTest()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method isKeepScreenOn(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isAgingTest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableScreenKeepOn, enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 153
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 155
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 158
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 157
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->initView()V

    .line 42
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->initButton()V

    .line 43
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->initVibrator()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onDestroy()V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isKeepScreenOn(Z)V

    .line 128
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 130
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isAgingTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isKeepScreenOn(Z)V

    .line 138
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onPause()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isKeepScreenOn(Z)V

    .line 144
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onResume()V

    .line 145
    return-void
.end method

.method public retest()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "EngineerMode"

    const-string v1, "VibratorBase retest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->retestButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->startVibrate()V

    .line 123
    return-void
.end method

.method protected abstract showButton()V
.end method

.method protected startVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->isAgingTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mTimer:Ljava/util/Timer;

    .line 90
    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mAningTestTime:I

    .line 91
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$2;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/VibratorBase;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 105
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 101
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected stopVibrate()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->retestButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;->showButton()V

    .line 114
    return-void
.end method
