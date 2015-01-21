.class Lcom/android/mms/ui/MultiDeleteActivity$4;
.super Landroid/os/Handler;
.source "MultiDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 891
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1012
    const-string v5, "Mms/MultiDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 894
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->changeSelectedState(J)V

    .line 895
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_1

    .line 896
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 897
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1208(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 904
    :cond_1
    :goto_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/ui/MessageItem;

    .line 905
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 906
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 907
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_2
    :goto_2
    const/16 v5, 0x82

    iget v7, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v5, v7, :cond_3

    .line 913
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 914
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1308(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 919
    :cond_3
    :goto_3
    iget-object v5, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v5, v5, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v5, :cond_4

    .line 920
    iget-object v1, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 921
    .local v1, ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 922
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 923
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1408(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 924
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1500(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v1           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1602(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 932
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v5

    if-lez v5, :cond_5

    .line 933
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v6, v6, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 934
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z
    invoke-static {v5, v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1602(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 937
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->updateSelectCount()V
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1700(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 938
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 939
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0

    .line 899
    .end local v4           #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1210(Lcom/android/mms/ui/MultiDeleteActivity;)I

    goto/16 :goto_1

    .line 909
    .restart local v4       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 916
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1310(Lcom/android/mms/ui/MultiDeleteActivity;)I

    goto/16 :goto_3

    .line 926
    .restart local v1       #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1410(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 927
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1500(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 943
    .end local v1           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    .end local v4           #msgItem:Lcom/android/mms/ui/MessageItem;
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-nez v5, :cond_a

    .line 944
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1902(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 945
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 946
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 947
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v7

    const/16 v8, 0xec

    invoke-virtual {v7, v8}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    new-instance v7, Lcom/android/mms/ui/MultiDeleteActivity$4$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MultiDeleteActivity$4$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$4;)V

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 955
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v7, "show download dialog."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 959
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2002(Lcom/android/mms/ui/MultiDeleteActivity;I)I

    .line 960
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterSuccess:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2102(Lcom/android/mms/ui/MultiDeleteActivity;I)I

    .line 961
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2202(Lcom/android/mms/ui/MultiDeleteActivity;I)I

    .line 962
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1500(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageItem;

    .line 963
    .local v3, item:Lcom/android/mms/ui/MessageItem;
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v6, "check a item."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v5, v3, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v5, v5, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v5, :cond_b

    .line 965
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 966
    .restart local v1       #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/mms/ipmessage/MessageManager;->isDownloading(J)Z

    move-result v5

    if-nez v5, :cond_b

    .line 968
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/mms/ipmessage/MessageManager;->downloadAttach(J)V

    .line 969
    const-string v5, "Mms/MultiDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request download an ipattachmessage, id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .end local v1           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_b
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v6, "check a item end."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 976
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/mms/ui/MessageItem;
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 977
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 978
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v8}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1902(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 980
    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 982
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v5

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I
    invoke-static {v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1400(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v7

    if-ne v5, v7, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v5

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I
    invoke-static {v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2300(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v7

    if-ne v5, v7, :cond_d

    .line 985
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v8, 0x7f0b01ee

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 990
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1402(Lcom/android/mms/ui/MultiDeleteActivity;I)I

    .line 991
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectActionMode:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2600(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2400(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionModeMenu:Landroid/view/MenuItem;
    invoke-static {v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2500(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 992
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionMode:Landroid/view/ActionMode;
    invoke-static {v5, v8}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2402(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 993
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionModeMenu:Landroid/view/MenuItem;
    invoke-static {v5, v8}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2502(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 997
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->updateSelectCount()V
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1700(Lcom/android/mms/ui/MultiDeleteActivity;)V

    goto/16 :goto_0

    .line 1001
    :sswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_e

    .line 1002
    .local v2, isClearCache:Z
    :goto_6
    const-string v5, "Mms/MessageItemCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMessageListItemHandler#handleMessage(): run adapter notify in mMessageListItemHandler. isClearCache = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/mms/ui/MessageListAdapter;->setClearCacheFlag(Z)V

    .line 1005
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .end local v2           #isClearCache:Z
    :cond_e
    move v2, v6

    .line 1001
    goto :goto_6

    .line 1008
    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 891
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x64 -> :sswitch_4
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3ed -> :sswitch_5
    .end sparse-switch
.end method
