.class public Lcom/android/email/Controller$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAttachmentId:J

.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 3
    .parameter
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2199
    iput-wide p2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    .line 2200
    iput-wide p4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 2201
    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    .line 2202
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 13
    .parameter "progress"

    .prologue
    .line 2208
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v1

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v1}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/MessagingController;->mCancelledAttachments:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    :goto_0
    return-void

    .line 2214
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$1100(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    :goto_1
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    iget-object v12, v1, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v12

    .line 2222
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    iget-object v1, v1, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2223
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v6, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    const/4 v9, 0x1

    move v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJII)V

    goto :goto_2

    .line 2226
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2216
    :catch_0
    move-exception v10

    .line 2218
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2226
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 2231
    return-void
.end method
