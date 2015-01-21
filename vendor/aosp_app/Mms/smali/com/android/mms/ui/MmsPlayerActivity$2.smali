.class Lcom/android/mms/ui/MmsPlayerActivity$2;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/google/android/mms/pdu/PduPersister;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-wide p3, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 599
    invoke-static {}, Lcom/android/mms/ui/MmsPlayerActivity;->access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getResult()I

    move-result v1

    .line 600
    .local v1, nRet:I
    invoke-static {}, Lcom/android/mms/ui/MmsPlayerActivity;->access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MmsPlayerActivity;->access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v1, :cond_1

    .line 601
    :cond_0
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceComplete result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/android/mms/ui/MmsPlayerActivity;->access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    .line 621
    :goto_0
    return-void

    .line 605
    :cond_1
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceComplete result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v3, 0x0

    .line 608
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MmsPlayerActivity;->access$200(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 609
    new-instance v2, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v5}, Lcom/android/mms/ui/MmsPlayerActivity;->access$300(Lcom/android/mms/ui/MmsPlayerActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 611
    .local v2, sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mSimId:I
    invoke-static {v4}, Lcom/android/mms/ui/MmsPlayerActivity;->access$400(Lcom/android/mms/ui/MmsPlayerActivity;)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 614
    iget-wide v4, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->val$threadId:J

    invoke-interface {v2, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v2           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/MmsPlayerActivity$2;->val$threadId:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 620
    invoke-static {}, Lcom/android/mms/ui/MmsPlayerActivity;->access$100()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "MmsPlayerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t resend mms. + uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
