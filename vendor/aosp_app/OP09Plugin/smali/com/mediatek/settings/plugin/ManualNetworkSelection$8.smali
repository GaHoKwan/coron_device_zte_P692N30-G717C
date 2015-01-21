.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;
.super Landroid/os/Handler;
.source "ManualNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 800
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 802
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED: mTargetSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->gsmNetworksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/util/List;I)V

    goto :goto_0

    .line 811
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED_2: mTargetSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->gsmNetworksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/util/List;I)V

    goto :goto_0

    .line 822
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 826
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 827
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v2, "Manual network selection failed!"

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2500(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v2, "Manual network selection succeeded!"

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    goto/16 :goto_0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
