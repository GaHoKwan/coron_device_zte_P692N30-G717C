.class public Lcom/android/calendar/AsyncQueryServiceHelper;
.super Landroid/app/IntentService;
.source "AsyncQueryServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final sWorkQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/android/calendar/AsyncQueryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 242
    const-string v0, "AsyncQueryServiceHelper"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    const-class v0, Lcom/android/calendar/AsyncQueryService;

    iput-object v0, p0, Lcom/android/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    const-class v0, Lcom/android/calendar/AsyncQueryService;

    iput-object v0, p0, Lcom/android/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 239
    return-void
.end method

.method public static cancelOperation(I)I
    .locals 4
    .parameter "token"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, canceled:I
    sget-object v3, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 222
    :try_start_0
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    iget v2, v2, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    if-ne v2, p0, :cond_0

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    monitor-exit v3

    .line 234
    return v0

    .line 229
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getLastCancelableOperation()Lcom/android/calendar/AsyncQueryService$Operation;
    .locals 12

    .prologue
    .line 180
    const-wide/high16 v2, -0x8000

    .line 181
    .local v2, lastScheduleTime:J
    const/4 v4, 0x0

    .line 183
    .local v4, op:Lcom/android/calendar/AsyncQueryService$Operation;
    sget-object v7, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v7

    .line 185
    :try_start_0
    sget-object v6, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    move-object v5, v4

    .line 186
    .end local v4           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .local v5, op:Lcom/android/calendar/AsyncQueryService$Operation;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 188
    .local v0, info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    iget-wide v8, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    #getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v8

    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 189
    if-nez v5, :cond_1

    .line 190
    new-instance v4, Lcom/android/calendar/AsyncQueryService$Operation;

    invoke-direct {v4}, Lcom/android/calendar/AsyncQueryService$Operation;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    .end local v5           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v4       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    :goto_1
    :try_start_2
    iget v6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    iput v6, v4, Lcom/android/calendar/AsyncQueryService$Operation;->token:I

    .line 194
    iget v6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v6, v4, Lcom/android/calendar/AsyncQueryService$Operation;->op:I

    .line 195
    #getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    .line 197
    #getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    :goto_2
    move-object v5, v4

    .line 199
    .end local v4           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v5       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    goto :goto_0

    .line 200
    .end local v0           #info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    return-object v5

    .line 200
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    .end local v5           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v4       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .end local v4           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    .restart local v5       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v4       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    goto :goto_3

    .end local v4           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v0       #info:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .restart local v5       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    :cond_1
    move-object v4, v5

    .end local v5           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v4       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    goto :goto_1

    .end local v4           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v5       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    :cond_2
    move-object v4, v5

    .end local v5           #op:Lcom/android/calendar/AsyncQueryService$Operation;
    .restart local v4       #op:Lcom/android/calendar/AsyncQueryService$Operation;
    goto :goto_2
.end method

.method public static queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V
    .locals 2
    .parameter "context"
    .parameter "args"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->calculateScheduledTime()V

    .line 166
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AsyncQueryServiceHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 371
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 379
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 15
    .parameter "intent"

    .prologue
    .line 252
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 258
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 259
    monitor-exit v2

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 261
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 262
    .local v9, first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    #getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v9}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    sub-long v11, v3, v13

    .line 263
    .local v11, waitTime:J
    const-wide/16 v3, 0x0

    cmp-long v1, v11, v3

    if-lez v1, :cond_3

    .line 265
    :try_start_1
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 271
    .end local v9           #first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v11           #waitTime:J
    :cond_3
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 272
    .local v6, args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    if-eqz v6, :cond_0

    .line 277
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    iget-object v0, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 284
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 286
    iget v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    packed-switch v1, :pswitch_data_0

    .line 344
    :goto_2
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    iget v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 345
    .local v10, reply:Landroid/os/Message;
    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    iget v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 353
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 277
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v10           #reply:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 290
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    :pswitch_0
    :try_start_4
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 297
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 298
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 305
    :cond_4
    :goto_3
    iput-object v7, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 300
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 301
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v7, 0x0

    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_3

    .line 309
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 313
    :pswitch_2
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 318
    :pswitch_3
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 323
    :pswitch_4
    :try_start_5
    iget-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 324
    :catch_1
    move-exception v8

    .line 325
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 327
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 328
    .local v8, e:Landroid/content/OperationApplicationException;
    const-string v1, "AsyncQuery"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 330
    .end local v8           #e:Landroid/content/OperationApplicationException;
    :catch_3
    move-exception v8

    .line 331
    .local v8, e:Landroid/database/SQLException;
    const-string v1, "AsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event might have been deleted from database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 333
    .end local v8           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v8

    .line 334
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "AsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other exception been caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 266
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #args:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #first:Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    .restart local v11       #waitTime:J
    :catch_5
    move-exception v1

    goto/16 :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 363
    return-void
.end method
