.class Lcom/zte/retrieve/service/instruct/InstructionOperator$1;
.super Landroid/os/Handler;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$0(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Ljava/util/Queue;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$1(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    move-result-object v2

    if-nez v2, :cond_0

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    new-instance v3, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;-><init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    .line 194
    new-instance v1, Landroid/content/Intent;

    .line 195
    const-string v2, "com.zte.heartyservice.intent.action.startService.ZTEHelp"

    .line 194
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, intentZTEHelpService:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$3(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$1(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    move-result-object v3

    .line 197
    const/4 v4, 0x1

    .line 196
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v2, v6}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    .line 205
    .end local v1           #intentZTEHelpService:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v2, v6}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 202
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v3, v6}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    .line 203
    throw v2
.end method
