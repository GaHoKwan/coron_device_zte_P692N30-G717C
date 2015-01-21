.class public Lcom/android/calendar/agenda/AgendaFragment;
.super Landroid/app/Fragment;
.source "AgendaFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_INSTANCE_ID:Ljava/lang/String; = "key_restore_instance_id"

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field protected static final BUNDLE_KEY_RESTORE_TOP_DEVIATION:Ljava/lang/String; = "key_restore_top_deviation"

.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mEventFragment:Lcom/android/calendar/EventInfoFragment;

.field private mForceReplace:Z

.field private final mInitialTimeMillis:J

.field private mIsTabletConfig:Z

.field mJulianDayOnTop:I

.field private mLastHandledEventId:J

.field private mLastHandledEventTime:Landroid/text/format/Time;

.field private mLastShownEventId:J

.field private mOnAttachAllDay:Z

.field private mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

.field private mOriginalTime:Landroid/text/format/Time;

.field private mQuery:Ljava/lang/String;

.field private mShowEventDetailsWithAgenda:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mUsedForSearch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 5
    .parameter "timeMillis"
    .parameter "usedForSearch"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 68
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 69
    iput-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    .line 70
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    .line 72
    iput-wide v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 80
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaFragment$1;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 423
    iput-wide v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 424
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 566
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    .line 96
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    .line 98
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 99
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 101
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 102
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 104
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 110
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 111
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getTimeOnTopEvent()Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaFragment;)Lcom/android/calendar/CalendarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method private getTimeOnTopEvent()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 558
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, t:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 560
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 561
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 562
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOriginalTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 563
    return-object v0
.end method

.method private goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V
    .locals 12
    .parameter "event"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    .line 380
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_2

    .line 397
    :goto_1
    return-void

    .line 382
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 393
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v7

    .line 395
    .local v7, vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    if-eqz v7, :cond_4

    iget-boolean v0, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    :goto_3
    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V

    .line 396
    iput-boolean v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    goto :goto_1

    .end local v7           #vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_3
    move v6, v5

    .line 390
    goto :goto_2

    .restart local v7       #vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_4
    move v0, v5

    .line 395
    goto :goto_3
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 7
    .parameter "query"
    .parameter "time"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    .line 401
    if-eqz p2, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_1

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V
    .locals 20
    .parameter "event"
    .parameter "allDay"
    .parameter "replaceFragment"

    .prologue
    .line 450
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 451
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEventInfo, event ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    .line 458
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    .line 460
    .local v16, fragmentManager:Landroid/app/FragmentManager;
    if-nez v16, :cond_2

    .line 463
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 464
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    .line 469
    .local v17, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_3

    .line 470
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 474
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 475
    .local v18, startMillis:J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 476
    .local v13, endMillis:J
    const v2, 0x7f100012

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/EventInfoFragment;

    .line 478
    .local v15, fOld:Lcom/android/calendar/EventInfoFragment;
    if-eqz v15, :cond_4

    if-nez p3, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-nez v2, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-nez v2, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 480
    :cond_4
    new-instance v2, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v12}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    .line 484
    const v2, 0x7f100012

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    const v3, 0x7f100012

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 487
    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 489
    :cond_5
    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->reloadEvents()V

    goto/16 :goto_0
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 416
    :cond_0
    return-void
.end method

.method protected extFindListView(Landroid/view/View;)Lcom/android/calendar/agenda/AgendaListView;
    .locals 1
    .parameter "v"

    .prologue
    .line 550
    const v0, 0x7f100011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method protected extInflateFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 541
    const v0, 0x7f040008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastShowEventId()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    return-wide v0
.end method

