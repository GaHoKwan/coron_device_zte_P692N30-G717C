.class Lcom/android/mms/ui/ComposeMessageActivity$70;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8648
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v8, 0x7f0b0039

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 8651
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 8728
    const-string v5, "Mms/compose"

    const-string v6, "inUIHandler msg unhandled."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8731
    :goto_0
    return-void

    .line 8653
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v6, 0x7f0b0038

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8657
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8662
    :sswitch_2
    const/4 v3, -0x1

    .line 8663
    .local v3, slotId:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimCount:I
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 8664
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimInfoList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    .line 8668
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IStringReplacement;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 8669
    .local v0, ctString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IStringReplacement;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .end local v0           #ctString:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8666
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    goto :goto_1

    .line 8669
    .restart local v0       #ctString:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b02f4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 8678
    .end local v0           #ctString:Ljava/lang/String;
    .end local v3           #slotId:I
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 8679
    .local v4, type:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v5

    .line 8680
    .local v1, msgId:J
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveMessageToSim(Ljava/lang/String;J)V
    invoke-static {v5, v4, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 8684
    .end local v1           #msgId:J
    .end local v4           #type:Ljava/lang/String;
    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto/16 :goto_0

    .line 8688
    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$70$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ComposeMessageActivity$70$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$70;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 8721
    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactPickRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15700(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8722
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactPickDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactPickDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8723
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactPickDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 8725
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContactPickDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10602(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 8651
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_3
        0x6a -> :sswitch_0
        0x6c -> :sswitch_1
        0x6e -> :sswitch_2
        0x70 -> :sswitch_4
        0x1f4 -> :sswitch_5
        0x2331 -> :sswitch_6
    .end sparse-switch
.end method
