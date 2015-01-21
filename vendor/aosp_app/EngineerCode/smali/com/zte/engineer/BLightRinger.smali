.class public Lcom/zte/engineer/BLightRinger;
.super Lcom/zte/engineer/ZteActivity;
.source "BLightRinger.java"


# static fields
.field private static final BACKLIGHT_TIMER_EVENT_TICK:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "BLightTest"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static mCurrentBrightness:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaP:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    .line 73
    new-instance v0, Lcom/zte/engineer/BLightRinger$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BLightRinger$1;-><init>(Lcom/zte/engineer/BLightRinger;)V

    iput-object v0, p0, Lcom/zte/engineer/BLightRinger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/BLightRinger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/engineer/BLightRinger;->changeBrightness()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/engineer/BLightRinger;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private changeBrightness()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x1e

    .line 60
    sget v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    if-ne v1, v0, :cond_1

    .line 62
    sput v2, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    .line 69
    :cond_0
    :goto_0
    sget v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    invoke-direct {p0, v0}, Lcom/zte/engineer/BLightRinger;->setBrightness(I)V

    .line 70
    return-void

    .line 64
    :cond_1
    sget v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    if-ne v2, v0, :cond_0

    .line 66
    sput v1, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    goto :goto_0
.end method

.method private set2SystemBrightness()V
    .locals 4

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, systemBrightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    invoke-direct {p0, v1}, Lcom/zte/engineer/BLightRinger;->setBrightness(I)V

    .line 190
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 187
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 89
    sget-boolean v1, Lcom/zte/engineer/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    goto :goto_0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    invoke-direct {p0}, Lcom/zte/engineer/BLightRinger;->set2SystemBrightness()V

    .line 196
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 197
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BLightRinger;->finishSelf(I)V

    .line 218
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BLightRinger;->finishSelf(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/BLightRinger;->finishSelf(I)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 104
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 107
    const v2, 0x7f080065

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, mTextView:Landroid/widget/TextView;
    const v2, 0x7f06000a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const v2, 0x7f080066

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, mTextView1:Landroid/widget/TextView;
    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    .line 114
    iget-object v2, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/zte/engineer/BLightRinger$2;

    invoke-direct {v3, p0}, Lcom/zte/engineer/BLightRinger$2;-><init>(Lcom/zte/engineer/BLightRinger;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 124
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 164
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mMediaP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 166
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    invoke-direct {p0}, Lcom/zte/engineer/BLightRinger;->set2SystemBrightness()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    const/16 v0, 0xff

    sput v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    .line 134
    sget v0, Lcom/zte/engineer/BLightRinger;->mCurrentBrightness:I

    invoke-direct {p0, v0}, Lcom/zte/engineer/BLightRinger;->setBrightness(I)V

    .line 137
    iget-object v0, p0, Lcom/zte/engineer/BLightRinger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    new-instance v0, Lcom/zte/engineer/BLightRinger$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BLightRinger$3;-><init>(Lcom/zte/engineer/BLightRinger;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method
