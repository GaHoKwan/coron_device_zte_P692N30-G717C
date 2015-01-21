.class public Lcom/android/exchange/service/ExchangeBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "ExchangeBroadcastProcessorService.java"


# static fields
.field private static final ACTION_BROADCAST:Ljava/lang/String; = "broadcast_receiver"


# instance fields
.field private mPref:Lcom/android/exchange/ExchangePreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->mPref:Lcom/android/exchange/ExchangePreferences;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 51
    return-void
.end method

.method private getExchangePreferences()Lcom/android/exchange/ExchangePreferences;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->mPref:Lcom/android/exchange/ExchangePreferences;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->mPref:Lcom/android/exchange/ExchangePreferences;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->mPref:Lcom/android/exchange/ExchangePreferences;

    return-object v0
.end method

.method private onBootCompleted()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->startExchangeService()V

    .line 112
    return-void
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "broadcastIntent"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method private startExchangeService()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    return-void
.end method

.method private stopExchangeService()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 105
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v3, "broadcast_receiver"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 76
    .local v2, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, broadcastAction:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->onBootCompleted()V

    .line 97
    .end local v1           #broadcastAction:Ljava/lang/String;
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v1       #broadcastAction:Ljava/lang/String;
    .restart local v2       #broadcastIntent:Landroid/content/Intent;
    :cond_1
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_2

    .line 82
    const-string v3, "Email"

    const-string v4, "Login accounts changed; reconciling..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    const-string v3, "Receive STORAGE_LOW broadcast , and ExchangeService will stop work"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->getExchangePreferences()Lcom/android/exchange/ExchangePreferences;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/exchange/ExchangePreferences;->setLowStorage(Z)V

    .line 89
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->stopExchangeService()V

    goto :goto_0

    .line 90
    :cond_4
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "Receive STORAGE_OK broadcast , and ExchangeService will start work"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->getExchangePreferences()Lcom/android/exchange/ExchangePreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/exchange/ExchangePreferences;->setLowStorage(Z)V

    .line 94
    invoke-direct {p0}, Lcom/android/exchange/service/ExchangeBroadcastProcessorService;->startExchangeService()V

    goto :goto_0
.end method
