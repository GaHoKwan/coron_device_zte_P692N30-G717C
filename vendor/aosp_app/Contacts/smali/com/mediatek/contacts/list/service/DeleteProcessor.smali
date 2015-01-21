.class public Lcom/mediatek/contacts/list/service/DeleteProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "DeleteProcessor.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsMultiDeletionFragment"

.field private static final MAX_COUNT:I = 0x60f

.field private static final MAX_COUNT_IN_ONE_BATCH:I = 0x32

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x64


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private volatile mIsRunning:Z

.field private final mJobId:I

.field private final mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

.field private mModemSwitchListener:Landroid/content/BroadcastReceiver;

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private mReveiced3GSwitch:Ljava/lang/Boolean;

.field private final mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Ljava/util/List;I)V
    .locals 3
    .parameter "service"
    .parameter "listener"
    .parameter
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/contacts/list/service/MultiChoiceService;",
            "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 409
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mReveiced3GSwitch:Ljava/lang/Boolean;

    .line 411
    new-instance v1, Lcom/mediatek/contacts/list/service/DeleteProcessor$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/list/service/DeleteProcessor$1;-><init>(Lcom/mediatek/contacts/list/service/DeleteProcessor;)V

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mModemSwitchListener:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    .line 67
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p2, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    .line 70
    iput-object p3, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mRequests:Ljava/util/List;

    .line 71
    iput p4, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    .line 73
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "ContactsMultiDeletionFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/contacts/list/service/DeleteProcessor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mReveiced3GSwitch:Ljava/lang/Boolean;

    return-object p1
.end method

