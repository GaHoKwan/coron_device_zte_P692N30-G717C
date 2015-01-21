.class Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
.super Ljava/lang/Object;
.source "InstructionOperator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZTEHelpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;-><init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-static {p2}, Lcom/zte/heartyservice/main/IZTEHelpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/main/IZTEHelpService;

    move-result-object v4

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$4(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/heartyservice/main/IZTEHelpService;)V

    .line 154
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 156
    .local v2, what:Ljava/lang/Integer;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mQueue:Ljava/util/Queue;
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$0(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$3(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$1(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v3, v5}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    .line 176
    :goto_1
    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$5(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/heartyservice/main/IZTEHelpService;

    move-result-object v3

    invoke-interface {v3}, Lcom/zte/heartyservice/main/IZTEHelpService;->help_1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v3, v5}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    goto :goto_1

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #getter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$5(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/heartyservice/main/IZTEHelpService;

    move-result-object v3

    invoke-interface {v3}, Lcom/zte/heartyservice/main/IZTEHelpService;->help_2()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v3

    .line 174
    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    invoke-static {v4, v5}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V

    .line 175
    throw v3

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;->this$0:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v1, 0x0

    #setter for: Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;
    invoke-static {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->access$4(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/heartyservice/main/IZTEHelpService;)V

    .line 181
    return-void
.end method
