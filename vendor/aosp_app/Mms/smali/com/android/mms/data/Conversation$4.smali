.class Lcom/android/mms/data/Conversation$4;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->wpMarkAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$4;->val$threadUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1973
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1000(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1974
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1100(Lcom/android/mms/data/Conversation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 1976
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1000(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1981
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/Conversation;->buildReadContentValues()V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)V

    .line 1989
    const/4 v7, 0x1

    .line 1991
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$4;->val$threadUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0 OR seen=0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 1993
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1995
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    const/4 v7, 0x1

    .line 1997
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2001
    :cond_1
    if-eqz v7, :cond_2

    .line 2002
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$4;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$300()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "(read=0 OR seen=0)"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2003
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->access$1202(Lcom/android/mms/data/Conversation;Z)Z

    .line 2006
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :cond_2
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2007
    iget-object v0, p0, Lcom/android/mms/data/Conversation$4;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 2009
    return-void

    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :cond_3
    move v7, v8

    .line 1995
    goto :goto_1

    .line 1997
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2006
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1977
    :catch_0
    move-exception v0

    goto :goto_0
.end method