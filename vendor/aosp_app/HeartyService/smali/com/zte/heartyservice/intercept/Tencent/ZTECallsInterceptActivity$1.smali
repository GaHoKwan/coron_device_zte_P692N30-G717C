.class Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;
.super Landroid/os/Handler;
.source "ZTECallsInterceptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

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

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$002(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/lang/Thread;

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
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 98
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->notifyDataSetChanged()V

    .line 99
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->emptyRalativelayout:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->onResume()V

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
