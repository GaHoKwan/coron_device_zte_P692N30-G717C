.class Lcom/zte/engineer/BatteryLog$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BatteryLog;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/zte/engineer/BatteryLog$3;->this$0:Lcom/zte/engineer/BatteryLog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
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

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/zte/engineer/BatteryLog$3;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mIsRecording:Z
    invoke-static {v2}, Lcom/zte/engineer/BatteryLog;->access$900(Lcom/zte/engineer/BatteryLog;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/zte/engineer/BatteryLog$3;->this$0:Lcom/zte/engineer/BatteryLog;

    const/4 v3, 0x0

    #setter for: Lcom/zte/engineer/BatteryLog;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/zte/engineer/BatteryLog;->access$902(Lcom/zte/engineer/BatteryLog;Z)Z

    .line 229
    iget-object v2, p0, Lcom/zte/engineer/BatteryLog$3;->this$0:Lcom/zte/engineer/BatteryLog;

    iget-object v2, v2, Lcom/zte/engineer/BatteryLog;->mLogHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/engineer/BatteryLog$3;->this$0:Lcom/zte/engineer/BatteryLog;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "SD card error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    const-string v2, "SD card has been removed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 234
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
