.class Lcom/android/exchange/ExchangeService$CalendarObserver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService$CalendarObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sync_events"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1187
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-boolean v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    if-eqz v2, :cond_6

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    .end local v9           #c:Landroid/database/Cursor;
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    .line 1268
    :goto_1
    return-void

    .line 1192
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1193
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1194
    .local v14, newSyncEvents:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    cmp-long v2, v14, v2

    if-eqz v2, :cond_2

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_events changed for calendar in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1196
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    const/16 v5, 0x41

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1199
    .local v13, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v13, :cond_1

    .line 1254
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-boolean v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    if-eqz v2, :cond_7

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto :goto_0

    .line 1202
    :cond_1
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1203
    .local v10, cv:Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_3

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting events and setting syncKey to 0 for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1209
    iget-wide v2, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 1211
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v2, v13}, Lcom/android/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;

    move-result-object v16

    .line 1213
    .local v16, service:Lcom/android/exchange/EasSyncService;
    new-instance v8, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    .local v8, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    :try_start_4
    const-string v2, "0"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1222
    :goto_2
    :try_start_5
    const-string v2, "syncKey"

    const-string v3, "0"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v2, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1230
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-static {v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1235
    .local v12, eventsAsSyncAdapter:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "calendar_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v6, v6, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1250
    .end local v8           #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .end local v12           #eventsAsSyncAdapter:Landroid/net/Uri;
    .end local v16           #service:Lcom/android/exchange/EasSyncService;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iput-wide v14, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1254
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #newSyncEvents:J
    :cond_2
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-boolean v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    if-eqz v2, :cond_8

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto/16 :goto_0

    .line 1217
    .restart local v8       #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v13       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #newSyncEvents:J
    .restart local v16       #service:Lcom/android/exchange/EasSyncService;
    :catch_0
    move-exception v11

    .line 1219
    .local v11, e:Ljava/io/IOException;
    :try_start_7
    const-string v2, "ExchangeService"

    const-string v3, "The provider can\'t be reached"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1254
    .end local v8           #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #newSyncEvents:J
    .end local v16           #service:Lcom/android/exchange/EasSyncService;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1257
    .end local v9           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v11

    .line 1258
    .local v11, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_9
    const-string v2, "ExchangeService"

    const-string v3, "Observer failed; provider unavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-boolean v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    if-eqz v2, :cond_5

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto/16 :goto_0

    .line 1241
    .end local v11           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v13       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #newSyncEvents:J
    :cond_3
    :try_start_a
    const-string v2, "syncInterval"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1246
    const-string v2, "calendar sync changed"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 1260
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #newSyncEvents:J
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-boolean v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    if-eqz v3, :cond_4

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v5, v5, Lcom/android/exchange/ExchangeService$CalendarObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v3, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarChanged:Z

    .line 1260
    :goto_4
    throw v2

    .line 1265
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    goto :goto_4

    .restart local v11       #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    .end local v11           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_5
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mThread:Ljava/lang/Thread;

    goto/16 :goto_1

    .restart local v9       #c:Landroid/database/Cursor;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto :goto_5

    .restart local v13       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #newSyncEvents:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto :goto_5

    .end local v13           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #newSyncEvents:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    goto :goto_5
.end method
