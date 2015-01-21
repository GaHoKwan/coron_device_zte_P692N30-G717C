.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;
.super Landroid/os/Handler;
.source "ManualNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvoidSysHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvoidSysHandler receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1137
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1153
    :goto_0
    return-void

    .line 1139
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v2, "AvoidSysHandler update network searching state to false."

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateNetworkSearchingState(Z)V

    .line 1141
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v2, 0xc8

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2702(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 1143
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvoidSysHandler handleMessage msg.what = 201 mCdmaManuallyNetworkSelectState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2700(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
