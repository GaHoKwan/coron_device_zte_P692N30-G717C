.class Lcom/mediatek/connectivity/CdsUtilityActivity$3;
.super Ljava/lang/Object;
.source "CdsUtilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsUtilityActivity;->handleRunCmd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    new-instance v3, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    iget-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$400(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;Landroid/os/Handler;)V

    #setter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    invoke-static {v2, v3}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$302(Lcom/mediatek/connectivity/CdsUtilityActivity;Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, cmdLineStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$300(Lcom/mediatek/connectivity/CdsUtilityActivity;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 306
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$300(Lcom/mediatek/connectivity/CdsUtilityActivity;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->setState(I)V

    .line 312
    .end local v0           #cmdLineStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$300(Lcom/mediatek/connectivity/CdsUtilityActivity;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->setState(I)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$3;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    invoke-static {v3}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$300(Lcom/mediatek/connectivity/CdsUtilityActivity;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->setState(I)V

    throw v2
.end method
