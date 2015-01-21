.class Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;
.super Landroid/os/Handler;
.source "ZTESMSInterceptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$002(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 99
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->emptyRativelayout:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->onResume()V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
