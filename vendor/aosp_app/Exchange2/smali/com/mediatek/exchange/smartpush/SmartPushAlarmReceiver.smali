.class public Lcom/mediatek/exchange/smartpush/SmartPushAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartPushAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    invoke-static {p1}, Lcom/mediatek/exchange/smartpush/SmartPushService;->alarmSmartPushService(Landroid/content/Context;)V

    .line 13
    return-void
.end method
