.class public abstract Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;
.super Landroid/app/Activity;
.source "HeadsetBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;,
        Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static final MSG_UPDATE_TEXT_HEADSETIN:I = 0x2

.field protected static final MSG_UPDATE_TEXT_TESTING:I = 0x1


# instance fields
.field protected audioManager:Landroid/media/AudioManager;

.field protected handler:Landroid/os/Handler;

.field protected isTesting:Z

.field protected mTestThread:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;

.field protected receiver:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;

.field protected startButton:Landroid/widget/Button;

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->isTesting:Z

    .line 42
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;-><init>(Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->mTestThread:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;

    .line 146
    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->handler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method protected initHeadset()V
    .locals 2

    .prologue
    .line 86
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->audioManager:Landroid/media/AudioManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;-><init>(Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;)V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->receiver:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;

    .line 90
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->receiver:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->startTest()V

    .line 92
    return-void
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->setContentView(I)V

    .line 56
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->setTitle(I)V

    .line 57
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->textView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->startButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->startButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->startTest()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f07005f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "EngineerMode"

    const-string v1, "HeadsetBase onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->initView()V

    .line 49
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->initButton()V

    .line 50
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->initHandler()V

    .line 51
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->initHeadset()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    const-string v0, "EngineerMode"

    const-string v1, "HeadsetBase onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->receiver:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$MediaButtonBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->stopTest()V

    .line 132
    return-void
.end method

.method protected startTest()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->isTesting:Z

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->mTestThread:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$HeadsetTestThread;->start()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected stopTest()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->isTesting:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->isTesting:Z

    .line 125
    :cond_0
    return-void
.end method
