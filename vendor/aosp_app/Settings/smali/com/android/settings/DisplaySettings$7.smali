.class Lcom/android/settings/DisplaySettings$7;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$7;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 1006
    const-string v0, "DisplaySettings"

    const-string v1, "mUpdateClearMotionStatusReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$7;->this$0:Lcom/android/settings/DisplaySettings;

    #calls: Lcom/android/settings/DisplaySettings;->updateClearMotionStatus()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1000(Lcom/android/settings/DisplaySettings;)V

    .line 1008
    return-void
.end method