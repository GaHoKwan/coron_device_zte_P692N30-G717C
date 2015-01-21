.class public Lcom/android/calendar/agenda/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;
.implements Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field static final BASICLOG:Z = false

.field static final DEBUGLOG:Z = false

.field private static final HEADER_VIEW_MAX_COUNT:I = 0x3

.field private static final IDEAL_NUM_OF_EVENTS:I = 0x32

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_CAN_ORGANIZER_RESPOND:I = 0xf

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_INSTANCE_ID:I = 0x0

.field public static final INDEX_ORGANIZER:I = 0xd

.field public static final INDEX_OWNER_ACCOUNT:I = 0xe

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_TIME_ZONE:I = 0x10

.field public static final INDEX_TITLE:I = 0x1

.field private static final MAX_NUM_OF_ADAPTERS:I = 0x5

.field private static final MAX_QUERY_DURATION:I = 0x3c

.field private static final MIN_QUERY_DURATION:I = 0x7

.field private static final OFF_BY_ONE_BUG:I = 0x1

.field private static final PREFETCH_BOUNDARY:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TYPE_CLEAN:I = 0x2

.field private static final QUERY_TYPE_NEWER:I = 0x1

.field private static final QUERY_TYPE_OLDER:I = 0x0

.field private static final RETRIES_ON_NO_DATA:I = 0x1

.field private static final SLOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "AgendaWindowAdapter"

