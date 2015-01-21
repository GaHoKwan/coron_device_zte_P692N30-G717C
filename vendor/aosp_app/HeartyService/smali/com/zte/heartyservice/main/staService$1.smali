.class Lcom/zte/heartyservice/main/staService$1;
.super Landroid/os/Handler;
.source "staService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/staService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/staService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService$1;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 84
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService$1;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/staService;->main()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService$1;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->d()V
    invoke-static {v1}, Lcom/zte/heartyservice/main/staService;->access$000(Lcom/zte/heartyservice/main/staService;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService$1;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/main/staAdapter;->j(J)V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService$1;->this$0:Lcom/zte/heartyservice/main/staService;

    #getter for: Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/staService;->access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/staAdapter;->g()V

    .line 98
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
