.class Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;
.super Landroid/os/Handler;
.source "SmsExplorerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/SmsExplorerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->cancel(Z)Z

    .line 152
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #setter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$502(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;)V

    #setter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$502(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
