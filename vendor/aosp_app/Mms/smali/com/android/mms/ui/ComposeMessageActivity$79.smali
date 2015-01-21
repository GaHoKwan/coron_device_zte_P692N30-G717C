.class Lcom/android/mms/ui/ComposeMessageActivity$79;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->checkConditionsAndSendMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bCEM:Z

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9371
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->val$slotId:I

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->val$bCEM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 9374
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 9375
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsCellDialogShowing:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 9377
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getResult()I

    move-result v0

    .line 9378
    .local v0, nRet:I
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceComplete result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9379
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v0, :cond_1

    .line 9380
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 9393
    :goto_0
    return-void

    .line 9383
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->val$slotId:I

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 9384
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16700()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 9385
    .local v1, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v1, :cond_2

    .line 9386
    const-string v2, "Mms/Txn"

    const-string v3, "serviceComplete siminfo is null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9387
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 9390
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSimId:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15102(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 9392
    .end local v1           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->val$bCEM:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkIpMessageBeforeSendMessage(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0
.end method
