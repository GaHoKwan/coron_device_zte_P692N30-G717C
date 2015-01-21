.class public Lcom/mediatek/vcalendar/DbOperationHelper;
.super Ljava/lang/Object;
.source "DbOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;,
        Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    }
.end annotation


# static fields
.field static final INSERT_MODE:I = 0x0

.field static final MULTI_ACCOUNT_QUERY_MODE:I = 0x2

.field static final QUERY_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DbOperationHelper"


# instance fields
.field private final mCalendarAccountName:Ljava/lang/String;

.field private final mCalendarIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEventsCursor:Landroid/database/Cursor;

.field private final mMode:I

.field private mQuerySelection:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mVEventsCount:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .parameter "mode"
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    .line 103
    iput p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mMode:I

    .line 104
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "selection"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mQuerySelection:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mMode:I

    .line 121
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    .line 122
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mQuerySelection:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/vcalendar/DbOperationHelper;->initQuery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "DbOperationHelper"

    const-string v1, "Constructor : the query action failed when query events wity the given seletion"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/vcalendar/DbOperationHelper;->initCalendarIdList()V

    .line 128
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .parameter "accountName"
    .parameter "mode"
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    .line 66
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    .line 77
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    .line 79
    iput p2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mMode:I

    .line 80
    iget-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    .line 81
    invoke-direct {p0}, Lcom/mediatek/vcalendar/DbOperationHelper;->queryCalendarId()J

    move-result-wide v0

    .line 82
    .local v0, calendarId:J
    iget-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mQuerySelection:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mQuerySelection:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/vcalendar/DbOperationHelper;->initQuery(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string v2, "DbOperationHelper"

    const-string v3, "Constructor : the query action failed when query events wity the given seletion"

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    return-void
.end method

.method private addEventIdForContentValuesList(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "eventId"
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 506
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private initCalendarIdList()V
    .locals 8

    .prologue
    .line 458
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 474
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 462
    .local v4, position:I
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    :goto_1
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 464
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    const-string v7, "calendar_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 465
    .local v2, idtemp:J
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 466
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    .line 467
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v1           #id:Ljava/lang/Long;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 473
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #idtemp:J
    :cond_3
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method private initQuery(Ljava/lang/String;)Z
    .locals 8
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 441
    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQuery: selection = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "calendar_id"

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 444
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 454
    :goto_0
    return v0

    .line 447
    :cond_0
    invoke-static {v6}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    .line 448
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 452
    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 396
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 397
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 398
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 399
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 402
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;
    .locals 6
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 419
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 420
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 421
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 422
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    if-gt v4, p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 423
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 425
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 426
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 429
    return-object v2
.end method

.method private queryCalendarId()J
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 482
    const-wide/16 v6, -0x1

    .line 483
    .local v6, calendarId:J
    const-string v0, "PC Sync"

    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const-wide/16 v6, 0x1

    .line 501
    :cond_0
    :goto_0
    return-wide v6

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, select:Ljava/lang/String;
    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAccountListView() Select = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 491
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 492
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 493
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 496
    :cond_2
    if-eqz v8, :cond_0

    .line 497
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 497
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public addNextContentValue(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;Z)Landroid/net/Uri;
    .locals 16
    .parameter "cntValues"
    .parameter "isEnd"

    .prologue
    .line 132
    const/4 v11, 0x0

    .line 133
    .local v11, result:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/vcalendar/DbOperationHelper;->mMode:I

    if-eqz v13, :cond_0

    .line 134
    const-string v13, "DbOperationHelper"

    const-string v14, "Write to DB method only can be called in INSERT_MODE"

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v11

    .line 181
    .end local v11           #result:Landroid/net/Uri;
    .local v12, result:Landroid/net/Uri;
    :goto_0
    return-object v12

    .line 137
    .end local v12           #result:Landroid/net/Uri;
    .restart local v11       #result:Landroid/net/Uri;
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move-object v12, v11

    .line 138
    .end local v11           #result:Landroid/net/Uri;
    .restart local v12       #result:Landroid/net/Uri;
    goto :goto_0

    .line 140
    .end local v12           #result:Landroid/net/Uri;
    .restart local v11       #result:Landroid/net/Uri;
    :cond_1
    if-eqz p1, :cond_4

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 142
    .local v1, alarmSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 143
    .local v3, attendeesSize:I
    const-string v13, "DbOperationHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNextContentValue,isEnd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v13, "DbOperationHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNextContentValue,Alarms count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v13, "DbOperationHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNextContentValue,Attendees count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 150
    .local v7, eventIdIndex:I
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    #getter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mEventValues:Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->access$000(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 152
    .local v4, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    #getter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAlarmsValuesList:Ljava/util/LinkedList;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->access$100(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 156
    .local v10, reminder:Landroid/content/ContentValues;
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 157
    const-string v13, "event_id"

    invoke-virtual {v4, v13, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v10           #reminder:Landroid/content/ContentValues;
    :cond_2
    #getter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAttendeesValuesList:Ljava/util/LinkedList;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->access$200(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 162
    .local v2, attendee:Landroid/content/ContentValues;
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 163
    const-string v13, "event_id"

    invoke-virtual {v4, v13, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 164
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    .end local v2           #attendee:Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x0

    .line 168
    .local v5, cpr:[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "com.android.calendar"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 174
    :goto_3
    if-eqz v5, :cond_5

    const/4 v13, 0x0

    aget-object v13, v5, v13

    if-eqz v13, :cond_5

    .line 175
    const/4 v13, 0x0

    aget-object v13, v5, v13

    iget-object v11, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 176
    const-string v13, "DbOperationHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNextContentValue: Add event="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #alarmSize:I
    .end local v3           #attendeesSize:I
    .end local v4           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #cpr:[Landroid/content/ContentProviderResult;
    .end local v7           #eventIdIndex:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    :goto_4
    move-object v12, v11

    .line 181
    .end local v11           #result:Landroid/net/Uri;
    .restart local v12       #result:Landroid/net/Uri;
    goto/16 :goto_0

    .line 169
    .end local v12           #result:Landroid/net/Uri;
    .restart local v1       #alarmSize:I
    .restart local v3       #attendeesSize:I
    .restart local v4       #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v5       #cpr:[Landroid/content/ContentProviderResult;
    .restart local v7       #eventIdIndex:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v11       #result:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 171
    .end local v6           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v6

    .line 172
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 178
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v13, "DbOperationHelper"

    const-string v14, "addNextContentValue: Add event failed."

    invoke-static {v13, v14}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getCalendarIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextVEventInfo()Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v2

    .line 212
    :cond_1
    new-instance v10, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;

    invoke-direct {v10}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;-><init>()V

    .line 213
    .local v10, mSingleEventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v0

    #setter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mVEventCursor:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->access$302(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 214
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    const-string v3, "calendar_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalId:J
    invoke-static {v10, v0, v1}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->access$402(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;J)J

    .line 215
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarAccountName:Ljava/lang/String;

    #setter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalendarName:Ljava/lang/String;
    invoke-static {v10, v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->access$502(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-wide/16 v8, -0x1

    .line 219
    .local v8, eventId:J
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 225
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v11, 0x0

    .line 231
    .local v11, rem:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 232
    if-nez v11, :cond_2

    .line 233
    const-string v0, "DbOperationHelper"

    const-string v1, "getNextVEventInfo, Get the reminder failed."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v11           #rem:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException:\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #rem:Landroid/database/Cursor;
    :cond_2
    invoke-static {v11}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    #setter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->access$602(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 237
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 240
    const/4 v6, 0x0

    .line 241
    .local v6, attendees:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    if-nez v6, :cond_3

    .line 243
    const-string v0, "DbOperationHelper"

    const-string v1, "getNextVEventInfo, Get the reminder failed."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_3
    invoke-static {v6}, Lcom/mediatek/vcalendar/DbOperationHelper;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    #setter for: Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->access$702(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object v2, v10

    .line 253
    goto/16 :goto_0
.end method

.method public getVEventCount()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    return v0
.end method

.method public hasNextVEvent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGivenIdEventExisted(J)Z
    .locals 8
    .parameter "eventId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, select:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/vcalendar/DbOperationHelper;->initQuery(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 266
    const-string v4, "DbOperationHelper"

    const-string v5, "isGivenIdEventExist(), query event cursor result is null"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return v3

    .line 270
    :cond_0
    iput v4, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mVEventsCount:I

    .line 271
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 273
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mEventsCursor:Landroid/database/Cursor;

    const-string v7, "calendar_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 274
    .local v0, calendarId:J
    iget-object v5, p0, Lcom/mediatek/vcalendar/DbOperationHelper;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    .line 276
    const-string v4, "DbOperationHelper"

    const-string v5, "the Given Id Event must has the calendarId column"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 279
    goto :goto_0
.end method
