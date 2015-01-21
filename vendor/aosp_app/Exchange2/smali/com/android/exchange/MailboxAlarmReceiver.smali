.class public Lcom/android/exchange/MailboxAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailboxAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    const-string v2, ">>>>> MailboxAlarmReceiver onReceive"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 33
    const-string v2, "mailbox"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 34
    .local v0, mailboxId:J
    const-string v2, "needNotifyEasSyncService"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "MailboxAlarmReceiverwill notify the EasService"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V

    .line 37
    const-string v2, "<<<<< MailboxAlarmReceiver onReceive"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 41
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 42
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    :goto_1
    const-string v2, "<<<<< MailboxAlarmReceiver onReceive"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V

    goto :goto_1
.end method
