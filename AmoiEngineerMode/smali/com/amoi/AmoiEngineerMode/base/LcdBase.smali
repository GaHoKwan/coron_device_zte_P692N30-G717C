.class public abstract Lcom/amoi/AmoiEngineerMode/base/LcdBase;
.super Landroid/app/Activity;
.source "LcdBase.java"


# static fields
.field protected static final CHANGE_DELAYTIME:I = 0x320

.field protected static final COLORS:[I = null

.field protected static final MSG_CHANGE_COLOR:I = 0x1


# instance fields
.field protected currentColor:I

.field protected handler:Landroid/os/Handler;

.field protected layout:Landroid/widget/RelativeLayout;

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    return-void
.end method


# virtual methods
.method protected abstract changeColor()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->handler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x320

    .line 78
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timer:Ljava/util/Timer;

    .line 79
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$3;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase$3;-><init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timerTask:Ljava/util/TimerTask;

    .line 85
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 86
    return-void
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->requestWindowFeature(I)Z

    .line 48
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->setContentView(I)V

    .line 50
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->layout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/LcdBase$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initView()V

    .line 41
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initHandler()V

    .line 42
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initTimerAndTimerTask()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->stoptimerAndTimerTask()V

    .line 100
    return-void
.end method

.method protected stoptimerAndTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 91
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timer:Ljava/util/Timer;

    .line 93
    :cond_0
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->timerTask:Ljava/util/TimerTask;

    .line 94
    return-void
.end method
