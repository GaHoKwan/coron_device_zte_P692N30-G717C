.class public Lcom/android/mms/util/OMACPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OMACPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OmacpMessageReceiver"

.field private static sInstance:Lcom/android/mms/util/OMACPReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 0
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 96
    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/OMACPReceiver;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/mms/util/OMACPReceiver;->sInstance:Lcom/android/mms/util/OMACPReceiver;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/mms/util/OMACPReceiver;

    invoke-direct {v0}, Lcom/android/mms/util/OMACPReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/util/OMACPReceiver;->sInstance:Lcom/android/mms/util/OMACPReceiver;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/mms/util/OMACPReceiver;->sInstance:Lcom/android/mms/util/OMACPReceiver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    const-string v0, "OmacpMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OmacpMessageReceiver got intent is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/util/OMACPReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 83
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "privileged"

    .prologue
    .line 86
    const-class v0, Lcom/android/mms/util/OMACPReceiverService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method
