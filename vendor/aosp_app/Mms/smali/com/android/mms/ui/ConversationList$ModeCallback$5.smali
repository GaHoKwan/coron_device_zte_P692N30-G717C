.class Lcom/android/mms/ui/ConversationList$ModeCallback$5;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2153
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 2158
    const/4 v11, 0x0

    .line 2159
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2161
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2162
    sget v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    packed-switch v0, :pswitch_data_0

    .line 2200
    const-string v0, "ConversationList"

    const-string v1, "status error! not at any type."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :goto_0
    if-eqz v11, :cond_1

    .line 2210
    :try_start_0
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select all, cursor count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4200(Lcom/android/mms/ui/ConversationList$ModeCallback;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2212
    const/4 v12, 0x0

    .local v12, position:I
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$3900(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2221
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2224
    .end local v12           #position:I
    :cond_1
    if-eqz v11, :cond_2

    .line 2225
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2228
    :cond_2
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select all invoke complete and the mCheckNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4400(Lcom/android/mms/ui/ConversationList$ModeCallback;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$4500(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2231
    invoke-static {}, Lcom/android/mms/data/Conversation;->clearCache()V

    .line 2234
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #setter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mIsSelectAll:Z
    invoke-static {v0, v13}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4602(Lcom/android/mms/ui/ConversationList$ModeCallback;Z)Z

    .line 2236
    return-void

    .line 2164
    :pswitch_0
    const-string v0, "ConversationList"

    const-string v1, "setAllItemChecked(): query for all messages except spam"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    const-string v3, "threads._id not in (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=1) "

    .line 2168
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2171
    goto/16 :goto_0

    .line 2173
    :pswitch_1
    const-string v3, "threads._id IN (SELECT thread_id FROM sms WHERE locked=1 UNION SELECT thread_id FROM pdu WHERE locked=1)"

    .line 2175
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllItemChecked(): query for important messages, selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2179
    goto/16 :goto_0

    .line 2181
    :pswitch_2
    const-string v0, "ConversationList"

    const-string v1, "setAllItemChecked(): query for group messages"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string v3, "threads._id IN (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=0) AND threads.recipient_ids IN (SELECT _id FROM canonical_addresses WHERE SUBSTR(address, 1, 4) = \'7---\')"

    .line 2186
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2189
    goto/16 :goto_0

    .line 2193
    :pswitch_3
    const-string v3, "threads._id IN (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=1) "

    .line 2194
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllItemChecked(): query for spam messages, selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2198
    goto/16 :goto_0

    .line 2204
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    const-string v10, "date DESC"

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_0

    .line 2218
    .restart local v12       #position:I
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->val$checked:Z

    invoke-virtual {v0, v12, v2, v11}, Lcom/android/mms/ui/ConversationList$ModeCallback;->setItemChecked(IZLandroid/database/Cursor;)V

    .line 2219
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$5;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectedAllHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4300(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2212
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2224
    .end local v12           #position:I
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_6

    .line 2225
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
