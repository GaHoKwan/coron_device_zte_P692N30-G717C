.class Lcom/android/mms/data/Conversation$6;
.super Landroid/os/AsyncTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsSeen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
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
    .line 2381
    iput-object p1, p0, Lcom/android/mms/data/Conversation$6;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$6;->val$threadUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2381
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "none"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 2385
    iget-object v0, p0, Lcom/android/mms/data/Conversation$6;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2386
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 2387
    .local v7, ct:Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2392
    const/4 v8, 0x1

    .line 2394
    .local v8, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation$6;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$6;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$1500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2396
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2398
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v8, v9

    .line 2400
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2404
    :cond_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/Conversation$6;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mComposeIsPause:Z
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1600(Lcom/android/mms/data/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2405
    const-string v0, "Mms/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markAsRead: update read/seen for thread uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation$6;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    iget-object v0, p0, Lcom/android/mms/data/Conversation$6;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$6;->val$threadUri:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2410
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #ct:Landroid/content/ContentValues;
    .end local v8           #needUpdate:Z
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$6;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 2412
    return-object v4

    .line 2398
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #ct:Landroid/content/ContentValues;
    .restart local v8       #needUpdate:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 2400
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
