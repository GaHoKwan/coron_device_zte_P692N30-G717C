.class Lcom/zte/heartyservice/power/NewStaticsFragment$1;
.super Landroid/os/Handler;
.source "NewStaticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #calls: Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshSoftWareStats()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$100(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    .line 297
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    new-instance v1, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    #setter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$302(Lcom/zte/heartyservice/power/NewStaticsFragment;Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;)Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    .line 298
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->mStaticsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$400(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$300(Lcom/zte/heartyservice/power/NewStaticsFragment;)Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #getter for: Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;->this$0:Lcom/zte/heartyservice/power/NewStaticsFragment;

    #calls: Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshHardWareStats()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->access$200(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
