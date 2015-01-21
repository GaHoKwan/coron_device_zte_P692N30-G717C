.class public Lcom/android/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$RefreshInBackground;,
        Lcom/android/calendar/CalendarController$EventHandler;,
        Lcom/android/calendar/CalendarController$EventInfo;,
        Lcom/android/calendar/CalendarController$ViewType;,
        Lcom/android/calendar/CalendarController$EventType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_EDIT_ON_LAUNCH:Ljava/lang/String; = "editMode"

.field public static final EXTRA_CREATE_ALL_DAY:J = 0x10L

.field public static final EXTRA_GOTO_BACK_TO_PREVIOUS:J = 0x4L

.field public static final EXTRA_GOTO_DATE:J = 0x1L

.field public static final EXTRA_GOTO_TIME:J = 0x2L

.field public static final EXTRA_GOTO_TODAY:J = 0x8L

.field public static final MAX_CALENDAR_WEEK:I = 0xda9

.field public static final MAX_CALENDAR_YEAR:I = 0x7f4

.field public static final MIN_CALENDAR_WEEK:I = 0x0

.field public static final MIN_CALENDAR_YEAR:I = 0x7b2

.field private static final REFRESH_ARGS:[Ljava/lang/String; = null

.field private static final REFRESH_ORDER:Ljava/lang/String; = "account_name,account_type"

.field private static final REFRESH_SELECTION:Ljava/lang/String; = "sync_events=?"

.field private static final TAG:Ljava/lang/String; = "CalendarController"

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/calendar/CalendarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDateFlags:J

.field private mDetailViewType:I

.field private volatile mDispatchInProgressCounter:I

.field private mEventId:J

.field private mFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousViewType:I

.field private mTime:Landroid/text/format/Time;

.field private final mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeAddedFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeRemovedEventHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTimezone:Ljava/lang/Runnable;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 91
    iput v2, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 92
    iput v2, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 93
    iput v2, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 95
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 98
    new-instance v0, Lcom/android/calendar/CalendarController$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController$1;-><init>(Lcom/android/calendar/CalendarController;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    .line 305
    iput-object p1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    .line 306
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v1, "preferred_detailedView"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarController;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method private eventInfoToString(Lcom/android/calendar/CalendarController$EventInfo;)Ljava/lang/String;
    .locals 8
    .parameter "eventInfo"

    .prologue
    const-wide/16 v6, 0x0

    .line 881
    const-string v1, "Unknown"

    .line 883
    .local v1, tmp:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 885
    const-string v1, "Go to time/event"

    .line 909
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v2, ": id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 912
    const-string v2, ", selected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    const-string v2, ", start="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 916
    const-string v2, ", end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 918
    const-string v2, ", viewType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    const-string v2, ", x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    const-string v2, ", y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 886
    :cond_1
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 887
    const-string v1, "New event"

    goto :goto_0

    .line 888
    :cond_2
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 889
    const-string v1, "View event"

    goto :goto_0

    .line 890
    :cond_3
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 891
    const-string v1, "View details"

    goto :goto_0

    .line 892
    :cond_4
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 893
    const-string v1, "Edit event"

    goto :goto_0

    .line 894
    :cond_5
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    .line 895
    const-string v1, "Delete event"

    goto/16 :goto_0

    .line 896
    :cond_6
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    .line 897
    const-string v1, "Launch select visible calendars"

    goto/16 :goto_0

    .line 898
    :cond_7
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 899
    const-string v1, "Launch settings"

    goto/16 :goto_0

    .line 900
    :cond_8
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 901
    const-string v1, "Refresh events"

    goto/16 :goto_0

    .line 902
    :cond_9
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_a

    .line 903
    const-string v1, "Search"

    goto/16 :goto_0

    .line 904
    :cond_a
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_b

    .line 905
    const-string v1, "Gone home"

    goto/16 :goto_0

    .line 906
    :cond_b
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 907
    const-string v1, "Update title"

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;
    .locals 3
    .parameter "context"

    .prologue
    .line 284
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 285
    :try_start_0
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController;

    .line 286
    .local v0, controller:Lcom/android/calendar/CalendarController;
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/android/calendar/CalendarController;

    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController;-><init>(Landroid/content/Context;)V

    .line 288
    .restart local v0       #controller:Lcom/android/calendar/CalendarController;
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    monitor-exit v2

    return-object v0

    .line 291
    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private launchCreateEvent(JJZ)V
    .locals 3
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDayEvent"

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 725
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 726
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 727
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 729
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private launchDeleteEvent(JJJ)V
    .locals 9
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 763
    const/4 v1, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V

    .line 764
    return-void
.end method

.method private launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V
    .locals 8
    .parameter "parentActivity"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "deleteWhich"

    .prologue
    .line 768
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v2, p1, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .local v0, deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    move-wide v1, p4

    move-wide v3, p6

    move-wide v5, p2

    move/from16 v7, p8

    .line 770
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 771
    return-void

    .line 768
    .end local v0           #deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchEditEvent(JJJZ)V
    .locals 4
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "edit"

    .prologue
    .line 745
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 747
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 748
    const-string v2, "endTime"

    invoke-virtual {v0, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 749
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 750
    const-string v2, "editMode"

    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 752
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method private launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "eventId"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 774
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 776
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1, p4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 777
    .local v2, searchableInfo:Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 780
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 781
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 782
    return-void
.end method

.method private launchSelectVisibleCalendars()V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 711
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 713
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 718
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 719
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 720
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method


# virtual methods
.method public deregisterAllEventHandlers()V
    .locals 2

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 661
    :goto_0
    monitor-exit p0

    .line 662
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deregisterEventHandler(Ljava/lang/Integer;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    :goto_0
    monitor-exit p0

    .line 650
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterBroadcasts(Ljava/lang/Object;J)V
    .locals 2
    .parameter "sender"
    .parameter "eventTypes"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public getDateFlags()J
    .locals 2

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    return-wide v0
.end method

.method public getPreviousViewType()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public getViewType(I)I
    .locals 1
    .parameter "viewType"

    .prologue
    .line 810
    iget v0, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public launchViewEvent(JJJI)V
    .locals 4
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "response"

    .prologue
    .line 733
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 735
    .local v0, eventUri:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 736
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 737
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 738
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 739
    const-string v2, "attendeeStatus"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 741
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method public refreshCalendars()V
    .locals 7

    .prologue
    .line 788
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 789
    .local v0, accounts:[Landroid/accounts/Account;
    const-string v4, "CalendarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accounts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, authority:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 793
    const-string v4, "CalendarController"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    const-string v4, "CalendarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing calendars for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 797
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "force"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 798
    aget-object v4, v0, v3

    invoke-static {v4, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 792
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 800
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .locals 2
    .parameter "key"
    .parameter "eventHandler"

    .prologue
    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :goto_0
    monitor-exit p0

    .line 625
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .locals 2
    .parameter "key"
    .parameter "eventHandler"

    .prologue
    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 630
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 631
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 635
    :goto_0
    monitor-exit p0

    .line 636
    return-void

    .line 633
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V
    .locals 14
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"

    .prologue
    .line 374
    const-wide/16 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 376
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 14
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 385
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "selected"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 389
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 390
    .local v0, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 391
    iput-object p4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 392
    iput-object p6, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 393
    iput-object p5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 394
    iput-wide p7, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 395
    iput p9, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 396
    iput-object p12, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 397
    iput-object p13, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    .line 398
    iput-wide p10, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 400
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 31
    .parameter "sender"
    .parameter "event"

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 410
    .local v17, filteredTypes:Ljava/lang/Long;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 421
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 423
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 444
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->getFirstDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    .line 447
    .local v26, originDisplayedTime:J
    const-wide/16 v2, 0x1

    sub-long v28, v26, v2

    .line 448
    .local v28, startMillis:J
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v2, :cond_3

    .line 449
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    .line 455
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v2, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    cmp-long v2, v2, v26

    if-ltz v2, :cond_d

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 471
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x400

    cmp-long v2, v2, v7

    if-nez v2, :cond_4

    .line 472
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 477
    :cond_4
    cmp-long v2, v28, v26

    if-gez v2, :cond_5

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 479
    const-string v2, "CalendarController"

    const-string v3, "Event\'s start time(0) be changed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_5
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0xd

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_6

    .line 493
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_10

    .line 494
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 501
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getValidTimeInCalendar(Landroid/content/Context;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getValidTimeInCalendar(Landroid/content/Context;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getValidTimeInCalendar(Landroid/content/Context;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getValidTimeInCalendar(Landroid/content/Context;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 507
    const/16 v19, 0x0

    .line 508
    .local v19, handled:Z
    monitor-enter p0

    .line 509
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_7

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/calendar/CalendarController$EventHandler;

    .line 518
    .local v20, handler:Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 520
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 521
    const/16 v19, 0x1

    .line 524
    .end local v20           #handler:Lcom/android/calendar/CalendarController$EventHandler;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 525
    .local v21, handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_8
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 526
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 527
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 528
    .local v23, key:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v23

    if-eq v0, v2, :cond_8

    .line 532
    :cond_9
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/CalendarController$EventHandler;

    .line 533
    .local v16, eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 538
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    const/16 v19, 0x1

    goto :goto_4

    .line 424
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v16           #eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    .end local v19           #handled:Z
    .end local v21           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v23           #key:I
    .end local v26           #originDisplayedTime:J
    .end local v28           #startMillis:J
    :cond_a
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    if-nez v2, :cond_b

    .line 425
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    goto/16 :goto_1

    .line 426
    :cond_b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 427
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 429
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    invoke-static {}, Lcom/android/calendar/Utils;->getAllowWeekForDetailView()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 431
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    goto/16 :goto_1

    .line 459
    .restart local v26       #originDisplayedTime:J
    .restart local v28       #startMillis:J
    :cond_d
    cmp-long v2, v28, v26

    if-ltz v2, :cond_f

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v24

    .line 463
    .local v24, mtimeMillis:J
    cmp-long v2, v24, v28

    if-ltz v2, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v2, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    cmp-long v2, v24, v2

    if-lez v2, :cond_f

    .line 465
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 468
    .end local v24           #mtimeMillis:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 496
    :cond_10
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    goto/16 :goto_3

    .line 543
    .restart local v19       #handled:Z
    .restart local v21       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 545
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-nez v2, :cond_17

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 550
    .local v30, zombie:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_5

    .line 569
    .end local v21           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v30           #zombie:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 555
    .restart local v21       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 558
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_15

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    .line 560
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 562
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 564
    .local v18, food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 566
    .end local v18           #food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 569
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_17
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    if-nez v19, :cond_0

    .line 573
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x40

    cmp-long v2, v2, v7

    if-nez v2, :cond_18

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSettings()V

    goto/16 :goto_0

    .line 579
    :cond_18
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x800

    cmp-long v2, v2, v7

    if-nez v2, :cond_19

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSelectVisibleCalendars()V

    goto/16 :goto_0

    .line 585
    :cond_19
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v2, :cond_1a

    const-wide/16 v5, -0x1

    .line 586
    .local v5, endTime:J
    :goto_7
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_1c

    .line 587
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v9, 0x10

    cmp-long v2, v7, v9

    if-nez v2, :cond_1b

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/CalendarController;->launchCreateEvent(JJZ)V

    goto/16 :goto_0

    .line 585
    .end local v5           #endTime:J
    :cond_1a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_7

    .line 587
    .restart local v5       #endTime:J
    :cond_1b
    const/4 v7, 0x0

    goto :goto_8

    .line 590
    :cond_1c
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x2

    cmp-long v2, v2, v7

    if-nez v2, :cond_1d

    .line 591
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v14

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-virtual/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    goto/16 :goto_0

    .line 594
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x8

    cmp-long v2, v2, v7

    if-nez v2, :cond_1e

    .line 595
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 597
    :cond_1e
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x4

    cmp-long v2, v2, v7

    if-nez v2, :cond_1f

    .line 598
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 600
    :cond_1f
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x10

    cmp-long v2, v2, v7

    if-nez v2, :cond_20

    .line 601
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/calendar/CalendarController;->launchDeleteEvent(JJJ)V

    goto/16 :goto_0

    .line 603
    :cond_20
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x100

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    .line 604
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v7}, Lcom/android/calendar/CalendarController;->launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0
.end method

.method public sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V
    .locals 16
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "selectedMillis"

    .prologue
    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 322
    return-void
.end method

.method public sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V
    .locals 6
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "extraLong"
    .parameter "selectedMillis"

    .prologue
    .line 340
    new-instance v2, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 341
    .local v2, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v2, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 342
    const-wide/16 v3, 0x8

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x4

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 343
    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 345
    :cond_1
    iput-wide p4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 346
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 347
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 348
    const-wide/16 v3, -0x1

    cmp-long v3, p14, v3

    if-eqz v3, :cond_2

    .line 349
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 350
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 354
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 355
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v3, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 356
    move/from16 v0, p10

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    .line 357
    move/from16 v0, p11

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    .line 358
    move-wide/from16 v0, p12

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 359
    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 360
    return-void

    .line 352
    :cond_2
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setEventId(J)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 816
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 817
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "millisTime"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 691
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 804
    iput p1, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 805
    return-void
.end method
