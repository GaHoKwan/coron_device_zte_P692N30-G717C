.class public Lcom/android/mms/draft/DraftManager;
.super Ljava/lang/Object;
.source "DraftManager.java"


# static fields
.field public static final ASYNC_LOAD_ACTION:I = 0x2

.field public static final ASYNC_SAVE_ACTION:I = 0x1

.field private static final FAKE_THREAD_ID:J = 0x0L

.field public static final SYNC_LOAD_ACTION:I = 0x20

.field public static final SYNC_SAVE_ACTION:I = 0x10

.field public static final SYNC_UPDATE_ACTION:I = 0x30

.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][DraftManager]"

.field public static final sEditingThread:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/mms/draft/DraftManager;


# instance fields
.field private mTaskMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/draft/DraftTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/draft/DraftManager;->sEditingThread:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    .line 63
    return-void
.end method

.method private getDraftTask(IJ)Lcom/android/mms/draft/DraftTask;
    .locals 7
    .parameter "type"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 228
    const-string v2, "[Mms][Draft][DraftManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDraftTask] type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v2, :cond_0

    .line 230
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/draft/DraftManager;->removeTask()V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, dtRe:Lcom/android/mms/draft/DraftTask;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 237
    cmp-long v2, p2, v5

    if-gtz v2, :cond_1

    .line 238
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[getDraftTask] cannot do async load action when threadId <= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-object v1

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    check-cast v0, Lcom/android/mms/draft/DraftTask;

    .line 242
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    if-nez v0, :cond_2

    .line 243
    const-string v1, "[Mms][Draft][DraftManager]"

    const-string v2, "[getDraftTask] DraftTask is not exist and new one to put into hashmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/android/mms/draft/DraftTask;

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    invoke-direct {v0}, Lcom/android/mms/draft/DraftTask;-><init>()V

    .line 245
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    move-object v1, v0

    .line 271
    goto :goto_0

    .line 248
    :cond_3
    const/16 v2, 0x10

    if-eq p1, v2, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/16 v2, 0x30

    if-eq p1, v2, :cond_4

    const/16 v2, 0x20

    if-ne p1, v2, :cond_6

    .line 252
    :cond_4
    cmp-long v1, p2, v5

    if-gtz v1, :cond_5

    .line 253
    const-string v1, "[Mms][Draft][DraftManager]"

    const-string v2, "[getDraftTask] threadId <= 0 and use 0 to be the id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    check-cast v0, Lcom/android/mms/draft/DraftTask;

    .line 255
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    if-nez v0, :cond_2

    .line 256
    new-instance v0, Lcom/android/mms/draft/DraftTask;

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    invoke-direct {v0}, Lcom/android/mms/draft/DraftTask;-><init>()V

    .line 257
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 260
    :cond_5
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    check-cast v0, Lcom/android/mms/draft/DraftTask;

    .line 261
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    if-nez v0, :cond_2

    .line 262
    const-string v1, "[Mms][Draft][DraftManager]"

    const-string v2, "[getDraftTask] DraftTask is null and create a new one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Lcom/android/mms/draft/DraftTask;

    .end local v0           #dtRe:Lcom/android/mms/draft/DraftTask;
    invoke-direct {v0}, Lcom/android/mms/draft/DraftTask;-><init>()V

    .line 264
    .restart local v0       #dtRe:Lcom/android/mms/draft/DraftTask;
    iget-object v1, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    :cond_6
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[getDraftTask] unknow type to create DraftTask"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/mms/draft/DraftManager;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/mms/draft/DraftManager;->sInstance:Lcom/android/mms/draft/DraftManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/mms/draft/DraftManager;

    invoke-direct {v0}, Lcom/android/mms/draft/DraftManager;-><init>()V

    sput-object v0, Lcom/android/mms/draft/DraftManager;->sInstance:Lcom/android/mms/draft/DraftManager;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/mms/draft/DraftManager;->sInstance:Lcom/android/mms/draft/DraftManager;

    return-object v0
.end method

