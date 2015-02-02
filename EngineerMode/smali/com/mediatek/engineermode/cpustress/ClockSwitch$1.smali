.class Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;
.super Landroid/os/Handler;
.source "ClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/ClockSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 129
    const-string v2, "EM/CpuStress_ClockSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler receive message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v2, "EM/CpuStress_ClockSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg.obj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    const/16 v0, 0xf

    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$100(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 178
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 179
    return-void

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$000()[Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v5, v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$176(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)I

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$176(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updatePeriodView(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$200(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$176(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateAutoTestView(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$300(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Z)V

    goto :goto_0

    .line 161
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$176(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)I

    .line 163
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$400(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$400(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$400(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 169
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$500(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #getter for: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$600(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/Button;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
