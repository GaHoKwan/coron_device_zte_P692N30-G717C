.class public Lcom/zte/engineer/KeyTest;
.super Lcom/zte/engineer/ZteActivity;
.source "KeyTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/KeyTest$keyTestManager;,
        Lcom/zte/engineer/KeyTest$keyAndTextId;
    }
.end annotation


# static fields
.field public static final NaviKeyTest_ACTION:Ljava/lang/String; = "com.zte.engineer.NaviKeyTest"

.field private static final TAG:Ljava/lang/String; = "KeyTest"

.field private static final TIMER_EVENT_TICK:I = 0x1


# instance fields
.field keyAndTextIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/engineer/KeyTest$keyAndTextId;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mVibFreq:[J

.field private mVibrator:Landroid/os/Vibrator;

.field manager:Lcom/zte/engineer/KeyTest$keyTestManager;

.field navikey:Z

.field private querty:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/zte/engineer/KeyTest;->querty:Z

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/KeyTest;->mVibFreq:[J

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    .line 37
    iput-boolean v1, p0, Lcom/zte/engineer/KeyTest;->navikey:Z

    .line 84
    new-instance v0, Lcom/zte/engineer/KeyTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/KeyTest$1;-><init>(Lcom/zte/engineer/KeyTest;)V

    iput-object v0, p0, Lcom/zte/engineer/KeyTest;->mHandler:Landroid/os/Handler;

    .line 336
    new-instance v0, Lcom/zte/engineer/KeyTest$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/KeyTest$2;-><init>(Lcom/zte/engineer/KeyTest;)V

    iput-object v0, p0, Lcom/zte/engineer/KeyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 32
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/engineer/KeyTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/engineer/KeyTest;->changeVibratorLedStatus()V

    return-void
.end method

.method private addItem(II)V
    .locals 2
    .parameter "keyCode"
    .parameter "textId"

    .prologue
    .line 214
    new-instance v0, Lcom/zte/engineer/KeyTest$keyAndTextId;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/engineer/KeyTest$keyAndTextId;-><init>(Lcom/zte/engineer/KeyTest;II)V

    .line 215
    .local v0, k:Lcom/zte/engineer/KeyTest$keyAndTextId;
    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private changeVibratorLedStatus()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 81
    return-void
.end method

.method private getTextId(I)I
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v2, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, size:I
    if-nez v1, :cond_0

    move v2, v3

    .line 236
    :goto_0
    return v2

    .line 227
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 229
    iget-object v2, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/engineer/KeyTest$keyAndTextId;

    iget v2, v2, Lcom/zte/engineer/KeyTest$keyAndTextId;->keyCode:I

    if-ne v2, p1, :cond_1

    .line 231
    const-string v2, "KeyTest"

    const-string v3, "find keyCode in Array"

    invoke-static {v2, v3}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/engineer/KeyTest$keyAndTextId;

    iget v2, v2, Lcom/zte/engineer/KeyTest$keyAndTextId;->textId:I

    goto :goto_0

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 236
    goto :goto_0
.end method

.method private init(Z)V
    .locals 3
    .parameter "querty"

    .prologue
    const v2, 0x7f080031

    const v1, 0x7f080030

    const v0, 0x7f03000b

    .line 161
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 165
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/engineer/KeyTest;->initKeyAndText(Z)V

    .line 178
    new-instance v0, Lcom/zte/engineer/KeyTest$keyTestManager;

    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/zte/engineer/KeyTest$keyTestManager;-><init>(Lcom/zte/engineer/KeyTest;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/zte/engineer/KeyTest;->manager:Lcom/zte/engineer/KeyTest$keyTestManager;

    .line 181
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 171
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initKeyAndText(Z)V
    .locals 0
    .parameter "querty"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/zte/engineer/KeyTest;->initKeyAndTextIdArrayQwerty()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/zte/engineer/KeyTest;->initKeyAndTextIdArray()V

    goto :goto_0
.end method

.method private initKeyAndTextIdArray()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->keyAndTextIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    const/16 v0, 0x18

    const v1, 0x7f08002b

    invoke-direct {p0, v0, v1}, Lcom/zte/engineer/KeyTest;->addItem(II)V

    .line 200
    const/16 v0, 0x19

    const v1, 0x7f08002c

    invoke-direct {p0, v0, v1}, Lcom/zte/engineer/KeyTest;->addItem(II)V

    .line 201
    const/16 v0, 0x52

    const v1, 0x7f08002d

    invoke-direct {p0, v0, v1}, Lcom/zte/engineer/KeyTest;->addItem(II)V

    .line 202
    const/4 v0, 0x3

    const v1, 0x7f08002e

    invoke-direct {p0, v0, v1}, Lcom/zte/engineer/KeyTest;->addItem(II)V

    .line 203
    const/4 v0, 0x4

    const v1, 0x7f08002f

    invoke-direct {p0, v0, v1}, Lcom/zte/engineer/KeyTest;->addItem(II)V

    .line 205
    return-void
.end method

.method private initKeyAndTextIdArrayQwerty()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method private performanceKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/zte/engineer/KeyTest;->getTextId(I)I

    move-result v1

    .line 243
    .local v1, textId:I
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    .local v0, t:Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .end local v0           #t:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/zte/engineer/KeyTest;->manager:Lcom/zte/engineer/KeyTest$keyTestManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/engineer/KeyTest$keyTestManager;->remove(I)V

    .line 250
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/zte/engineer/KeyTest;->manager:Lcom/zte/engineer/KeyTest$keyTestManager;

    invoke-virtual {v3}, Lcom/zte/engineer/KeyTest$keyTestManager;->getRemainnings()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/zte/engineer/KeyTest;->navikey:Z

    if-eqz v2, :cond_1

    .line 252
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 254
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 147
    const-string v0, "KeyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/zte/engineer/KeyTest;->performanceKeyEvent(Landroid/view/KeyEvent;)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 157
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    invoke-virtual {p0, v2}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 334
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 328
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x7f080030
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x8000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 105
    iget-boolean v1, p0, Lcom/zte/engineer/KeyTest;->querty:Z

    invoke-direct {p0, v1}, Lcom/zte/engineer/KeyTest;->init(Z)V

    .line 106
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.engineer.NaviKeyTest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "KeyTest"

    const-string v2, "fanlinqing Receiver not registered"

    invoke-static {v1, v2}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/zte/engineer/KeyTest;->mVibFreq:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 122
    iget-object v0, p0, Lcom/zte/engineer/KeyTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method
