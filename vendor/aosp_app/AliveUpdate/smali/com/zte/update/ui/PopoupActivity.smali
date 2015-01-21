.class public Lcom/zte/update/ui/PopoupActivity;
.super Landroid/app/Activity;
.source "PopoupActivity.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;


# static fields
.field public static final DO_SURE_TASK:Ljava/lang/String; = "do_sure_task"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODE_ABOUT:I = 0x3

.field public static final MODE_CHECK:I = 0x0

.field public static final MODE_CLOSE:I = 0xa

.field public static final MODE_DATA_NETWORK_ALERT:I = 0x2

.field public static final MODE_MESSAGE:I = 0x4

.field public static final MODE_NETWORK_ALERT:I = 0x1

.field public static final MODE_SINGLE_CHECK:I = 0x5

.field private static observerMgr:Lcom/zte/update/app/ui/ObserverManager;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    sput-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/update/ui/PopoupActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->displayMessage()V

    return-void
.end method

.method private displayAbout()V
    .locals 6

    .prologue
    .line 118
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/zte/update/ui/PopoupActivity;->setContentView(I)V

    .line 120
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 121
    .local v0, app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    const v5, 0x7f0a0003

    invoke-virtual {p0, v5}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, currentVersion:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v1, buffer:Ljava/lang/StringBuffer;
    const v5, 0x7f060055

    invoke-virtual {v0, v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v5, 0x7f0a0002

    invoke-virtual {p0, v5}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 129
    .local v2, checkButton:Landroid/widget/Button;
    new-instance v4, Lcom/zte/update/ui/PopoupActivity$1;

    invoke-direct {v4, p0}, Lcom/zte/update/ui/PopoupActivity$1;-><init>(Lcom/zte/update/ui/PopoupActivity;)V

    .line 138
    .local v4, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private displayDataNetworkAlert()V
    .locals 3

    .prologue
    .line 144
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/zte/update/ui/PopoupActivity;->setContentView(I)V

    .line 148
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->initCancelAndWifiButton()V

    .line 150
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 151
    .local v1, sure:Landroid/widget/Button;
    new-instance v0, Lcom/zte/update/ui/PopoupActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/PopoupActivity$2;-><init>(Lcom/zte/update/ui/PopoupActivity;)V

    .line 168
    .local v0, l3:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private displayMessage()V
    .locals 2

    .prologue
    .line 110
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/PopoupActivity;->setContentView(I)V

    .line 112
    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, message:Landroid/widget/TextView;
    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 63
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, mode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->handleCheckMode()V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->displayNetworkAlert()V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->displayDataNetworkAlert()V

    goto :goto_0

    .line 79
    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->handleSingleCheck()V

    goto :goto_0

    .line 83
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->displayAbout()V

    goto :goto_0

    .line 87
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->displayMessage()V

    goto :goto_0

    .line 91
    :pswitch_7
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private initCancelAndWifiButton()V
    .locals 5

    .prologue
    .line 172
    const v4, 0x7f0a004b

    invoke-virtual {p0, v4}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, cancel:Landroid/widget/Button;
    new-instance v1, Lcom/zte/update/ui/PopoupActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/PopoupActivity$3;-><init>(Lcom/zte/update/ui/PopoupActivity;)V

    .line 182
    .local v1, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v4, 0x7f0a004d

    invoke-virtual {p0, v4}, Lcom/zte/update/ui/PopoupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 186
    .local v3, setWifi:Landroid/widget/Button;
    new-instance v2, Lcom/zte/update/ui/PopoupActivity$4;

    invoke-direct {v2, p0}, Lcom/zte/update/ui/PopoupActivity$4;-><init>(Lcom/zte/update/ui/PopoupActivity;)V

    .line 196
    .local v2, l2:Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method private onPopoupClose()V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->finish()V

    .line 272
    return-void
.end method


# virtual methods
.method public diplayMessageDelayed()V
    .locals 4

    .prologue
    .line 258
    new-instance v0, Lcom/zte/update/ui/PopoupActivity$5;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/PopoupActivity$5;-><init>(Lcom/zte/update/ui/PopoupActivity;)V

    .line 265
    .local v0, runner:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/zte/update/ui/PopoupActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method protected displayCheckPop()V
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/PopoupActivity;->setContentView(I)V

    .line 206
    return-void
.end method

.method protected displayNetworkAlert()V
    .locals 1

    .prologue
    .line 200
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/PopoupActivity;->setContentView(I)V

    .line 201
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->initCancelAndWifiButton()V

    .line 202
    return-void
.end method

.method protected handleCheckMode()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->displayCheckPop()V

    .line 105
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 106
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 107
    return-void
.end method

.method protected handleSingleCheck()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "handleSingleCheck"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->displayCheckPop()V

    .line 99
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 100
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 101
    return-void
.end method

.method protected handleSingleCheckResult([Ljava/lang/Object;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 244
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 245
    .local v0, mainKey:Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    .local v1, num:I
    if-lez v1, :cond_0

    .line 248
    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->startAppInfoActivity(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->finish()V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->diplayMessageDelayed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/zte/update/ui/PopoupActivity;->handleIntent(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/zte/update/ui/PopoupActivity;->handleIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 236
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 237
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 238
    sget-object v0, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 240
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    .local v0, key:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    sget-object v1, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 216
    sget-object v1, Lcom/zte/update/ui/PopoupActivity;->observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 217
    invoke-direct {p0}, Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/zte/update/ui/PopoupActivity;->handleSingleCheckResult([Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/update/ui/PopoupActivity;->diplayMessageDelayed()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
