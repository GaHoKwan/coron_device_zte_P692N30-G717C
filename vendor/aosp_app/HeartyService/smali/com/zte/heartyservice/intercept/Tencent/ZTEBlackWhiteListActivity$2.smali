.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;
.super Landroid/os/Handler;
.source "ZTEBlackWhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 117
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-void

    .line 120
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, groupIds:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;

    invoke-direct {v4, p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    .local v2, thread1:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 131
    .end local v0           #groupIds:Ljava/lang/String;
    .end local v2           #thread1:Ljava/lang/Thread;
    :pswitch_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 140
    .end local v1           #thread:Ljava/lang/Thread;
    :pswitch_3
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 141
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 144
    :pswitch_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    .local v3, threaddb:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
