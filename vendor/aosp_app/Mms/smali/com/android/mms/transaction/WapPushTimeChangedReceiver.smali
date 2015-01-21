.class public Lcom/android/mms/transaction/WapPushTimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WapPushTimeChangedReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Mms/WapPush"

.field private static sInstance:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/transaction/WapPushTimeChangedReceiver;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;->sInstance:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;->sInstance:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;->sInstance:Lcom/android/mms/transaction/WapPushTimeChangedReceiver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/WapPushTimeChangedReceiver;->onReceiveTimeChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method protected onReceiveTimeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    const-string v1, "Mms/WapPush"

    const-string v2, "onReceiveTimeChange"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/transaction/WapPushTimeChangedReceiver$1;-><init>(Lcom/android/mms/transaction/WapPushTimeChangedReceiver;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    :cond_1
    return-void
.end method
