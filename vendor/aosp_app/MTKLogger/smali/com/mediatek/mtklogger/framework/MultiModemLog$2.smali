.class Lcom/mediatek/mtklogger/framework/MultiModemLog$2;
.super Ljava/lang/Object;
.source "MultiModemLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;->showMemoryDumpDoneDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

.field final synthetic val$instanceIndex:I


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iput p2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->val$instanceIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 784
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Click OK in memory dump done dialog"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/16 v1, 0x34

    iget v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->val$instanceIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 786
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 789
    :cond_0
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "After confirm, no need to show reset dialog next time"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "md_assert_file_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 791
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z
    invoke-static {v0, v3}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 792
    return-void
.end method
