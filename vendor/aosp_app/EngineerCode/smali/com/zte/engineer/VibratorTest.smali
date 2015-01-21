.class public Lcom/zte/engineer/VibratorTest;
.super Lcom/zte/engineer/ZteActivity;
.source "VibratorTest.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "VibrateTest"

.field private static final NOTIFY_LED:I = 0x1010

.field private static final TIMER_EVENT_TICK:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLed:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field mVibFreq:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/VibratorTest;->mVibFreq:[J

    .line 57
    new-instance v0, Lcom/zte/engineer/VibratorTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/VibratorTest$1;-><init>(Lcom/zte/engineer/VibratorTest;)V

    iput-object v0, p0, Lcom/zte/engineer/VibratorTest;->mHandler:Landroid/os/Handler;

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/engineer/VibratorTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/engineer/VibratorTest;->changeVibratorLedStatus()V

    return-void
.end method

.method private changeVibratorLedStatus()V
    .locals 4

    .prologue
    const/16 v3, 0x1010

    const/high16 v2, -0x1

    const v1, -0xff0100

    .line 39
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 41
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-ne v2, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 53
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/VibratorTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 54
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-ne v1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    goto :goto_0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 124
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-virtual {p0, v1}, Lcom/zte/engineer/VibratorTest;->finishSelf(I)V

    .line 145
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/VibratorTest;->finishSelf(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/VibratorTest;->finishSelf(I)V

    goto :goto_0

    .line 134
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
    .line 72
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 75
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, mTextView:Landroid/widget/TextView;
    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/engineer/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    .line 85
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    .line 86
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    .line 88
    iget-object v1, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 90
    iget-object v1, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    const/high16 v2, -0x1

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 101
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mLed:Landroid/app/NotificationManager;

    const/16 v1, 0x1010

    iget-object v2, p0, Lcom/zte/engineer/VibratorTest;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/VibratorTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 113
    iget-object v0, p0, Lcom/zte/engineer/VibratorTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method
