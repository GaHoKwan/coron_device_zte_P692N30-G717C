.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;
.super Landroid/os/Handler;
.source "OmacpMessageSettingsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 1665
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1688
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    const-string v3, "OmacpMessageSettingsDetail no proper event type."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :goto_0
    return-void

    .line 1667
    :pswitch_0
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    const-string v3, "OmacpMessageSettingsDetail application install time out......"

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1669
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1670
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget v2, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-nez v2, :cond_0

    .line 1671
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iput v4, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1669
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1674
    :cond_1
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleFinishInstall()V
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$2000(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    goto :goto_0

    .line 1677
    .end local v0           #i:I
    .end local v1           #size:I
    :pswitch_1
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    const-string v3, "OmacpMessageSettingsDetail apn install time out......"

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-nez v2, :cond_2

    .line 1679
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    move-result-object v2

    iput v4, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1681
    :cond_2
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1700(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    goto :goto_0

    .line 1684
    :pswitch_2
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    const-string v3, "OmacpMessageSettingsDetail apn switch time out......"

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V
    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1700(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    goto :goto_0

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
