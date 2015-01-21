.class public Lcom/zte/engineer/BacklightTest;
.super Lcom/zte/engineer/ZteActivity;
.source "BacklightTest.java"


# static fields
.field private static final BACKLIGHT_TIMER_EVENT_TICK:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "BacklightTest"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final NOTIFY_LED:I = 0x1010

.field private static mCurrentBrightness:I

.field static mcontext:Landroid/content/Context;


# instance fields
.field private bOn:Z

.field private mHandler:Landroid/os/Handler;

.field mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLed:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private power:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/BacklightTest;->bOn:Z

    .line 52
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BacklightTest;->power:Landroid/os/IPowerManager;

    .line 98
    new-instance v0, Lcom/zte/engineer/BacklightTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BacklightTest$1;-><init>(Lcom/zte/engineer/BacklightTest;)V

    iput-object v0, p0, Lcom/zte/engineer/BacklightTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private KeyLightOnOff()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 128
    iget-boolean v0, p0, Lcom/zte/engineer/BacklightTest;->bOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/engineer/BacklightTest;->bOn:Z

    .line 129
    iget-boolean v0, p0, Lcom/zte/engineer/BacklightTest;->bOn:Z

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 132
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 139
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 137
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/zte/engineer/BacklightTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/BacklightTest;->changeBrightness()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/engineer/BacklightTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/BacklightTest;->KeyLightOnOff()V

    return-void
.end method

.method private changeBrightness()V
    .locals 6

    .prologue
    const/16 v5, 0x1010

    const/16 v4, 0xff

    const/16 v3, 0x1e

    const/high16 v2, -0x1

    const v1, -0xff0100

    .line 72
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-ne v2, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    sget v0, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    if-ne v3, v0, :cond_3

    .line 87
    sput v4, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    .line 94
    :cond_1
    :goto_1
    sget v0, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    invoke-direct {p0, v0}, Lcom/zte/engineer/BacklightTest;->setBrightness(I)V

    .line 95
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-ne v1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    goto :goto_0

    .line 89
    :cond_3
    sget v0, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    if-ne v4, v0, :cond_1

    .line 91
    sput v3, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    goto :goto_1
.end method

.method private set2SystemBrightness()V
    .locals 4

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, systemBrightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    :goto_0
    invoke-direct {p0, v1}, Lcom/zte/engineer/BacklightTest;->setBrightness(I)V

    .line 229
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 115
    sget-boolean v1, Lcom/zte/engineer/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 121
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    goto :goto_0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    invoke-direct {p0}, Lcom/zte/engineer/BacklightTest;->set2SystemBrightness()V

    .line 236
    iget-object v0, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 237
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 238
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BacklightTest;->finishSelf(I)V

    .line 263
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BacklightTest;->finishSelf(I)V

    goto :goto_0

    .line 254
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/BacklightTest;->finishSelf(I)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 155
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, mTextView:Landroid/widget/TextView;
    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    .line 167
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    .line 169
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 171
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    const/high16 v2, -0x1

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 173
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/zte/engineer/BacklightTest;->mcontext:Landroid/content/Context;

    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    const-string v1, "sys.emode.backlight"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HOME_KEY_TEST"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :try_start_0
    sget-object v1, Lcom/zte/engineer/BacklightTest;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HOME_KEY_TEST"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, b:I
    const-string v1, "BacklightTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fanlinqing Pause HOME_KEY_TEST = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0           #b:I
    :goto_0
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    invoke-direct {p0}, Lcom/zte/engineer/BacklightTest;->set2SystemBrightness()V

    .line 216
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    const/16 v2, 0x1010

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 217
    return-void

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    const-string v1, "sys.emode.Backlight"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HOME_KEY_TEST"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    :try_start_0
    sget-object v1, Lcom/zte/engineer/BacklightTest;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HOME_KEY_TEST"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, b:I
    const-string v1, "BacklightTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fanlinqing Pause HOME_KEY_TEST = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0           #b:I
    :goto_0
    const/16 v1, 0xff

    sput v1, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    .line 192
    sget v1, Lcom/zte/engineer/BacklightTest;->mCurrentBrightness:I

    invoke-direct {p0, v1}, Lcom/zte/engineer/BacklightTest;->setBrightness(I)V

    .line 195
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    iget-object v1, p0, Lcom/zte/engineer/BacklightTest;->mLed:Landroid/app/NotificationManager;

    const/16 v2, 0x1010

    iget-object v3, p0, Lcom/zte/engineer/BacklightTest;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 197
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method
