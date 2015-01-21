.class public Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationQueryHandler"
.end annotation


# instance fields
.field private mDeleteToken:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1105
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1116
    iget v0, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    if-ne p1, v0, :cond_0

    .line 1124
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1125
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$602(Z)Z

    .line 1126
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$500()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1127
    monitor-exit v1

    .line 1129
    :cond_0
    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeleteToken(I)V
    .locals 0
    .parameter "token"

    .prologue
    .line 1108
    iput p1, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    .line 1109
    return-void
.end method
