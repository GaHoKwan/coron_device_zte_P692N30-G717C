.class Lcom/mediatek/engineermode/BatteryLog$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/BatteryLog;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/BatteryLog;->access$900(Lcom/mediatek/engineermode/BatteryLog;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/BatteryLog;->access$902(Lcom/mediatek/engineermode/BatteryLog;Z)Z

    .line 212
    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    iget-object v2, v2, Lcom/mediatek/engineermode/BatteryLog;->mLogHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/BatteryLog;->access$1000(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/engineermode/BatteryLog$3;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "SD card error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    const-string v2, "SD card has been removed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
