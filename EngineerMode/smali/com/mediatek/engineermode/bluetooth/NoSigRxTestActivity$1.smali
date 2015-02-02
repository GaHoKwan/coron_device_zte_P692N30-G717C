.class Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;
.super Landroid/os/Handler;
.source "NoSigRxTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v3, 0x17

    const/16 v2, 0x16

    const-wide/high16 v8, 0x4059

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    const-string v0, "NoSigRxLOG"

    const-string v1, "OP_IN_PROCESS"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "NoSigRxLOG"

    const-string v1, "OP_FINISH"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    .line 156
    :pswitch_3
    const-string v0, "NoSigRxLOG"

    const-string v1, "OP_RX_FAIL"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdAddr:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "A5F0C3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    const/16 v1, 0x65

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;I)I

    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtnStartTest:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "End Test"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackCnt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)[I

    move-result-object v1

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackErrRate:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$600(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)[I

    move-result-object v4

    aget v4, v4, v7

    int-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mRxByteCnt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$700(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBitErrRate:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$800(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    const/16 v1, 0x64

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;I)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtnStartTest:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Start"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    :pswitch_7
    const-string v0, "NoSigRxLOG"

    const-string v1, "UI_BT_CLOSE"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_8
    const-string v0, "NoSigRxLOG"

    const-string v1, "UI_BT_CLOSE_FINISHED"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