.method private actualBatchDelete(Ljava/util/ArrayList;)I
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 277
    const-string v7, "ContactsMultiDeletionFragment"

    const-string v8, "actualBatchDelete"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 282
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v6, whereBuilder:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v5, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 285
    .local v4, questionMarks:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 286
    .local v0, contactId:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v0           #contactId:J
    :cond_2
    const-string v7, "?"

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v8, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v9, "batch"

    const-string v10, "true"

    invoke-virtual {v7, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 295
    .local v2, deleteCount:I
    const-string v7, "ContactsMultiDeletionFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actualBatchDelete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Contacts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isReadyForDelete(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 371
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateIdle(I)Z

    move-result v0

    return v0
.end method

.method private registerReceiver()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method private runInternal()V
    .locals 30

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "ContactsMultiDeletionFragment"

    const-string v3, "Canceled before actually handling"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 151
    :cond_0
    const/16 v27, 0x1

    .line 152
    .local v27, succeessful:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 153
    .local v6, totalItems:I
    const/4 v11, 0x0

    .line 154
    .local v11, successfulItems:I
    const/4 v5, 0x0

    .line 155
    .local v5, currentCount:I
    const/16 v19, 0x64

    .line 156
    .local v19, iBatchDel:I
    const/16 v2, 0x60f

    if-le v6, v2, :cond_1

    .line 157
    const/16 v19, 0x32

    .line 158
    const-string v2, "ContactsMultiDeletionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iBatchDel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 161
    .local v25, startTime:J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v13, contactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v28, 0x0

    .line 164
    .local v28, times:I
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v21, idToSlotHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v24, -0x1

    .line 167
    .local v24, slot:I
    const/16 v23, 0x0

    .line 169
    .local v23, simServiceStarted:Z
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v16, delSimUriMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/net/Uri;>;"
    new-instance v20, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v2, Lcom/mediatek/contacts/list/service/DeleteProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 171
    .local v20, iccProviderTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    new-instance v14, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v2, Lcom/mediatek/contacts/list/service/DeleteProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 172
    .local v14, contactsProviderTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    .line 173
    .local v22, request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mCanceled:Z

    if-eqz v2, :cond_5

    .line 174
    const-string v2, "ContactsMultiDeletionFragment"

    const-string v3, "runInternal run: mCanceled = true, break looper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v22           #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 245
    invoke-virtual {v14}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 246
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->actualBatchDelete(Ljava/util/ArrayList;)I

    .line 247
    invoke-virtual {v14}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 248
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 251
    :cond_4
    const-string v2, "ContactsMultiDeletionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "totaltime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v25

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mCanceled:Z

    if-eqz v2, :cond_e

    .line 254
    const-string v2, "ContactsMultiDeletionFragment"

    const-string v3, "runInternal run: mCanceled = true, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v27, 0x0

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 257
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    sub-int v12, v6, v11

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceled(IIIII)V

    goto/16 :goto_0

    .line 177
    .restart local v22       #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 182
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    const-wide/16 v7, -0x1

    cmp-long v2, v2, v7

    if-lez v2, :cond_d

    .line 184
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    invoke-static {v2, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v24

    .line 186
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "ContactsMultiDeletionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-wide v7, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mReveiced3GSwitch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->isReadyForDelete(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 193
    :cond_6
    const-string v2, "ContactsMultiDeletionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runInternal run: isReadyForDelete("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v27, 0x0

    .line 195
    goto/16 :goto_1

    .line 189
    :cond_7
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto :goto_2

    .line 199
    :cond_8
    if-nez v23, :cond_9

    if-nez v23, :cond_a

    invoke-static/range {v24 .. v24}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 200
    :cond_9
    const-string v2, "ContactsMultiDeletionFragment"

    const-string v3, "runInternal run: sim service is running, we should skip all of sim contacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v23, 0x1

    .line 202
    const/16 v27, 0x0

    .line 203
    goto/16 :goto_1

    .line 206
    :cond_a
    const/4 v15, 0x0

    .line 207
    .local v15, delSimUri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 208
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #delSimUri:Landroid/net/Uri;
    check-cast v15, Landroid/net/Uri;

    .line 214
    .restart local v15       #delSimUri:Landroid/net/Uri;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mSimIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 216
    .local v29, where:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v15, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 218
    .local v17, deleteCount:I
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 219
    if-gtz v17, :cond_c

    .line 220
    const-string v2, "ContactsMultiDeletionFragment"

    const-string v3, "runInternal run: delete the sim contact failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v27, 0x0

    .line 232
    .end local v15           #delSimUri:Landroid/net/Uri;
    .end local v17           #deleteCount:I
    .end local v29           #where:Ljava/lang/String;
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_2

    .line 233
    invoke-virtual {v14}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->actualBatchDelete(Ljava/util/ArrayList;)I

    .line 235
    invoke-virtual {v14}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 236
    const-string v2, "ContactsMultiDeletionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times iBatchDel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 238
    sub-int v2, v6, v5

    const/16 v3, 0x60f

    if-gt v2, v3, :cond_2

    .line 239
    const/16 v19, 0x64

    goto/16 :goto_1

    .line 210
    .restart local v15       #delSimUri:Landroid/net/Uri;
    :cond_b
    invoke-static/range {v24 .. v24}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v15

    .line 211
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 223
    .restart local v17       #deleteCount:I
    .restart local v29       #where:Ljava/lang/String;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 224
    move-object/from16 v0, v22

    iget v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 227
    .end local v15           #delSimUri:Landroid/net/Uri;
    .end local v17           #deleteCount:I
    .end local v29           #where:Ljava/lang/String;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 228
    move-object/from16 v0, v22

    iget v2, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 261
    .end local v22           #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    .line 265
    if-eqz v27, :cond_f

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFinished(III)V

    .line 272
    :goto_5
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "runInternal():IccProviderTiming"

    aput-object v4, v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "runInternal():ContactsProviderTiming"

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    sub-int v12, v6, v11

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFailed(IIIII)V

    goto :goto_5
.end method

.method private unregisterReceiver()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 7
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    const-string v1, "ContactsMultiDeletionFragment"

    const-string v2, "DeleteProcessor received cancel request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 87
    :cond_1
    :try_start_1
    const-string v1, "ContactsMultiDeletionFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cancel]!mIsRunning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mIsRunning:Z

    if-nez v3, :cond_2

    move v0, v6

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mCanceled:Z

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mIsRunning:Z

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    iget v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceled(IIIII)V

    :goto_1
    move v0, v6

    .line 108
    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    iget v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mJobId:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceling(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mIsRunning:Z

    .line 130
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 131
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 132
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->registerReceiver()V

    .line 133
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->runInternal()V

    .line 134
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->unregisterReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    monitor-enter p0

    .line 137
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mDone:Z

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 143
    :cond_0
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 136
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 137
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mDone:Z

    .line 138
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 139
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    throw v0

    .line 138
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