.method private removeTask()V
    .locals 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/mms/draft/DraftTask;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/draft/DraftTask;

    invoke-virtual {v2}, Lcom/android/mms/draft/DraftTask;->isCleared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "[Mms][Draft][DraftManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeTask] remove task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in task map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Lcom/android/mms/draft/DraftManager;->mTaskMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/mms/draft/DraftTask;>;"
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public loadDraft(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;
    .locals 10
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 172
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 173
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] req is async load action and threadId <= 0, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 176
    :cond_0
    if-nez p5, :cond_1

    .line 177
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    .line 181
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] the type is not load request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 188
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    :cond_3
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] load uri is null or uri is not starts wicht Mms.Draft.CONTENT_URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/draft/DraftManager;->getDraftTask(IJ)Lcom/android/mms/draft/DraftTask;

    move-result-object v8

    .line 197
    .local v8, dt:Lcom/android/mms/draft/DraftTask;
    if-eqz v8, :cond_8

    .line 198
    invoke-virtual {v8, p1}, Lcom/android/mms/draft/DraftTask;->preLoad(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] preLoad return true, and return last save req result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v8}, Lcom/android/mms/draft/DraftTask;->getPreLoadResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p1

    move-wide v1, p2

    move-object v3, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/draft/TaskReq;->createReq(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/TaskReq;

    move-result-object v9

    .line 203
    .local v9, tr:Lcom/android/mms/draft/TaskReq;
    if-eqz v9, :cond_8

    .line 204
    invoke-virtual {v8, v9}, Lcom/android/mms/draft/DraftTask;->addReq(Lcom/android/mms/draft/TaskReq;)V

    .line 205
    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    .line 206
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] do SYNC_LOAD_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v9}, Lcom/android/mms/draft/TaskReq;->waitExecute()V

    .line 208
    invoke-virtual {v9}, Lcom/android/mms/draft/TaskReq;->getResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 210
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] do ASYNC_LOAD_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 213
    :cond_7
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[loadDraft] unknow load req action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 218
    .end local v9           #tr:Lcom/android/mms/draft/TaskReq;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public saveDraft(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;
    .locals 5
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 132
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 133
    :cond_0
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[saveDraft] The parameters maybe is not satisfied the request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v2, 0x0

    .line 159
    :goto_0
    return-object v2

    .line 136
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/16 v2, 0x10

    if-eq p1, v2, :cond_2

    .line 137
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[saveDraft] the request is not save request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    goto :goto_0

    .line 140
    :cond_2
    const-string v2, "[Mms][Draft][DraftManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[saveDraft] begin, threadid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/draft/DraftManager;->getDraftTask(IJ)Lcom/android/mms/draft/DraftTask;

    move-result-object v0

    .line 144
    .local v0, dt:Lcom/android/mms/draft/DraftTask;
    if-eqz v0, :cond_4

    .line 145
    invoke-static/range {p1 .. p8}, Lcom/android/mms/draft/TaskReq;->createReq(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/TaskReq;

    move-result-object v1

    .line 146
    .local v1, tr:Lcom/android/mms/draft/TaskReq;
    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/mms/draft/DraftTask;->addReq(Lcom/android/mms/draft/TaskReq;)V

    .line 148
    const/16 v2, 0x10

    if-ne p1, v2, :cond_3

    .line 149
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[saveDraft] do SYNC_SAVE_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Lcom/android/mms/draft/TaskReq;->waitExecute()V

    .line 151
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[saveDraft] return from waitExecute"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v1}, Lcom/android/mms/draft/TaskReq;->getResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v2

    goto :goto_0

    .line 153
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 154
    const-string v2, "[Mms][Draft][DraftManager]"

    const-string v3, "[saveDraft] do ASYNC_SAVE_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    goto :goto_0

    .line 159
    .end local v1           #tr:Lcom/android/mms/draft/TaskReq;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(IJLandroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Ljava/util/HashMap;)V
    .locals 10
    .parameter "type"
    .parameter "threadId"
    .parameter "context"
    .parameter "uri"
    .parameter "slideshow"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p7, preOpenedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_2

    .line 92
    :cond_0
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[update] The parameters maybe is not satisfied the request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    :cond_3
    const-string v0, "[Mms][Draft][DraftManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update] uri is null or The uri is not start with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_4
    const/16 v0, 0x30

    if-eq p1, v0, :cond_5

    .line 100
    const-string v0, "[Mms][Draft][DraftManager]"

    const-string v1, "[update] the request type is not update request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/draft/DraftManager;->getDraftTask(IJ)Lcom/android/mms/draft/DraftTask;

    move-result-object v8

    .line 106
    .local v8, dt:Lcom/android/mms/draft/DraftTask;
    if-eqz v8, :cond_1

    .line 107
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v0, p1

    move-wide v1, p2

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/android/mms/draft/TaskReq;->createReq(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/TaskReq;

    move-result-object v9

    .line 108
    .local v9, tr:Lcom/android/mms/draft/TaskReq;
    if-eqz v9, :cond_1

    .line 109
    invoke-virtual {v8, v9}, Lcom/android/mms/draft/DraftTask;->addReq(Lcom/android/mms/draft/TaskReq;)V

    .line 110
    const-string v0, "slideshow+++"

    const-string v1, "[update] begin to execute and wait here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v9}, Lcom/android/mms/draft/TaskReq;->waitExecute()V

    .line 112
    const-string v0, "slideshow+++"

    const-string v1, "[update] execute finished, and just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
