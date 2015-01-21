.class Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;
.super Landroid/os/AsyncTask;
.source "IpMessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IpMessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/IpMessageReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/IpMessageReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->this$0:Lcom/android/mms/transaction/IpMessageReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private handleGroupNotificationClicked(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 127
    const-string v4, "IpMessageReceiver"

    const-string v5, "handleGroupNotificationClicked"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v4, "thread_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 129
    .local v2, threadId:J
    const-string v4, "boolean"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, isImportant:Z
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, it:Landroid/content/Intent;
    const-string v4, "thread_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    const-string v4, "boolean"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private handleNewMessage(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    .line 100
    const-string v6, "IpMessageReceiver"

    const-string v7, "handleNewMessage"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v6, "IpMessageKey"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 102
    .local v2, messageId:J
    cmp-long v6, v2, v8

    if-gtz v6, :cond_0

    .line 103
    const-string v6, "IpMessageReceiver"

    const-string v7, "get ip message failed."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new message id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v1

    .line 108
    .local v1, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t ipdbid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getIpDbId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t from:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t to:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getTo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t simId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getSimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNumberByMessageId(J)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, from:Ljava/lang/String;
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t displyFrom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 118
    .local v4, threadId:J
    const-string v6, "IpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t threadid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v4, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 120
    invoke-static {}, Lcom/android/mms/ui/NotificationPreferenceActivity;->isPopupNotificationEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->this$0:Lcom/android/mms/transaction/IpMessageReceiver;

    #calls: Lcom/android/mms/transaction/IpMessageReceiver;->notifyNewIpMessageDialog(J)V
    invoke-static {v6, v2, v3}, Lcom/android/mms/transaction/IpMessageReceiver;->access$000(Lcom/android/mms/transaction/IpMessageReceiver;J)V

    .line 123
    :cond_1
    iget-object v6, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private handleUpgrade()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 138
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0x7b

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 139
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0x15be

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 140
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0x315

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 141
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0x213

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 142
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0xef

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 143
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0xea

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 144
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const/16 v9, 0x7d

    invoke-static {v8, v9}, Lcom/android/mms/transaction/CBMessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 146
    iget-object v8, p0, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 148
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 149
    .local v7, rti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 150
    .local v3, infoFst:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, packageNameFst:Ljava/lang/String;
    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, classNameFst:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    .local v4, infoSnd:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, packageNameSnd:Ljava/lang/String;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, classNameSnd:Ljava/lang/String;
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t task_0 id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t packageName_0:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t className_0:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t task_1 id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t packageName_1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t className_1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v5, :cond_0

    const-string v8, "com.android.mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    const-string v8, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "need move "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to front."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v8, v11}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 169
    :cond_0
    const-string v8, "Mms/Txn"

    const-string v9, "kill process"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    .line 171
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 4
    .parameter "intents"

    .prologue
    .line 84
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 85
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.mms.ipmessage.newMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->handleNewMessage(Landroid/content/Intent;)V

    .line 96
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 88
    :cond_0
    const-string v2, "com.mediatek.mms.ipmessage.group_notification_clicked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->handleGroupNotificationClicked(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "com.mediatek.mms.ipmessage.upgrade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/mms/transaction/IpMessageReceiver$ReceiveNotificationTask;->handleUpgrade()V

    goto :goto_0

    .line 93
    :cond_2
    const-string v2, "IpMessageReceiver"

    const-string v3, "unknown notification type."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
