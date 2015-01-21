.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
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
    .line 777
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, networkInfoArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v3, 0x0

    .line 782
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v2, "notifying message loop of query completion."

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 786
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkSelectionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 793
    return-void

    .line 789
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkSelectionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method
