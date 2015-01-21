.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;
.super Landroid/os/Handler;
.source "ContactSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 103
    .end local v0           #thread:Ljava/lang/Thread;
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->refreshListData()V

    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->noRecordView:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->noRecordView:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
