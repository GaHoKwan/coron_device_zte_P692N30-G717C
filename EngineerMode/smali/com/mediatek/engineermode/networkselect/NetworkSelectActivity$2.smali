.class Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;
.super Landroid/os/Handler;
.source "NetworkSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 148
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 152
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v6

    .line 153
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

    .line 154
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mModemType:I
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$400(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 155
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 172
    :cond_1
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 175
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 178
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 181
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 184
    :pswitch_8
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mPreferredNetworkSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 191
    .end local v1           #type:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    const v3, 0x7f080488

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->mSimType:I
    invoke-static {v4}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$100(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 172
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
