.class Lcom/android/email/Controller$19;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2709
    iput-object p1, p0, Lcom/android/email/Controller$19;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 2717
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2720
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2721
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2723
    :try_start_1
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/utility/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v2}, Lcom/android/email/Controller$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2721
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2727
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2729
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    monitor-exit p0

    return-void

    .line 2717
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2724
    .restart local v0       #count:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public fetchMessageCallBack(JII)V
    .locals 0
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 2761
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 8
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 2733
    new-instance v0, Lcom/android/email/Controller$19$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$19$1;-><init>(Lcom/android/email/Controller$19;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/Controller$19;->broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V

    .line 2739
    return-void
.end method

.method public loadMessageStatus(JII)V
    .locals 0
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2757
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 0
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 2744
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 2748
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .locals 0
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 2752
    return-void
.end method
