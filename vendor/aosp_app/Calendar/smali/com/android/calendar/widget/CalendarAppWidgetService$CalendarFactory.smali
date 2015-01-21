.class public Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGD:Z

.field private static final currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mLastRegisterListener:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

.field private static mLoader:Landroid/content/CursorLoader;

.field private static volatile mLock:Ljava/lang/Integer;

.field private static mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

.field private static sLastUpdateTime:J


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private mAllDayColor:I

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastLock:I

.field private mResources:Landroid/content/res/Resources;

.field private mStandardColor:I

.field private final mTimezoneChanged:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 132
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 142
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 165
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 142
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 152
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    .line 154
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 157
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    .line 158
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    .line 159
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    .line 160
    return-void
.end method

.method static synthetic access$000()Landroid/content/CursorLoader;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    return p1
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 431
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    .local v0, model:Lcom/android/calendar/widget/CalendarAppWidgetModel;
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 433
    return-object v0
.end method

.method private calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J
    .locals 9
    .parameter "model"
    .parameter "now"
    .parameter "timeZone"

    .prologue
    .line 441
    invoke-static {p4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getNextMidnightTimeMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 442
    .local v4, minUpdateTime:J
    iget-object v8, p1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 445
    .local v2, event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v6, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 446
    .local v6, start:J
    iget-wide v0, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 449
    .local v0, end:J
    cmp-long v8, p2, v6

    if-gez v8, :cond_1

    .line 450
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 451
    :cond_1
    cmp-long v8, p2, v0

    if-gez v8, :cond_0

    .line 452
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 455
    .end local v0           #end:J
    .end local v2           #event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    .end local v6           #start:J
    :cond_2
    return-wide v4
.end method

.method private createLoaderUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 421
    .local v4, now:J
    sub-long v0, v4, v9

    .line 422
    .local v0, begin:J
    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v4

    add-long v2, v7, v9

    .line 424
    .local v2, end:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 425
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method private static getNextMidnightTimeMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "timezone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 459
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 460
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 461
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 462
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 463
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 464
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 465
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 467
    .local v0, midnightDeviceTz:J
    iput-object p0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 468
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 469
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 470
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 471
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 472
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 473
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 475
    .local v2, midnightHomeTz:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    return-wide v5
.end method

.method private queryForSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method static updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 0
    .parameter "views"
    .parameter "id"
    .parameter "visibility"
    .parameter "string"

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 480
    if-nez p2, :cond_0

    .line 481
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 327
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_0

    .line 330
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 13
    .parameter "position"

    .prologue
    const/16 v12, 0x20

    .line 335
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 336
    :cond_0
    const-wide/16 v3, 0x0

    .line 347
    :goto_0
    return-wide v3

    .line 338
    :cond_1
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 339
    .local v5, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v6, :cond_2

    .line 340
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    int-to-long v3, v6

    goto :goto_0

    .line 342
    :cond_2
    sget-object v6, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    iget v7, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 343
    .local v0, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    const-wide/16 v1, 0x1f

    .line 344
    .local v1, prime:J
    const-wide/16 v3, 0x1

    .line 345
    .local v3, result:J
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 346
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 347
    goto :goto_0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040011

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 188
    .local v0, views:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 23
    .parameter "position"

    .prologue
    .line 194
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    .line 195
    :cond_0
    const/16 v22, 0x0

    .line 314
    :goto_0
    return-object v22

    .line 198
    :cond_1
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    if-nez v2, :cond_2

    .line 199
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040011

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 201
    .local v22, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v14

    .line 204
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 206
    .local v15, launchCalendarPendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f10002c

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 211
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #launchCalendarPendingIntent:Landroid/app/PendingIntent;
    .end local v22           #views:Landroid/widget/RemoteViews;
    :cond_2
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v2, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v2, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    :cond_3
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040012

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 214
    .restart local v22       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v14

    .line 217
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 219
    .restart local v15       #launchCalendarPendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f10002e

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 224
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #launchCalendarPendingIntent:Landroid/app/PendingIntent;
    .end local v22           #views:Landroid/widget/RemoteViews;
    :cond_4
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v2, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 225
    .local v19, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v2, :cond_5

    .line 226
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040010

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 228
    .restart local v22       #views:Landroid/widget/RemoteViews;
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v2, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    .line 229
    .local v10, dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    const v2, 0x7f10000f

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v10           #dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    .end local v22           #views:Landroid/widget/RemoteViews;
    :cond_5
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v2, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 234
    .local v12, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-boolean v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_8

    .line 235
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04003b

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 240
    .restart local v22       #views:Landroid/widget/RemoteViews;
    :goto_1
    iget v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v11

    .line 242
    .local v11, displayColor:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 243
    .local v16, now:J
    iget-boolean v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v2, :cond_9

    iget-wide v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v2, v2, v16

    if-gtz v2, :cond_9

    iget-wide v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v2, v16, v2

    if-gtz v2, :cond_9

    .line 244
    const v2, 0x7f1000c3

    const-string v3, "setBackgroundResource"

    const v4, 0x7f020001

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 251
    :goto_2
    iget-boolean v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v2, :cond_6

    .line 252
    const v2, 0x7f100016

    iget v3, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget-object v4, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 253
    const v2, 0x7f100017

    iget v3, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget-object v4, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 255
    :cond_6
    const v2, 0x7f100015

    iget v3, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget-object v4, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 257
    const v2, 0x7f100013

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    iget v0, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    move/from16 v20, v0

    .line 260
    .local v20, selfAttendeeStatus:I
    iget-boolean v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_c

    .line 261
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 262
    const v2, 0x7f100013

    const-string v3, "setImageResource"

    const v4, 0x7f020060

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 264
    const v2, 0x7f100015

    const-string v3, "setTextColor"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 270
    :goto_3
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_b

    .line 272
    const v2, 0x7f100013

    const-string v3, "setColorFilter"

    invoke-static {v11}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 302
    :goto_4
    iget-wide v5, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 303
    .local v5, start:J
    iget-wide v7, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 305
    .local v7, end:J
    iget-boolean v2, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v21

    .line 307
    .local v21, tz:Ljava/lang/String;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 308
    .local v18, recycle:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v5, v6, v1}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v5

    .line 309
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v7

    .line 311
    .end local v18           #recycle:Landroid/text/format/Time;
    .end local v21           #tz:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-wide v3, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-boolean v9, v12, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    move-result-object v13

    .line 313
    .local v13, fillInIntent:Landroid/content/Intent;
    const v2, 0x7f1000c3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v13}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 238
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v11           #displayColor:I
    .end local v13           #fillInIntent:Landroid/content/Intent;
    .end local v16           #now:J
    .end local v20           #selfAttendeeStatus:I
    .end local v22           #views:Landroid/widget/RemoteViews;
    :cond_8
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04003c

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v22       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 247
    .restart local v11       #displayColor:I
    .restart local v16       #now:J
    :cond_9
    const v2, 0x7f1000c3

    const-string v3, "setBackgroundResource"

    const/high16 v4, 0x7f02

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 266
    .restart local v20       #selfAttendeeStatus:I
    :cond_a
    const v2, 0x7f100013

    const-string v3, "setImageResource"

    const v4, 0x7f020061

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 268
    const v2, 0x7f100015

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAllDayColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 275
    :cond_b
    const v2, 0x7f100013

    const-string v3, "setColorFilter"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 277
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 278
    const v2, 0x7f100015

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 279
    const v2, 0x7f100016

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 280
    const v2, 0x7f100017

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 283
    const v2, 0x7f100013

    const-string v3, "setImageResource"

    const v4, 0x7f020061

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 286
    const v2, 0x7f100013

    const-string v3, "setColorFilter"

    invoke-static {v11}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 289
    :cond_d
    const v2, 0x7f100015

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 290
    const v2, 0x7f100016

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 291
    const v2, 0x7f100017

    const-string v3, "setTextColor"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 292
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 293
    const v2, 0x7f100013

    const-string v3, "setImageResource"

    const v4, 0x7f020060

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 299
    :goto_5
    const v2, 0x7f100013

    const-string v3, "setColorFilter"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 296
    :cond_e
    const v2, 0x7f100013

    const-string v3, "setImageResource"

    const v4, 0x7f020061

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public initLoader(Ljava/lang/String;)V
    .locals 7
    .parameter "selection"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v2

    .line 371
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/calendar/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    .line 373
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 374
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 375
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    .line 376
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 379
    sput-object p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastRegisterListener:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    .line 380
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 381
    return-void

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, selection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 182
    :cond_0
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 21
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 572
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-object v16, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v16

    .line 499
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 500
    const-string v15, "CalendarWidget"

    const-string v17, "Got a closed cursor from onLoadComplete"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit v16

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 504
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    sget-object v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    .line 505
    monitor-exit v16

    goto :goto_0

    .line 508
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 509
    .local v5, now:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 512
    .local v12, tz:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 514
    .local v4, matrixCursor:Landroid/database/MatrixCursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15, v4, v12}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-result-object v15

    sput-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    if-eqz v4, :cond_3

    .line 517
    :try_start_3
    invoke-virtual {v4}, Landroid/database/AbstractCursor;->close()V

    .line 520
    :cond_3
    if-eqz p2, :cond_4

    .line 521
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_4
    sget-object v15, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v6, v12}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J

    move-result-wide v10

    .line 534
    .local v10, triggerTime:J
    cmp-long v15, v10, v5

    if-gez v15, :cond_5

    .line 535
    const-string v15, "CalendarWidget"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Encountered bad trigger time "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10, v11, v5, v6}, Lcom/android/calendar/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-wide/32 v17, 0x1499700

    add-long v10, v5, v17

    .line 539
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-string v17, "alarm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 541
    .local v2, alertManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 544
    .local v7, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v2, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 545
    const/4 v15, 0x1

    invoke-virtual {v2, v15, v10, v11, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 546
    new-instance v8, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 547
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 549
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v17

    sget-wide v19, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    cmp-long v15, v17, v19

    if-eqz v15, :cond_8

    .line 550
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 551
    .local v9, time2:Landroid/text/format/Time;
    sget-wide v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 552
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->normalize(Z)J

    .line 553
    iget v15, v8, Landroid/text/format/Time;->year:I

    iget v0, v9, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    iget v15, v8, Landroid/text/format/Time;->yearDay:I

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    .line 554
    :cond_6
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v13, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 559
    .end local v13           #updateIntent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    sput-wide v17, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 562
    .end local v9           #time2:Landroid/text/format/Time;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 563
    .local v14, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 567
    .local v3, ids:[I
    const v15, 0x7f10002a

    invoke-virtual {v14, v3, v15}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 571
    .end local v3           #ids:[I
    :goto_1
    monitor-exit v16

    goto/16 :goto_0

    .line 516
    .end local v2           #alertManager:Landroid/app/AlarmManager;
    .end local v7           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v8           #time:Landroid/text/format/Time;
    .end local v10           #triggerTime:J
    .end local v14           #widgetManager:Landroid/appwidget/AppWidgetManager;
    :catchall_1
    move-exception v15

    if-eqz v4, :cond_9

    .line 517
    invoke-virtual {v4}, Landroid/database/AbstractCursor;->close()V

    .line 520
    :cond_9
    if-eqz p2, :cond_a

    .line 521
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v15

    .line 569
    .restart local v2       #alertManager:Landroid/app/AlarmManager;
    .restart local v7       #pendingUpdate:Landroid/app/PendingIntent;
    .restart local v8       #time:Landroid/text/format/Time;
    .restart local v10       #triggerTime:J
    .restart local v14       #widgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    const v17, 0x7f10002a

    move/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 591
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 592
    .local v0, result:Landroid/content/BroadcastReceiver$PendingResult;
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 616
    return-void
.end method

.method public resetLoader(Ljava/lang/String;I)V
    .locals 4
    .parameter "selection"
    .parameter "version"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v0

    .line 389
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "CalendarWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalendarAppWidgetService restarLoad uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 391
    :try_start_0
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    .line 392
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastRegisterListener:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    if-eqz v1, :cond_0

    .line 394
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastRegisterListener:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {v1, v2}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 396
    :cond_0
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 397
    sput-object p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastRegisterListener:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    .line 398
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1, p1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 400
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 404
    :goto_0
    return-void

    .line 392
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 403
    :cond_1
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0
.end method