.method public getSupportedEventTypes()J
    .locals 4

    .prologue
    .line 420
    const-wide/16 v2, 0xa0

    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    :goto_0
    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 427
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 431
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 432
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaFragment;->goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    .line 440
    :cond_0
    :goto_1
    return-void

    .line 432
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    goto :goto_0

    .line 435
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 436
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    goto :goto_1

    .line 437
    :cond_3
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->eventsChanged()V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    .line 119
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 123
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const-wide/16 v4, -0x1

    .line 127
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090006

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 144
    .local v0, prevTime:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 146
    sget-boolean v2, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring time to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0           #prevTime:J
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090003

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v10, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    .local v10, screenWidth:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/agenda/AgendaFragment;->extInflateFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v12

    .line 164
    .local v12, v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/calendar/agenda/AgendaFragment;->extFindListView(Landroid/view/View;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 168
    if-eqz p3, :cond_1

    .line 169
    const-string v13, "key_restore_instance_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 170
    .local v4, instanceId:J
    const-wide/16 v13, -0x1

    cmp-long v13, v4, v13

    if-eqz v13, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v13, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->setSelectedInstanceId(J)V

    .line 178
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v13, :cond_1

    .line 179
    const-string v13, "key_restore_top_deviation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 181
    .local v7, listTopDeviationInfo:[I
    invoke-static {v7}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setTopDeviation([I)V

    .line 185
    .end local v4           #instanceId:J
    .end local v7           #listTopDeviationInfo:[I
    :cond_1
    const v13, 0x7f100012

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, eventView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v13, :cond_2

    .line 187
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_2
    const v13, 0x7f100010

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/StickyHeaderListView;

    .line 194
    .local v8, lv:Lcom/android/calendar/StickyHeaderListView;
    if-eqz v8, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 196
    .local v1, a:Landroid/widget/Adapter;
    invoke-virtual {v8, v1}, Lcom/android/calendar/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 197
    instance-of v13, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_3

    .line 198
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1           #a:Landroid/widget/Adapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    .line 211
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/calendar/StickyHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08003c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Lcom/android/calendar/StickyHeaderListView;->setHeaderSeparator(II)V

    .line 213
    move-object v11, v8

    .line 222
    .local v11, topListView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v13, :cond_6

    .line 223
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 224
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    return-object v12

    .line 201
    .end local v11           #topListView:Landroid/view/View;
    .restart local v1       #a:Landroid/widget/Adapter;
    :cond_3
    instance-of v13, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v13, :cond_4

    .line 202
    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .end local v1           #a:Landroid/widget/Adapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v8, v13}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    goto :goto_0

    .line 206
    .restart local v1       #a:Landroid/widget/Adapter;
    :cond_4
    sget-object v13, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    const-string v14, "Cannot find HeaderIndexer for StickyHeaderListView"

    invoke-static {v13, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v1           #a:Landroid/widget/Adapter;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .restart local v11       #topListView:Landroid/view/View;
    goto :goto_1

    .line 227
    :cond_6
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 228
    .local v6, listParams:Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v13, v10, 0x4

    div-int/lit8 v13, v13, 0xa

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 229
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 231
    .local v2, detailsParams:Landroid/view/ViewGroup$LayoutParams;
    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v13, v10, v13

    iput v13, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onPause()V

    .line 370
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 377
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 240
    sget-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 246
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 249
    .local v7, hideDeclined:Z
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0, v7}, Lcom/android/calendar/agenda/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 250
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 253
    iput-wide v9, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onResume()V

    .line 267
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    move-wide v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 14
    .parameter "outState"

    .prologue
    .line 271
    sget-boolean v10, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 272
    sget-object v10, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OnSaveInstanceState start time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v10, :cond_1

    .line 345
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v10, :cond_5

    .line 279
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    if-eqz v10, :cond_4

    .line 280
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 281
    .local v8, timeToSave:J
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 286
    :goto_1
    const-string v10, "key_restore_time"

    invoke-virtual {p1, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v10, v8, v9}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 336
    .end local v8           #timeToSave:J
    :goto_2
    sget-boolean v10, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 337
    sget-object v10, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSaveInstanceState "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v12}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v10}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedInstanceId()J

    move-result-wide v6

    .line 341
    .local v6, selectedInstance:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_3

    .line 342
    const-string v10, "key_restore_instance_id"

    invoke-virtual {p1, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 283
    .end local v6           #selectedInstance:J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 284
    .restart local v8       #timeToSave:J
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v10, v8, v9}, Landroid/text/format/Time;->set(J)V

    goto :goto_1

    .line 289
    .end local v8           #timeToSave:J
    :cond_5
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v10}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleEvent()Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 295
    .local v0, e:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 296
    .local v1, firstVisblePos:I
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v10}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCount()I

    move-result v4

    .line 297
    .local v4, itemCount:I
    if-nez v0, :cond_8

    .line 298
    if-nez v1, :cond_6

    if-lez v4, :cond_6

    .line 299
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 306
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 307
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v10, v0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime(Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;)J

    move-result-wide v2

    .line 308
    .local v2, firstVisibleTime:J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_9

    .line 309
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v10, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 310
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v10, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 311
    const-string v10, "key_restore_time"

    invoke-virtual {p1, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 318
    :goto_4
    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    iput-wide v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    .line 324
    iget-wide v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    iput-wide v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 325
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iput-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 331
    .end local v2           #firstVisibleTime:J
    :cond_7
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v11, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastShownEventId:J

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->saveTopDeviation(Landroid/text/format/Time;J)[I

    move-result-object v5

    .line 333
    .local v5, listTopDeviationInfo:[I
    const-string v10, "key_restore_top_deviation"

    invoke-virtual {p1, v10, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_2

    .line 301
    .end local v5           #listTopDeviationInfo:[I
    :cond_8
    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 302
    if-lez v4, :cond_6

    .line 303
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    add-int/lit8 v11, v1, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    goto :goto_3

    .line 313
    .restart local v2       #firstVisibleTime:J
    :cond_9
    sget-object v10, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "firstVisibleTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->getJulianDayFromPosition(I)I

    move-result v0

    .line 513
    .local v0, julianDay:I
    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    if-eq v1, v0, :cond_0

    .line 518
    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 519
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getTimeOnTopEvent()Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 522
    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    if-nez v1, :cond_0

    .line 523
    new-instance v1, Lcom/android/calendar/agenda/AgendaFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/agenda/AgendaFragment$2;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setScrollState(I)V

    .line 503
    :cond_0
    return-void
.end method

.method public removeFragments(Landroid/app/FragmentManager;)V
    .locals 5
    .parameter "fragmentManager"

    .prologue
    const v4, 0x7f100012

    .line 355
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 356
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 360
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 361
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 364
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
