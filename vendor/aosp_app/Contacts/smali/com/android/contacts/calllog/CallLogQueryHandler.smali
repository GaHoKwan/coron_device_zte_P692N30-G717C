.class public Lcom/android/contacts/calllog/CallLogQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_ALL:I = -0x1

.field private static final DELETE_CALLS_TOKEN:I = 0x3b

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final NEW_SECTION_TIME_WINDOW:J = 0x0L

.field private static final NUM_LOGS_TO_DISPLAY:I = 0x3e8

.field private static final QUERY_ALL_CALLS_JOIN_DATA_VIEW_TOKEN:I = 0x3e

.field private static final QUERY_ALL_CALLS_TOKEN:I = 0x3c

.field private static final QUERY_NEW_CALLS_TOKEN:I = 0x35

.field private static final QUERY_OLD_CALLS_TOKEN:I = 0x36

.field private static final QUERY_SEARCH_TOKEN:I = 0x3d

.field private static final QUERY_VOICEMAIL_STATUS_TOKEN:I = 0x3a

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHandler"

.field private static final UPDATE_MARK_AS_OLD_TOKEN:I = 0x37

.field private static final UPDATE_MARK_MISSED_CALL_AS_READ_TOKEN:I = 0x39

.field private static final UPDATE_MARK_VOICEMAILS_AS_OLD_TOKEN:I = 0x38


# instance fields
.field private mCallsRequestId:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mOldCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "listener"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 153
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 239
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 240
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 241
    return-void
.end method

.method private fetchCalls(IIII)V
    .locals 8
    .parameter "token"
    .parameter "requestId"
    .parameter "simFilter"
    .parameter "typeFilter"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCalls(), token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->log(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, p3, p4}, Lcom/android/contacts/calllog/CallLogQueryHandler;->getSelection(II)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCalls(),selection ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->log(Ljava/lang/String;)V

    .line 456
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 457
    .local v3, queryUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 459
    .local v4, queryProjection:[Ljava/lang/String;
    const/16 v0, 0x3e

    if-ne v0, p1, :cond_0

    .line 460
    const-string v0, "content://call_log/callsjoindataview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 461
    sget-object v4, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    .line 465
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {v3}, Lcom/mediatek/contacts/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 469
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->refreshData()V

    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "max_time DESC,date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private getSelection(II)Ljava/lang/String;
    .locals 11
    .parameter "simFilter"
    .parameter "typeFilter"

    .prologue
    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v7, builder:Ljava/lang/StringBuilder;
    const/16 v0, 0x4e24

    if-ne v0, p1, :cond_3

    .line 509
    const-string v0, "simid=-2"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    :goto_0
    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_5

    .line 516
    sparse-switch p2, :sswitch_data_0

    .line 530
    const/16 v10, 0x4e2c

    .line 534
    .local v10, t:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 535
    const-string v0, " and "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-ne v10, v0, :cond_4

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type in (4, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .end local v10           #t:I
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 565
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_3
    return-object v0

    .line 510
    :cond_3
    const/16 v0, 0x4e20

    if-ge p1, v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :sswitch_0
    const/4 v10, 0x1

    .line 519
    .restart local v10       #t:I
    goto :goto_1

    .line 521
    .end local v10           #t:I
    :sswitch_1
    const/4 v10, 0x3

    .line 522
    .restart local v10       #t:I
    goto :goto_1

    .line 524
    .end local v10           #t:I
    :sswitch_2
    const/4 v10, 0x2

    .line 525
    .restart local v10       #t:I
    goto :goto_1

    .line 527
    .end local v10           #t:I
    :sswitch_3
    const/4 v10, 0x5

    .line 528
    .restart local v10       #t:I
    goto :goto_1

    .line 542
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 548
    .end local v10           #t:I
    :cond_5
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    const-string v2, " and "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "ExtensionForOP01"

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 551
    .local v9, str:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 552
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_6
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "type"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const-string v6, "ExtensionForOP01"

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 558
    .local v8, callsType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 548
    .end local v8           #callsType:Ljava/lang/String;
    .end local v9           #str:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 567
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x4e2c -> :sswitch_0
        0x4e2d -> :sswitch_1
        0x4e2e -> :sswitch_2
        0x4e35 -> :sswitch_3
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 571
    const-string v0, "CallLogQueryHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private declared-synchronized newCallsRequest()I
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    .line 303
    iget v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mCallsRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mCallsRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .parameter "combinedCursor"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 396
    .local v0, listener:Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 147
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public deleteSpecifiedCalls(Ljava/lang/String;)V
    .locals 6
    .parameter "deleteFilter"

    .prologue
    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 496
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    sget-object v3, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 500
    :cond_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public fetchCallsJionDataView(II)V
    .locals 3
    .parameter "simFilter"
    .parameter "typeFilter"

    .prologue
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchCallsJionDataView(), simFilter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " typeFilter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->log(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 446
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->newCallsRequest()I

    move-result v0

    .line 447
    .local v0, requestId:I
    const/16 v1, 0x3e

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IIII)V

    .line 448
    return-void
.end method

.method public fetchSearchCalls(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 478
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 479
    const-string v0, "fetchSearchCalls(uri )"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->log(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->refreshData()V

    .line 481
    const/16 v1, 0x3d

    sget-object v4, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 286
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 251
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 488
    .local v0, listener:Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onCallsDeleted()V

    .line 491
    :cond_0
    return-void
.end method

.method protected declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 340
    monitor-enter p0

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    .line 341
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1

    .line 345
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 348
    :cond_1
    :try_start_2
    const-string v0, "CallLogQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query completed: ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
