.class Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;
.super Ljava/lang/Object;
.source "OP09MmsConversationListItemExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getSimIdByThreadId(Landroid/content/Context;Landroid/net/Uri;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationUri:Landroid/net/Uri;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$conversationUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$conversationUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/conversations/simid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$conversationUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, newUriStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I
    invoke-static {v0, v1}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->access$002(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 124
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #newUriStr:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 118
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #newUriStr:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;

    const/4 v1, -0x1

    #setter for: Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I
    invoke-static {v0, v1}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->access$002(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 124
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 128
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #newUriStr:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->this$0:Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;

    #setter for: Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I
    invoke-static {v0, v1}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->access$002(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;I)I

    .line 129
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_6
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
