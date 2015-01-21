.class Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;
.super Landroid/os/Handler;
.source "NetworkSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const-string v2, "EM/NetworkMode"

    const-string v3, "Get response EVENT_QUERY_NETWORKMODE_DONE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 145
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 146
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v5

    .line 147
    .local v1, type:I
    const-string v2, "EM/NetworkMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Preferred Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 167
    .end local v1           #type:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    const v3, 0x7f080488

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 171
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v2}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$200(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
