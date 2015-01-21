.class public abstract Lcom/mediatek/activity/CancelableActivity;
.super Landroid/app/Activity;
.source "CancelableActivity.java"


# static fields
.field public static final ACTION_CANCEL_ACTIVITY:Ljava/lang/String; = "com.mediatek.activity.CancelableActivity.action.CANCEL_ACTIVITY"

.field public static final EXTRA_CANCEL_ID:Ljava/lang/String; = "com.mediatek.activity.CancelableActivity.extra.ID"

.field public static final NULL_CANCEL_ID:I = -0x9a9c3


# instance fields
.field private cancelReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lcom/mediatek/activity/CancelableActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/activity/CancelableActivity$1;-><init>(Lcom/mediatek/activity/CancelableActivity;)V

    iput-object v0, p0, Lcom/mediatek/activity/CancelableActivity;->cancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static sendCancelActivityIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 112
    const-string v1, "CancelableActivity.sendCancelActivityIntent()"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.activity.CancelableActivity.action.CANCEL_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.activity.CancelableActivity.extra.ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected abstract onActivityCancel(I)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "CancelableActivity.onCreate() - registering BroadReceiver..."

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/activity/CancelableActivity;->cancelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.activity.CancelableActivity.action.CANCEL_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/mediatek/activity/CancelableActivity;->cancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method
