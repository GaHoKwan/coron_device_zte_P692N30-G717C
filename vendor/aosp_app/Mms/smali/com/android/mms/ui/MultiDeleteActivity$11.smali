.class Lcom/android/mms/ui/MultiDeleteActivity$11;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->forwardOneMms(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1808
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1812
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1813
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v3, 0x7f0b0272

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1814
    .local v7, subject:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1817
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->makeCopy()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1818
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v2, v4}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$4902(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1820
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1822
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v8

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v4}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v8, v2}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$4902(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1825
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$4900(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempThreadId:J
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->access$5002(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;J)J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1827
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v6

    .line 1828
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MultiDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v3, 0x7f0b027f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
