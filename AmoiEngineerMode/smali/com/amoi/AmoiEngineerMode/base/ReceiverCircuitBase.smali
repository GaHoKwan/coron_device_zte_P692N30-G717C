.class public abstract Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;
.super Landroid/app/Activity;
.source "ReceiverCircuitBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;
    }
.end annotation


# static fields
.field protected static final MSG_START_TEST:I = 0x3

.field protected static final MSG_UPDATE_TEXT_HEADSETIN:I = 0x2

.field protected static final MSG_UPDATE_TEXT_TESTING:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1


# instance fields
.field protected audioManager:Landroid/media/AudioManager;

.field protected handler:Landroid/os/Handler;

.field protected isTesting:Z

.field protected mTestThread:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;

.field protected originalVolume:I

.field protected startButton:Landroid/widget/Button;

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    .line 35
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;-><init>(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->mTestThread:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startTest()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->setContentView(I)V

    .line 131
    const v0, 0x7f0600d1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->setTitle(I)V

    .line 132
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->textView:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method private startTest()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f0600d3

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->initAudio()V

    .line 112
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->mTestThread:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;->start()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected initAudio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->originalVolume:I

    .line 90
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 97
    return-void
.end method

.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->handler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startTest()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x7f070034
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "EngineerMode"

    const-string v1, "HeadsetBase onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    .line 42
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->initView()V

    .line 43
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->initButton()V

    .line 44
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->initHandler()V

    .line 46
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->startTest()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    const-string v0, "EngineerMode"

    const-string v1, "HeadsetBase onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->stopTest()V

    .line 126
    return-void
.end method

.method protected stopTest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v3, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->originalVolume:I

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 82
    return-void
.end method
