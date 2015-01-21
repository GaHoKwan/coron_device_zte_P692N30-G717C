.class Lcom/android/email/Controller$ControllerService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller$ControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller$ControllerService;


# direct methods
.method constructor <init>(Lcom/android/email/Controller$ControllerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2769
    iput-object p1, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 2776
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 2786
    iget-object v1, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 2788
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    .line 2789
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v1

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v1}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingController;->cancelLoadAttachment(J)V

    .line 2791
    :cond_0
    return-void
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"

    .prologue
    .line 2865
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 2885
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"

    .prologue
    .line 2869
    const/4 v0, 0x0

    return v0
.end method

.method public fetchMessage(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 2893
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 2897
    const/4 v0, 0x2

    return v0
.end method

.method public hostChanged(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 2852
    return-void
.end method

.method public loadAttachment(JZ)V
    .locals 17
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v13

    .line 2797
    .local v13, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v13, :cond_4

    .line 2798
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2799
    const-string v3, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 2803
    .local v16, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v16, :cond_3

    .line 2806
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v3}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v2

    .line 2807
    .local v2, legacyController:Lcom/android/email/MessagingController;
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/Controller;->access$1300(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v15

    .line 2808
    .local v15, mailboxType:I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    if-ne v15, v3, :cond_1

    .line 2809
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 2817
    :cond_1
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 2818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/Controller;->access$1400()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2821
    .local v14, cols:[Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 2822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 2824
    if-nez v16, :cond_2

    .line 2846
    .end local v2           #legacyController:Lcom/android/email/MessagingController;
    .end local v14           #cols:[Ljava/lang/String;
    .end local v15           #mailboxType:I
    .end local v16           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 2831
    .restart local v2       #legacyController:Lcom/android/email/MessagingController;
    .restart local v15       #mailboxType:I
    .restart local v16       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v3}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v11

    .line 2832
    .local v11, legacyListener:Lcom/android/email/Controller$LegacyListener;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v9, p1

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V

    goto :goto_0

    .line 2836
    .end local v2           #legacyController:Lcom/android/email/MessagingController;
    .end local v11           #legacyListener:Lcom/android/email/Controller$LegacyListener;
    .end local v15           #mailboxType:I
    :cond_3
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v3}, Lcom/android/email/Controller;->access$1100(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    goto :goto_0

    .line 2841
    .end local v16           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    const-string v3, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment not found for Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v3}, Lcom/android/email/Controller;->access$1100(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/16 v8, 0x11

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    goto :goto_0
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 2861
    return-void
.end method

.method public removeCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 2881
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2882
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 2873
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 1
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 2889
    const/4 v0, 0x0

    return v0
.end method

.method public sendMail(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2902
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 2858
    return-void
.end method

.method public sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "uri"
    .parameter "callback"
    .parameter "saveToSent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2907
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 2877
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2878
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 2855
    return-void
.end method

.method public startSync(JZ)V
    .locals 0
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 2780
    return-void
.end method

.method public startSyncForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 0
    .parameter "mailboxId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2913
    return-void
.end method

.method public stopOof(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 2923
    return-void
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"

    .prologue
    .line 2783
    return-void
.end method

.method public syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;
    .locals 1
    .parameter "accountId"
    .parameter "oofParams"
    .parameter "isGet"

    .prologue
    .line 2918
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateFolderList(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 2849
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 1
    .parameter "hostAuth"

    .prologue
    .line 2772
    const/4 v0, 0x0

    return-object v0
.end method
