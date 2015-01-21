.class Lcom/mediatek/mtklogger/framework/MultiModemLog$3;
.super Ljava/lang/Object;
.source "MultiModemLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 797
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iput p2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->val$instanceIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 800
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Press cancel in memory dump done dialog"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/16 v1, 0x34

    iget v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->val$instanceIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 805
    :cond_0
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "After cancel, no need to show reset dialog next time"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "md_assert_file_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 807
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z
    invoke-static {v0, v3}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 808
    return-void
.end method
