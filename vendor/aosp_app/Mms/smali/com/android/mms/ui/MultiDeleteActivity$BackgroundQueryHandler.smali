.class final Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
.super Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.source "MultiDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field private mListCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    .line 1021
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->mListCount:I

    .line 1022
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const-wide/16 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1101
    invoke-static {}, Lcom/android/mms/ui/SearchActivity;->setNeedRequery()V

    .line 1102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1103
    .local v1, mIntent:Landroid/content/Intent;
    sparse-switch p1, :sswitch_data_0

    .line 1173
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1174
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1175
    :goto_1
    return-void

    .line 1109
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 1110
    .local v2, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v2, :cond_2

    .line 1111
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isTestIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1112
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "All messages has been deleted, send notification..."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1127
    .end local v2           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v3, v9, v10, v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1131
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->updateSendFailedNotification()V
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3100(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1132
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->progress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 1137
    :cond_1
    const-string v3, "delete_all"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1116
    .restart local v2       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_2
    :try_start_1
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "Telephony service is not available!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1118
    .end local v2           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v0

    .line 1120
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete, RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1121
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1123
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete, NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1141
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1000(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v3

    if-le v3, v8, :cond_3

    .line 1142
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1010(Lcom/android/mms/ui/MultiDeleteActivity;)I

    goto/16 :goto_1

    .line 1145
    :cond_3
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(): before update mConversation, ThreadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/data/Conversation;->upDateThread(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3, v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$102(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 1149
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadCountManager:Lcom/android/mms/util/ThreadCountManager;
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3200(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/util/ThreadCountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/mms/util/ThreadCountManager;->isFull(Ljava/lang/Long;Landroid/content/Context;I)V

    .line 1153
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v3, v9, v10, v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1157
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->updateSendFailedNotification()V
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3100(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1158
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1160
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(): MessageCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ThreadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->progress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1164
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 1166
    :cond_4
    const-string v3, "delete_all"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1167
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I
    invoke-static {v3, v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1002(Lcom/android/mms/ui/MultiDeleteActivity;I)I

    goto/16 :goto_0

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x25e4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1026
    packed-switch p1, :pswitch_data_0

    .line 1096
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1029
    .restart local p2
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsLockOrUnlockFinish:Z
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2700(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    if-eqz p3, :cond_0

    .line 1032
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1038
    :cond_1
    if-nez p3, :cond_2

    .line 1039
    const-string v2, "Mms/MultiDeleteActivity"

    const-string v3, "onQueryComplete, cursor is null."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_2
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1046
    .local v0, tid:J
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 1047
    const-string v2, "Mms/MultiDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but mConversation has threadId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " starting a new query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->startMsgListQuery()V
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2800(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1052
    if-eqz p3, :cond_0

    .line 1053
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1059
    const-string v2, "Mms/MultiDeleteActivity"

    const-string v3, "activity is being destroied, ignore onQueryComplete."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v2, :cond_4

    .line 1061
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1062
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/MessageListAdapter;->initListMap(Landroid/database/Cursor;)V

    .line 1063
    iget v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->mListCount:I

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1064
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->mListCount:I

    .line 1065
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->mListCount:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1066
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->mListCount:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1076
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1083
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 1084
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3000(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1085
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z
    invoke-static {v2, v4}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3002(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 1086
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1088
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0

    .line 1069
    :cond_7
    if-eqz p3, :cond_4

    .line 1070
    const-string v2, "Mms/MultiDeleteActivity"

    const-string v3, "onQueryComplete, cursor count is 0."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1078
    :cond_8
    if-eqz p3, :cond_5

    .line 1079
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1026
    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
