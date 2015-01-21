.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;
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
    .line 1223
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataDetachHandler receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 1227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1236
    :goto_0
    return-void

    .line 1230
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->networkQuery()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    .line 1231
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1002(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)Z

    goto :goto_0

    .line 1227
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
