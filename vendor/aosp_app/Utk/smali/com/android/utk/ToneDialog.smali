.class public Lcom/android/utk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# static fields
.field private static final MSG_ID_STOP_TONE:I = 0xda


# instance fields
.field mIsResponseSent:Z

.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/utk/TonePlayer;

.field settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

.field toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/utk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 39
    iput-object v1, p0, Lcom/android/utk/ToneDialog;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 40
    iput-object v1, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utk/ToneDialog;->mIsResponseSent:Z

    .line 43
    iput-object v1, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 47
    new-instance v0, Lcom/android/utk/ToneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/utk/ToneDialog$1;-><init>(Lcom/android/utk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/utk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utk/ToneDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/utk/ToneDialog;->sendResponse(I)V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 136
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, p0, Lcom/android/utk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 137
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iput-object v0, p0, Lcom/android/utk/ToneDialog;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 138
    return-void
.end method

.method private sendResponse(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/utk/UtkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utk/ToneDialog;->mIsResponseSent:Z

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/utk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 73
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, title:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 78
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 84
    const v4, 0x1080371

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    new-instance v4, Lcom/android/utk/TonePlayer;

    invoke-direct {v4}, Lcom/android/utk/TonePlayer;-><init>()V

    iput-object v4, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    .line 91
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    iget-object v5, p0, Lcom/android/utk/ToneDialog;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/ToneSettings;->tone:Lcom/android/internal/telephony/cdma/utk/Tone;

    invoke-virtual {v4, v5}, Lcom/android/utk/TonePlayer;->play(Lcom/android/internal/telephony/cdma/utk/Tone;)V

    .line 92
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/ToneSettings;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    invoke-static {v4}, Lcom/android/utk/UtkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cdma/utk/Duration;)I

    move-result v1

    .line 93
    .local v1, timeout:I
    if-nez v1, :cond_0

    .line 94
    const/16 v1, 0x7d0

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_1

    .line 98
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v5, 0xda

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/utk/ToneSettings;->vibrate:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 105
    :cond_2
    return-void

    .line 86
    .end local v1           #timeout:I
    :cond_3
    iget-object v4, p0, Lcom/android/utk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    iget-boolean v0, p0, Lcom/android/utk/ToneDialog;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/utk/TonePlayer;->stop()V

    .line 114
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/utk/TonePlayer;->release()V

    .line 115
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 118
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 124
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/utk/ToneDialog;->sendResponse(I)V

    .line 125
    iget-object v0, p0, Lcom/android/utk/ToneDialog;->player:Lcom/android/utk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/utk/TonePlayer;->stop()V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
