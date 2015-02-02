.class Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;
.super Ljava/lang/Object;
.source "WiFiRx6620.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiRx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0b04bd

    const v4, 0x7f0b04bb

    .line 120
    const-string v1, "EM/WiFi_Rx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg0.getId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 122
    sget-boolean v1, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 145
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local p3
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 129
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidth:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$700(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p3, v2, :cond_3

    .end local p3
    :goto_1
    #setter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I
    invoke-static {v1, p3}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$602(Lcom/mediatek/engineermode/wifi/WiFiRx6620;I)I

    .line 131
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 132
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->removeBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V

    .line 133
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->remove5GChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertBw40MChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->updateWifiChannel(Lcom/mediatek/engineermode/wifi/ChannelInfo;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;)V

    goto :goto_0

    .line 129
    .restart local p3
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)I

    move-result p3

    goto :goto_1

    .line 138
    .end local p3
    :cond_4
    const/4 v0, 0x0

    .line 139
    .local v0, bUpdate:Z
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V

    .line 140
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->removeBw40MChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V

    .line 141
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insert5GChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->updateWifiChannel(Lcom/mediatek/engineermode/wifi/ChannelInfo;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Rx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method
