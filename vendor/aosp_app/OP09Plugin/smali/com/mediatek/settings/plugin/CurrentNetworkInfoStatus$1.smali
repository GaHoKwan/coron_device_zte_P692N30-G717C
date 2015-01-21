.class Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;
.super Landroid/os/Handler;
.source "CurrentNetworkInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_OPLMN_VERSION, ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, oplmnVersion:Ljava/lang/String;
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_OPLMN_VERSION, oplmnVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCdmaPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v4}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$000(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    #getter for: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$000(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    const-string v3, "ct_slot1_cdma_pnl_version"

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;->this$0:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;

    const-string v3, "ct_slot1_gsm_pnl_version"

    #calls: Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->access$100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
