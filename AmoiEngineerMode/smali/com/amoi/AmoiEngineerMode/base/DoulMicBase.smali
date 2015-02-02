.class public abstract Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;
.super Landroid/app/Activity;
.source "DoulMicBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static AP_HEADSET_MIC_AFE_LOOPBACK:I = 0x0

.field protected static AP_MAIN_MIC_AFE_LOOPBACK:I = 0x0

.field protected static AP_REF_MIC_AFE_LOOPBACK:I = 0x0

.field protected static MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITHOUT_DMNR:I = 0x0

.field protected static final MSG_START_TEST:I = 0x1

.field protected static NO_LOOPBACK:I

.field protected static SET_LOOPBACK_TYPE:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mictype:I

.field private startButton:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "SET_LOOPBACK_TYPE"

    sput-object v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->SET_LOOPBACK_TYPE:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->NO_LOOPBACK:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->AP_MAIN_MIC_AFE_LOOPBACK:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->AP_HEADSET_MIC_AFE_LOOPBACK:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->AP_REF_MIC_AFE_LOOPBACK:I

    .line 28
    const/16 v0, 0x17

    sput v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITHOUT_DMNR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    sget v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->NO_LOOPBACK:I

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mictype:I

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->onStartTest()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->setTitle(I)V

    .line 68
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->textView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getMicType()I

    move-result v0

    sget v1, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITHOUT_DMNR:I

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f0600eb

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->startButton:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->startButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f0600ea

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onStartTest()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->SET_LOOPBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->NO_LOOPBACK:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->SET_LOOPBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mictype:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-virtual {p1, p0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getMicType()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITHOUT_DMNR:I

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0600e8

    return v0
.end method

.method protected abstract initButton()V
.end method

.method protected inithandler()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getMicType()I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mictype:I

    .line 84
    const-string v0, "EngineerMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mictype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getMicType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->startButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7f070034
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->initView()V

    .line 53
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->initButton()V

    .line 54
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->inithandler()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->SET_LOOPBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->NO_LOOPBACK:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->SET_LOOPBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->NO_LOOPBACK:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;->startButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
