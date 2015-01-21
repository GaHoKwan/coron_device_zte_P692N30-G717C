.class Lcom/android/mms/ui/WPMessageItem$1;
.super Ljava/lang/Object;
.source "WPMessageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageItem;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageItem;

.field final synthetic val$wpMsgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageItem;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    iput-object p2, p0, Lcom/android/mms/ui/WPMessageItem$1;->val$wpMsgUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->val$wpMsgUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    #calls: Lcom/android/mms/ui/WPMessageItem;->buildReadContentValues()V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageItem;->access$000(Lcom/android/mms/ui/WPMessageItem;)V

    .line 215
    const/4 v7, 0x1

    .line 217
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem$1;->val$wpMsgUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/WPMessageItem;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0 OR seen=0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 221
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v7, 0x1

    .line 223
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_0
    if-eqz v7, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem$1;->val$wpMsgUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/WPMessageItem;->access$100()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "(read=0 OR seen=0)"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    #setter for: Lcom/android/mms/ui/WPMessageItem;->mIsUnread:Z
    invoke-static {v0, v8}, Lcom/android/mms/ui/WPMessageItem;->access$202(Lcom/android/mms/ui/WPMessageItem;Z)Z

    .line 232
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageItem$1;->this$0:Lcom/android/mms/ui/WPMessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageItem;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 234
    return-void

    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :cond_2
    move v7, v8

    .line 221
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