.field private static sTopDeviationInfo:[I


# instance fields
.field headerFooterOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private final mBlankView:Landroid/widget/LinearLayout;

.field mCleanQueryInitiated:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataChangedHandler:Landroid/os/Handler;

.field private final mDataChangedRunnable:Ljava/lang/Runnable;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field private final mFooterView:Landroid/widget/TextView;

.field private final mFormatter:Ljava/util/Formatter;

.field private mHasBlankView:Z

.field private final mHeaderView:Landroid/widget/TextView;

.field private mHideDeclined:Z

.field private final mIsTabletConfig:Z

.field private final mItemRightMargin:F

.field private mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

.field mListViewScrollState:I

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private final mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

.field private final mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mSearchQuery:Ljava/lang/String;

.field private mSelectedInstanceId:J

.field private final mSelectedItemBackgroundColor:I

.field private final mSelectedItemTextColor:I

.field private mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

.field private final mShowEventOnStart:Z

.field private mShuttingDown:Z

.field private mStickyHeaderSize:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 113
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "eventLocation"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const-string v1, "displayColor"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v0, v4

    .line 181
    :cond_0
    new-array v0, v3, [I

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V
    .locals 8
    .parameter "context"
    .parameter "agendaListView"
    .parameter "showEventOnStart"

    .prologue
    const v7, 0x7f040009

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 392
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 166
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 168
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 172
    iput-boolean v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 175
    iput-boolean v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 180
    const/16 v2, 0x2c

    iput v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 212
    new-instance v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 220
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDataChangedHandler:Landroid/os/Handler;

    .line 221
    new-instance v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDataChangedRunnable:Ljava/lang/Runnable;

    .line 232
    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 237
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 589
    iput-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1494
    new-instance v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$3;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->headerFooterOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 393
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    .line 395
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    .line 397
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    .line 398
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mItemRightMargin:F

    .line 399
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f090006

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    .line 401
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 403
    new-instance v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 406
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    .line 408
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    .line 411
    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-nez v2, :cond_0

    .line 412
    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 414
    :cond_0
    iput-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 416
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 418
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    .line 419
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    .line 420
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 422
    const v2, 0x7f040005

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mBlankView:Landroid/widget/LinearLayout;

    .line 423
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mBlankView:Landroid/widget/LinearLayout;

    const v3, 0x7f10000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 424
    .local v1, tView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findStartTimeFromPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->SLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$2304(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$2408(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2508(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$3012(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mBlankView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustQueryRange(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 5
    .parameter "queryData"

    .prologue
    const v4, 0x259d23

    const v3, 0x253d8c

    const/4 v2, 0x2

    .line 1543
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-le v0, v4, :cond_1

    .line 1545
    iput v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1546
    const-string v0, "AgendaWindowAdapter"

    const-string v1, "limitQueryData, reset end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_1
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v0, :cond_3

    :cond_2
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-ge v0, v3, :cond_3

    .line 1550
    iput v3, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1551
    const-string v0, "AgendaWindowAdapter"

    const-string v1, "limitQueryData, reset start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_3
    return-void
.end method

.method private buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 9
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "isDayHeader"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 683
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 684
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 688
    :goto_0
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 689
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 690
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 691
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    .line 693
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 694
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_4

    .line 695
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 697
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 707
    .end local v1           #time:Landroid/text/format/Time;
    :cond_0
    :goto_2
    if-nez p3, :cond_1

    .line 708
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_5

    .line 709
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 710
    .restart local v1       #time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 711
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 716
    .end local v1           #time:Landroid/text/format/Time;
    :goto_3
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    .line 718
    :cond_1
    return-object v0

    .line 686
    .end local v0           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .restart local v0       #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_3
    move v2, v3

    .line 693
    goto :goto_1

    .line 698
    :cond_4
    if-eqz p3, :cond_0

    .line 699
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 700
    .restart local v1       #time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 701
    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 702
    iput v3, v1, Landroid/text/format/Time;->minute:I

    .line 703
    iput v3, v1, Landroid/text/format/Time;->second:I

    .line 704
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_2

    .line 713
    .end local v1           #time:Landroid/text/format/Time;
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    goto :goto_3
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 855
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method private buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "searchQuery"

    .prologue
    .line 860
    if-nez p3, :cond_1

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 863
    .local v1, rootUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 864
    .local v0, builder:Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 865
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 866
    if-eqz p3, :cond_0

    .line 867
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 869
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 860
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #rootUri:Landroid/net/Uri;
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 882
    const/16 v0, 0x3c

    .line 883
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 884
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 887
    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 888
    const/16 v0, 0x3c

    .line 893
    :cond_1
    :goto_0
    return v0

    .line 889
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 890
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private checkQueryRange(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .parameter "queryData"

    .prologue
    const/4 v3, 0x1

    .line 1522
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1523
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v1, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1524
    .local v1, start:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1525
    .local v0, end:I
    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v2, :cond_0

    const v2, 0x253d8c

    if-le v1, v2, :cond_1

    :cond_0
    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v2, v3, :cond_2

    const v2, 0x259d23

    if-lt v0, v2, :cond_2

    .line 1531
    :cond_1
    const-string v2, "AgendaWindowAdapter"

    const-string v3, "preHandleQuery: out of range, do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/4 v2, 0x0

    .line 1535
    .end local v0           #end:I
    .end local v1           #start:I
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .parameter "queryData"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 928
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 930
    .local v10, start:I
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 931
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 932
    .local v9, queryDuration:I
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 945
    :goto_0
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v4, :cond_1

    .line 954
    iput v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 956
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-le v0, v10, :cond_0

    .line 957
    iput v10, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 959
    :cond_0
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v0, v8, :cond_1

    .line 960
    iput v8, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 966
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->adjustQueryRange(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 977
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 980
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 982
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    sget-object v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return-void

    .line 934
    .end local v3           #queryUri:Landroid/net/Uri;
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_0
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 935
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 938
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 939
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 4
    .parameter "time"
    .parameter "id"

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 593
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v1, -0x1

    .line 594
    .local v1, pos:I
    if-eqz v0, :cond_0

    .line 595
    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v3

    add-int v1, v2, v3

    .line 598
    :cond_0
    return v1
.end method

.method private findInstanceIdFromPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1415
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1416
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1417
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getInstanceId(I)J

    move-result-wide v1

    .line 1419
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private findStartTimeFromPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1423
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1424
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1425
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getStartTime(I)J

    move-result-wide v1

    .line 1427
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 9
    .parameter "julianDay"

    .prologue
    const/4 v1, 0x0

    .line 988
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 989
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 990
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 991
    .local v2, millis:J
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "time"

    .prologue
    .line 621
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 622
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 623
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 624
    .local v0, day:I
    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 625
    :try_start_0
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 626
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_0

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_0

    .line 627
    monitor-exit v7

    .line 631
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v2

    .line 630
    :cond_1
    monitor-exit v7

    .line 631
    const/4 v2, 0x0

    goto :goto_0

    .line 630
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private getCursorByPosition(I)Landroid/database/Cursor;
    .locals 2
    .parameter "position"

    .prologue
    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1433
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1434
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1436
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCursorPositionByPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1440
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1441
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1442
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v1

    .line 1444
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static getViewTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .parameter "x"

    .prologue
    .line 1362
    const-string v1, ""

    .line 1363
    .local v1, title:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1364
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1365
    .local v3, yy:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_1

    .line 1366
    check-cast v3, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v2, v3, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 1367
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1368
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1377
    .end local v2           #tv:Landroid/widget/TextView;
    .restart local v1       #title:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1370
    .restart local v3       #yy:Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    .line 1371
    check-cast v3, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v0, v3, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 1372
    .local v0, dateView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private isInRange(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 873
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    monitor-exit v2

    move v0, v1

    .line 877
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 877
    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "queryType"

    .prologue
    .line 804
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 807
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    .line 808
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 809
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 815
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 816
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 817
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 819
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 843
    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 810
    .end local v4           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 811
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 813
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 823
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 824
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    .line 825
    const/4 v1, 0x0

    .line 828
    .local v1, deletedRows:I
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 829
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_6

    .line 831
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 832
    iget v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 833
    move-object v3, v2

    .line 835
    :cond_6
    if-nez v2, :cond_5

    .line 837
    if-eqz v3, :cond_7

    .line 838
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 839
    iput v1, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 843
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "searchQuery"
    .parameter "queryType"
    .parameter "id"

    .prologue
    .line 898
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p5}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 899
    .local v0, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 900
    iput p1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 901
    iput p2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 902
    iput-object p4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 903
    iput-wide p6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    .line 904
    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .parameter "queryData"

    .prologue
    const/4 v2, 0x0

    .line 909
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->checkQueryRange(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 924
    :goto_0
    return v2

    .line 913
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 915
    sget-object v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->SLOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 916
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 917
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 918
    .local v0, doQueryNow:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 919
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 920
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 923
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 923
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static setTopDeviation([I)V
    .locals 4
    .parameter "topDeviationInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    aget v1, p0, v2

    aput v1, v0, v2

    .line 260
    sget-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    aget v1, p0, v3

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateHeaderFooter(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 998
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0092

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0093

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    return-void
.end method


# virtual methods
.method public OnHeaderHeightChanged(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1482
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 1483
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    .line 797
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 798
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 801
    :cond_0
    return-void
.end method

.method protected getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .parameter "position"

    .prologue
    .line 602
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 615
    :goto_0
    return-object v1

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 608
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1

    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1

    .line 610
    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 611
    monitor-exit v3

    goto :goto_0

    .line 614
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 1
    .parameter "positionInListView"

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 7
    .parameter "positionInListView"
    .parameter "returnEventStartDay"

    .prologue
    const/4 v1, 0x0

    .line 649
    if-gez p1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-object v1

    .line 653
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 654
    .local v4, positionInAdapter:I
    invoke-virtual {p0, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 655
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_0

    .line 659
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 660
    .local v0, cursorPosition:I
    const/high16 v5, -0x8000

    if-eq v0, v5, :cond_0

    .line 664
    const/4 v3, 0x0

    .line 665
    .local v3, isDayHeader:Z
    if-gez v0, :cond_2

    .line 666
    neg-int v0, v0

    .line 667
    const/4 v3, 0x1

    .line 670
    :cond_2
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 671
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v5, v0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 672
    .local v1, ei:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez p2, :cond_0

    if-nez v3, :cond_0

    .line 673
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v5

    iput v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    goto :goto_0
.end method

.method public getHeaderItemsNumber(I)I
    .locals 3
    .parameter "headerPosition"

    .prologue
    const/4 v1, -0x1

    .line 1470
    if-ltz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return v1

    .line 1473
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1474
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1475
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderItemsCount(I)I

    move-result v1

    goto :goto_0
.end method

.method public getHeaderPositionFromItemPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 1455
    iget-boolean v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v3, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return v2

    .line 1459
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1460
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1461
    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v1

    .line 1462
    .local v1, pos:I
    if-eq v1, v2, :cond_0

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 471
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 472
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 8
    .parameter "position"

    .prologue
    const-wide/16 v2, -0x1

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 488
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v1, :cond_0

    .line 489
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 490
    .local v0, curPos:I
    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_1

    .line 503
    .end local v0           #curPos:I
    :cond_0
    :goto_0
    return-wide v2

    .line 494
    .restart local v0       #curPos:I
    :cond_1
    if-ltz v0, :cond_2

    .line 495
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 496
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    iget-object v6, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    goto :goto_0

    .line 500
    :cond_2
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 445
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 448
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 1406
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method public getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method public getStickyHeaderHeight()I
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-lt v0, v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v12, v13, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 513
    new-instance v12, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 516
    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ge v0, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v12, v13, :cond_1

    .line 519
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 520
    new-instance v12, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 524
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 525
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_5

    .line 526
    iget v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v12

    .line 527
    .local v4, offset:I
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 532
    .local v9, v:Landroid/view/View;
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v12, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isDayHeaderView(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 533
    const v12, 0x7f10000c

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 534
    .local v7, simpleDivider:Landroid/view/View;
    const v12, 0x7f10000d

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 535
    .local v5, pastPresentDivider:Landroid/view/View;
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v12, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isFirstDayAfterYesterday(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 536
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 537
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 538
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .end local v4           #offset:I
    .end local v5           #pastPresentDivider:Landroid/view/View;
    .end local v7           #simpleDivider:Landroid/view/View;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v12, :cond_6

    .line 586
    :cond_3
    :goto_1
    return-object v9

    .line 540
    .restart local v4       #offset:I
    .restart local v5       #pastPresentDivider:Landroid/view/View;
    .restart local v7       #simpleDivider:Landroid/view/View;
    :cond_4
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 541
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 542
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 547
    .end local v4           #offset:I
    .end local v5           #pastPresentDivider:Landroid/view/View;
    .end local v7           #simpleDivider:Landroid/view/View;
    .end local v9           #v:Landroid/view/View;
    :cond_5
    const-string v12, "AgendaWindowAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 549
    .local v8, tv:Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bug! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    move-object v9, v8

    .restart local v9       #v:Landroid/view/View;
    goto :goto_0

    .line 558
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x0

    .line 559
    .local v6, selected:Z
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 560
    .local v11, yy:Ljava/lang/Object;
    instance-of v12, v11, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v12, :cond_3

    move-object v10, v11

    .line 561
    check-cast v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 562
    .local v10, vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-wide v14, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    const/4 v6, 0x1

    .line 563
    :goto_2
    iget-object v13, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 565
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_3

    .line 566
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    .line 568
    .local v3, lp:Landroid/widget/GridLayout$LayoutParams;
    if-eqz v6, :cond_9

    .line 569
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 570
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 571
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 575
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 562
    .end local v3           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 563
    :cond_8
    const/16 v12, 0x8

    goto :goto_3

    .line 577
    .restart local v3       #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mItemRightMargin:F

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 578
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 456
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 457
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 459
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1382
    return-void
.end method

.method public refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .locals 25
    .parameter "goToTime"
    .parameter "id"
    .parameter "searchQuery"
    .parameter "forced"
    .parameter "refreshEventInfo"

    .prologue
    .line 723
    if-eqz p4, :cond_0

    .line 724
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 734
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 736
    .local v9, startDay:I
    if-nez p5, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->isEventVisible(Landroid/text/format/Time;J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 739
    invoke-direct/range {p0 .. p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v20

    .line 740
    .local v20, gotoPosition:I
    if-lez v20, :cond_2

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 743
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 746
    :cond_1
    if-eqz p6, :cond_2

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v21

    .line 748
    .local v21, newInstanceId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-eqz v3, :cond_2

    .line 749
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDataChangedHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDataChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 751
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v23

    .line 752
    .local v23, tempCursor:Landroid/database/Cursor;
    if-eqz v23, :cond_2

    .line 753
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v24

    .line 754
    .local v24, tempCursorPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 757
    .local v19, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x2

    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v19

    iget-wide v9, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .end local v9           #startDay:I
    move-object/from16 v0, v19

    iget-wide v11, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    invoke-static {v4, v15}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v15

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v18}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 768
    .end local v19           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v21           #newInstanceId:J
    .end local v23           #tempCursor:Landroid/database/Cursor;
    .end local v24           #tempCursorPosition:I
    :cond_2
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 769
    .local v7, actualTime:Landroid/text/format/Time;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 793
    .end local v7           #actualTime:Landroid/text/format/Time;
    .end local v20           #gotoPosition:I
    :cond_3
    :goto_0
    return-void

    .line 777
    .restart local v9       #startDay:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    if-eqz v3, :cond_5

    if-eqz p4, :cond_3

    .line 779
    :cond_5
    add-int/lit8 v10, v9, 0x7

    .line 781
    .local v10, endDay:I
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 782
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 783
    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-wide/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 788
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 789
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 790
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 791
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    goto :goto_0
.end method

.method public saveTopDeviation(Landroid/text/format/Time;J)[I
    .locals 9
    .parameter "time"
    .parameter "eventId"

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 276
    .local v2, firstVisiblePosition:I
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, firstChildView:Landroid/view/View;
    if-nez v0, :cond_0

    move v4, v5

    .line 279
    .local v4, topDeviation:I
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 280
    .local v1, firstItemOnSameTime:I
    sub-int v3, v2, v1

    .line 282
    .local v3, itemNum:I
    const-string v6, "AgendaWindowAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", eventId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", firstVisiblePosition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", firstItemOnSameTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", itemNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", topDeviation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v6, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    aput v3, v6, v5

    .line 288
    sget-object v5, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 290
    sget-object v5, Lcom/android/calendar/agenda/AgendaWindowAdapter;->sTopDeviationInfo:[I

    return-object v5

    .line 277
    .end local v1           #firstItemOnSameTime:I
    .end local v3           #itemNum:I
    .end local v4           #topDeviation:I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_0
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .parameter "hideDeclined"

    .prologue
    .line 1385
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1386
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1490
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 1491
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 1
    .parameter "selectedInstanceId"

    .prologue
    .line 1410
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1412
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1389
    if-eqz p1, :cond_0

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1391
    .local v0, vh:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 1392
    check-cast v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v0           #vh:Ljava/lang/Object;
    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1393
    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    iget-wide v3, v3, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    iget-wide v1, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1395
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1399
    :cond_0
    return-void
.end method
