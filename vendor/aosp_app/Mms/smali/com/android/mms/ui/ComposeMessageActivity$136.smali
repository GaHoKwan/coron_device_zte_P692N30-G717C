.class Lcom/android/mms/ui/ComposeMessageActivity$136;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 14708
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const v12, 0x7f0b0295

    const v11, 0x7f0b0278

    const v8, 0x1010355

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 14710
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonBig:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 14711
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonSlotIds:[I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22300(Lcom/android/mms/ui/ComposeMessageActivity;)[I

    move-result-object v6

    aget v6, v6, v9

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v4

    .line 14713
    .local v4, sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->send_sim_id:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2602(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .end local v4           #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    :goto_0
    move-object v0, p1

    .line 14719
    check-cast v0, Landroid/widget/ImageButton;

    .line 14720
    .local v0, ib:Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14721
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v5, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 14722
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14724
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static {v5, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 14726
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState(Z)V
    invoke-static {v5, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22400(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 14727
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkRecipientsCount()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 14728
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x70

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14732
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14733
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 14735
    .local v2, requestDeliveryReport:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 14740
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    .line 14741
    .local v3, sendSlotId:I
    if-eqz v2, :cond_1

    .line 14742
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5, v3}, Lcom/android/mms/MmsConfig;->isAllowDRWhenRoaming(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14744
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v7

    invoke-interface {v5, v6, v10, v7}, Lcom/mediatek/mms/ext/IMmsCompose;->enableDRWarningDialog(Landroid/content/Context;ZI)V

    .line 14767
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #requestDeliveryReport:Z
    .end local v3           #sendSlotId:I
    :cond_1
    :goto_1
    return-void

    .line 14714
    .end local v0           #ib:Landroid/widget/ImageButton;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonSmall:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 14715
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mButtonSlotIds:[I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22300(Lcom/android/mms/ui/ComposeMessageActivity;)[I

    move-result-object v6

    aget v6, v6, v10

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v4

    .line 14717
    .restart local v4       #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->send_sim_id:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2602(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_0

    .line 14747
    .end local v4           #sm:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v0       #ib:Landroid/widget/ImageButton;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #requestDeliveryReport:Z
    .restart local v3       #sendSlotId:I
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/mediatek/mms/ext/IMmsCompose;->showDisableDRDialog(Landroid/app/Activity;I)V

    goto :goto_1

    .line 14752
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #requestDeliveryReport:Z
    .end local v3           #sendSlotId:I
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonCanResponse:Z
    invoke-static {v5, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 14753
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isHasRecipientCount()Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 14754
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0279

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v5, v12, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 14759
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b005e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$136;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v5, v12, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method
