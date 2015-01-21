.class public Lcom/zte/engineer/LcdOffTest;
.super Lcom/zte/engineer/ZteActivity;
.source "LcdOffTest.java"


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final LCDOFF_TIMER_EVENT_TICK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LcdOffTest"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLcdPowerControl:Lcom/zte/engineer/LcdPowerControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/zte/engineer/LcdOffTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/LcdOffTest$1;-><init>(Lcom/zte/engineer/LcdOffTest;)V

    iput-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/LcdOffTest;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/zte/engineer/LcdOffTest;->finishSelf(Z)V

    return-void
.end method

.method private finishSelf(Z)V
    .locals 1
    .parameter "resultOK"

    .prologue
    .line 87
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    return-void

    .line 93
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/engineer/LcdOffTest;->finishSelf(Z)V

    .line 101
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    new-instance v0, Lcom/zte/engineer/LcdPowerControl;

    invoke-direct {v0}, Lcom/zte/engineer/LcdPowerControl;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mLcdPowerControl:Lcom/zte/engineer/LcdPowerControl;

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 78
    iget-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mLcdPowerControl:Lcom/zte/engineer/LcdPowerControl;

    invoke-virtual {v0}, Lcom/zte/engineer/LcdPowerControl;->LcdPowerOn()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "LcdOffTest"

    const-string v1, "LcdPowerOn fail"

    invoke-static {v0, v1}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/engineer/LcdOffTest;->finishSelf(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    iget-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mLcdPowerControl:Lcom/zte/engineer/LcdPowerControl;

    invoke-virtual {v0}, Lcom/zte/engineer/LcdPowerControl;->LcdPowerOff()I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "LcdOffTest"

    const-string v1, "LcdPowerOff fail"

    invoke-static {v0, v1}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/engineer/LcdOffTest;->finishSelf(Z)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/LcdOffTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
