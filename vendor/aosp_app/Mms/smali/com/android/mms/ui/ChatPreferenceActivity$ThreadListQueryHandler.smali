.class final Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;
.super Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    .line 1149
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1150
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const-wide/16 v6, -0x2

    .line 1182
    packed-switch p1, :pswitch_data_0

    .line 1231
    :goto_0
    return-void

    .line 1184
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1185
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1189
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 1190
    .local v2, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v2, :cond_1

    .line 1191
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isTestIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    const-string v3, "ChatPreferenceActivity"

    const-string v4, "All threads has been deleted, send notification.."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    .end local v2           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    const/4 v4, 0x0

    invoke-static {v3, v6, v7, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1210
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$300(Lcom/android/mms/ui/ChatPreferenceActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 1211
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1216
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v3, v6, v7}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 1219
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 1223
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    const-class v4, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1224
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1225
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1226
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1196
    .end local v1           #i:Landroid/content/Intent;
    .restart local v2       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    :try_start_1
    const-string v3, "ChatPreferenceActivity"

    const-string v4, "Telephony service is not available!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1198
    .end local v2           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v0

    .line 1199
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "ChatPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1155
    if-nez p3, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1176
    const-string v2, "ChatPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->showPreference(Landroid/database/Cursor;)V
    invoke-static {v2, p3}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1400(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1164
    :pswitch_1
    const-string v2, "ChatPreferenceActivity"

    const-string v3, "onQueryComplete HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    .line 1166
    check-cast v1, Ljava/util/Collection;

    .line 1167
    .local v1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1500(Lcom/android/mms/ui/ChatPreferenceActivity;)Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    .line 1169
    .local v0, d:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/mms/ui/ChatPreferenceActivity;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 1171
    if-eqz p3, :cond_0

    .line 1172
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1169
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
