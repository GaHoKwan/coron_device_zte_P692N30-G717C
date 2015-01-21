.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$1;,
        Lcom/android/calendar/Utils$CalendarBroadcastReceiver;,
        Lcom/android/calendar/Utils$DNASegment;,
        Lcom/android/calendar/Utils$DNAStrand;
    }
.end annotation


# static fields
.field public static final APPWIDGET_DATA_TYPE:Ljava/lang/String; = "vnd.android.data/update"

.field public static final CLOSE_EMAIL_MARKER:Ljava/lang/String; = ">"

.field static CONFLICT_COLOR:I = 0x0

.field static final DAY_IN_MINUTES:I = 0x5a0

.field private static final DEBUG:Z = false

.field public static final DECLINED_EVENT_ALPHA:I = 0x66

.field public static final DECLINED_EVENT_TEXT_ALPHA:I = 0xc0

.field public static final DONE_DELETE:I = 0x4

.field public static final DONE_EXIT:I = 0x1

.field public static final DONE_REVERT:I = 0x1

.field public static final DONE_SAVE:I = 0x2

.field public static final FIRST_CALENDAR_DAY:I = 0x253d8c

.field private static final INTENSITY_ADJUST:F = 0.8f

.field public static final INTENT_KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field public static final INTENT_KEY_HOME:Ljava/lang/String; = "KEY_HOME"

.field public static final INTENT_KEY_VIEW_TYPE:Ljava/lang/String; = "VIEW"

.field public static final INTENT_VALUE_VIEW_TYPE_DAY:Ljava/lang/String; = "DAY"

.field public static final KEY_ALERTS_VIBRATE_WHEN:Ljava/lang/String; = "preferences_alerts_vibrateWhen"

.field public static final KEY_QUICK_RESPONSES:Ljava/lang/String; = "preferences_quick_responses"

.field public static final LAST_CALENDAR_DAY:I = 0x259d23

.field static final MACHINE_GENERATED_ADDRESS:Ljava/lang/String; = "calendar.google.com"

.field public static final MODIFY_ALL:I = 0x3

.field public static final MODIFY_ALL_FOLLOWING:I = 0x2

.field public static final MODIFY_SELECTED:I = 0x1

.field public static final MODIFY_UNINITIALIZED:I = 0x0

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field private static final NONE:I = 0x0

.field public static final OPEN_EMAIL_MARKER:Ljava/lang/String; = " <"

.field private static final SATURATION_ADJUST:F = 1.3f

.field private static final SECONDE_IN_MILLIS:J = 0x3e8L

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field private static final TAG:Ljava/lang/String; = "CalUtils"

.field private static final TODAY:I = 0x1

.field private static final TOMORROW:I = 0x2

.field public static final UNDO_DELAY:J = 0x0L

.field static final WEEK_IN_MINUTES:I = 0x2760

.field static WORK_DAY_END_LENGTH:I

.field static WORK_DAY_END_MINUTES:I

.field static WORK_DAY_MINUTES:I

.field static WORK_DAY_START_MINUTES:I

.field private static mAllowWeekForDetailView:Z

.field static mMinutesLoaded:Z

.field private static final mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J

.field private static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const/16 v0, 0x348

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 115
    const/16 v0, 0x168

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 116
    const/16 v0, 0x4b0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 117
    sget v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 118
    const/high16 v0, -0x100

    sput v0, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 119
    sput-boolean v2, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 135
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 136
    sput-boolean v2, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 137
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    return-void
.end method

.method private static addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V
    .locals 5
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "numDays"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    sget v3, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v2

    .line 978
    .local v2, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v3, :cond_0

    .line 979
    new-array v3, p3, [I

    iput-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    .line 983
    :cond_0
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    sub-int/2addr v3, p2

    add-int/lit8 v4, p3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 984
    .local v0, end:I
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 985
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    .line 987
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    sget v4, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 984
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 990
    :cond_1
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    iget v4, p0, Lcom/android/calendar/Event;->color:I

    aput v4, v3, v1

    goto :goto_1

    .line 993
    :cond_2
    return-void
.end method

.method private static addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V
    .locals 11
    .parameter
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "minStart"
    .parameter "minMinutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-le v0, v2, :cond_0

    .line 1064
    const-string v0, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event starts after it ends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_2

    .line 1068
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 1069
    .local v1, lhs:Lcom/android/calendar/Event;
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 1070
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 1072
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 1073
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 1074
    const/16 v0, 0x59f

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 1076
    :goto_0
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 1077
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    .line 1080
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 1081
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 1082
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 1083
    const/4 p4, 0x0

    goto :goto_0

    .line 1086
    :cond_1
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 1087
    move-object p1, v1

    .line 1090
    .end local v1           #lhs:Lcom/android/calendar/Event;
    :cond_2
    new-instance v9, Lcom/android/calendar/Utils$DNASegment;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 1091
    .local v9, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v0, p3

    mul-int/lit16 v6, v0, 0x5a0

    .line 1092
    .local v6, dayOffset:I
    add-int/lit16 v0, v6, 0x5a0

    add-int/lit8 v7, v0, -0x1

    .line 1094
    .local v7, endOfDay:I
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    add-int/2addr v0, v6

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 1097
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int v0, v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1098
    .local v8, minEnd:I
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v0, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1099
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    if-le v0, v7, :cond_3

    .line 1100
    iput v7, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1103
    :cond_3
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 1104
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 1105
    invoke-virtual {p0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1108
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v10

    .line 1109
    .local v10, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1110
    return-void
.end method

.method public static canUseProviderByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 5
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1604
    const/4 v1, 0x0

    .line 1606
    .local v1, provider:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 1607
    if-nez v1, :cond_1

    .line 1608
    const-string v3, "CalUtils"

    const-string v4, "failed to find calendar provider."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1620
    :cond_0
    :goto_0
    return v2

    .line 1616
    :cond_1
    if-eqz v1, :cond_2

    .line 1617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1620
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CalUtils"

    const-string v4, "failed to acquire calendar\'s ContentProvider."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 1616
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 1617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    throw v2
.end method

.method public static changeToJulianDayTime(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 2
    .parameter "t"
    .parameter "validJulianDay"

    .prologue
    .line 1576
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1577
    .local v0, tmpTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1578
    iget v1, p0, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1579
    iget v1, p0, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1580
    iget v1, p0, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1581
    return-object v0
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "nameIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, isDuplicateName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 643
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 644
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 648
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 651
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 1532
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1533
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 384
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v2

    .line 388
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 389
    .local v1, numColumns:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 393
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 397
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 398
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 399
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 401
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0           #i:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "localTime"
    .parameter "tz"

    .prologue
    .line 602
    if-nez p0, :cond_0

    .line 603
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 605
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 607
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "tz"

    .prologue
    .line 592
    if-nez p0, :cond_0

    .line 593
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 595
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 596
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 597
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .locals 28
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "minPixels"
    .parameter "dayXs"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    sget-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_1

    .line 761
    if-nez p6, :cond_0

    .line 762
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 765
    .local v25, res:Landroid/content/res/Resources;
    const v5, 0x7f080029

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 766
    const v5, 0x7f0b0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 767
    const v5, 0x7f0b0009

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 768
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 769
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 770
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 773
    .end local v25           #res:Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    if-gez p4, :cond_3

    .line 775
    :cond_2
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v4, 0x0

    .line 970
    :goto_0
    return-object v4

    .line 782
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 783
    .local v2, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 786
    .local v4, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    new-instance v14, Lcom/android/calendar/Utils$DNAStrand;

    invoke-direct {v14}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 787
    .local v14, blackStrand:Lcom/android/calendar/Utils$DNAStrand;
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    iput v5, v14, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 788
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 797
    .local v7, minMinutes:I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v24, v5, 0x2

    .line 798
    .local v24, minOtherMinutes:I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v21, v5, -0x1

    .line 800
    .local v21, lastJulianDay:I
    new-instance v3, Lcom/android/calendar/Event;

    invoke-direct {v3}, Lcom/android/calendar/Event;-><init>()V

    .line 802
    .local v3, event:Lcom/android/calendar/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 804
    .local v15, currEvent:Lcom/android/calendar/Event;
    iget v5, v15, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_4

    iget v5, v15, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, v21

    if-gt v5, v0, :cond_4

    .line 807
    invoke-virtual {v15}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 808
    move-object/from16 v0, p5

    array-length v5, v0

    move/from16 v0, p0

    invoke-static {v15, v4, v0, v5}, Lcom/android/calendar/Utils;->addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 812
    :cond_5
    invoke-virtual {v15, v3}, Lcom/android/calendar/Event;->copyTo(Lcom/android/calendar/Event;)V

    .line 813
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_6

    .line 814
    move/from16 v0, p0

    iput v0, v3, Lcom/android/calendar/Event;->startDay:I

    .line 815
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 819
    :cond_6
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v0, v24

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_7

    .line 820
    move/from16 v0, v24

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 822
    :cond_7
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, v21

    if-le v5, v0, :cond_8

    .line 823
    move/from16 v0, v21

    iput v0, v3, Lcom/android/calendar/Event;->endDay:I

    .line 824
    const/16 v5, 0x59f

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 828
    :cond_8
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    .line 829
    move/from16 v0, v24

    iput v0, v3, Lcom/android/calendar/Event;->endTime:I

    .line 835
    :cond_9
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    iget v6, v3, Lcom/android/calendar/Event;->endDay:I

    if-ne v5, v6, :cond_a

    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 839
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_b

    .line 842
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v5, v5, v24

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 856
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 857
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 845
    :cond_b
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_a

    .line 847
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    add-int v5, v5, v24

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 849
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 850
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sub-int v5, v5, v24

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    goto :goto_2

    .line 862
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/calendar/Utils$DNASegment;

    .line 863
    .local v22, lastSegment:Lcom/android/calendar/Utils$DNASegment;
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v27, v5, v6

    .line 864
    .local v27, startMinute:I
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v27, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 867
    .local v17, endMinute:I
    if-gez v27, :cond_d

    .line 868
    const/16 v27, 0x0

    .line 870
    :cond_d
    const/16 v5, 0x2760

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    .line 871
    const/16 v17, 0x275f

    .line 876
    :cond_e
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_16

    .line 877
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v18

    .line 879
    .local v18, i:I
    :cond_f
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNASegment;

    iget v5, v5, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_f

    :cond_10
    move/from16 v19, v18

    .line 883
    .end local v18           #i:I
    .local v19, i:I
    :goto_3
    if-ltz v19, :cond_16

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/Utils$DNASegment;

    .local v16, currSegment:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-gt v0, v5, :cond_16

    .line 885
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_12

    move/from16 v18, v19

    .line 883
    .end local v19           #i:I
    .restart local v18       #i:I
    :cond_11
    :goto_4
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    .end local v18           #i:I
    .restart local v19       #i:I
    goto :goto_3

    .line 890
    :cond_12
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v17

    if-ge v0, v5, :cond_13

    .line 891
    new-instance v26, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 892
    .local v26, rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 893
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 894
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 895
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 896
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 897
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 898
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 906
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_13
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v27

    if-le v0, v5, :cond_18

    .line 907
    new-instance v23, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 908
    .local v23, lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 909
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 910
    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 911
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 912
    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 916
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 917
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 925
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :goto_5
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 926
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/calendar/Utils$DNASegment;

    .line 927
    .restart local v26       #rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_14

    .line 929
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 930
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 931
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 933
    move-object/from16 v16, v26

    .line 938
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_14
    add-int/lit8 v5, v18, -0x1

    if-ltz v5, :cond_15

    .line 939
    add-int/lit8 v5, v18, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/Utils$DNASegment;

    .line 940
    .restart local v23       #lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_15

    .line 942
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 943
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 944
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 946
    move-object/from16 v16, v23

    .line 949
    add-int/lit8 v18, v18, -0x1

    .line 955
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_15
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_11

    .line 956
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 957
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 958
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    goto/16 :goto_4

    .line 964
    .end local v16           #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v18           #i:I
    :cond_16
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v17

    if-le v0, v5, :cond_4

    .line 965
    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v15           #currEvent:Lcom/android/calendar/Event;
    .end local v17           #endMinute:I
    .end local v22           #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v27           #startMinute:I
    :cond_17
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 969
    invoke-static/range {v8 .. v13}, Lcom/android/calendar/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_0

    .restart local v15       #currEvent:Lcom/android/calendar/Event;
    .restart local v16       #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v17       #endMinute:I
    .restart local v19       #i:I
    .restart local v22       #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v27       #startMinute:I
    :cond_18
    move/from16 v18, v19

    .end local v19           #i:I
    .restart local v18       #i:I
    goto/16 :goto_5
.end method

.method public static createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter "resources"
    .parameter "eventTitle"
    .parameter "body"
    .parameter
    .parameter
    .parameter "ownerAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p3, toEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, ccEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p3

    .line 1378
    .local v8, toList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p4

    .line 1379
    .local v2, ccList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 1380
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_0

    .line 1383
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Both toEmails and ccEmails are empty."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1388
    :cond_0
    move-object/from16 v8, p4

    .line 1389
    const/4 v2, 0x0

    .line 1393
    :cond_1
    const/4 v7, 0x0

    .line 1394
    .local v7, subject:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1395
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0c0083

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1403
    :cond_2
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 1404
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    const-string v11, "mailto"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1409
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 1410
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 1413
    const-string v12, "to"

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1410
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1418
    .end local v5           #i:I
    :cond_3
    if-eqz v7, :cond_4

    .line 1419
    const-string v11, "subject"

    invoke-virtual {v10, v11, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1423
    :cond_4
    if-eqz p2, :cond_5

    .line 1424
    const-string v11, "body"

    invoke-virtual {v10, v11, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1428
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 1429
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1430
    .local v3, email:Ljava/lang/String;
    const-string v11, "cc"

    invoke-virtual {v10, v11, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1436
    .end local v3           #email:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1437
    .local v9, uri:Ljava/lang/String;
    const-string v11, "mailto:"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v12, 0x7

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1445
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1446
    .local v4, emailIntent:Landroid/content/Intent;
    const-string v11, "fromAccountString"

    move-object/from16 v0, p5

    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1450
    if-eqz p2, :cond_8

    .line 1451
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v4, v11, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    :cond_8
    const v11, 0x7f0c0082

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    return-object v11
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 661
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 236
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 444
    const/16 v5, 0x34

    .line 446
    .local v5, flags:I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .local v1, millis:J
    move-object v0, p0

    move-wide v3, v1

    .line 447
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .locals 1

    .prologue
    .line 669
    sget-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .parameter "c"
    .parameter "key"

    .prologue
    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "julianDay"
    .parameter "todayJulianDay"
    .parameter "millis"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1191
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 1192
    const/4 v6, 0x2

    .line 1194
    .local v6, flags:I
    if-ne p0, p1, :cond_0

    .line 1195
    const v8, 0x7f0c008e

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1206
    .local v7, dayViewText:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 1207
    return-object v7

    .line 1197
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_1

    .line 1198
    const v8, 0x7f0c008f

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0

    .line 1200
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_2

    .line 1201
    const v8, 0x7f0c0090

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0

    .line 1204
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 553
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 554
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDeclinedColorFromColor(I)I
    .locals 3
    .parameter "color"

    .prologue
    .line 700
    const/4 v1, -0x1

    .line 701
    .local v1, bg:I
    const/16 v0, 0x66

    .line 702
    .local v0, a:I
    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(III)I

    move-result v2

    return v2
.end method

.method public static getDeclinedColorFromColor(III)I
    .locals 9
    .parameter "color"
    .parameter "alpha"
    .parameter "bg"

    .prologue
    const/high16 v8, -0x100

    const/high16 v7, 0xff

    const v6, 0xff00

    .line 692
    and-int v3, p0, v7

    mul-int/2addr v3, p1

    and-int v4, p2, v7

    rsub-int v5, p1, 0xff

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    and-int v2, v3, v8

    .line 693
    .local v2, r:I
    and-int v3, p0, v6

    mul-int/2addr v3, p1

    and-int v4, p2, v6

    rsub-int v5, p1, 0xff

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    and-int v1, v3, v7

    .line 694
    .local v1, g:I
    and-int/lit16 v3, p0, 0xff

    mul-int/2addr v3, p1

    and-int/lit16 v4, p2, 0xff

    rsub-int v5, p1, 0xff

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    and-int v0, v3, v6

    .line 695
    .local v0, b:I
    or-int v3, v2, v1

    or-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v8

    return v3
.end method

.method public static getDefaultVibrate(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "context"
    .parameter "prefs"

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const-string v2, "preferences_alerts_vibrateWhen"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, vibrateWhen:Ljava/lang/String;
    if-eqz v1, :cond_0

    const v2, 0x7f0c00bd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 249
    .local v0, vibrate:Z
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_vibrateWhen"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    const-string v2, "CalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating KEY_ALERTS_VIBRATE_WHEN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to KEY_ALERTS_VIBRATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1           #vibrateWhen:Ljava/lang/String;
    :goto_0
    return v0

    .line 253
    .end local v0           #vibrate:Z
    :cond_1
    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .restart local v0       #vibrate:Z
    goto :goto_0
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 5
    .parameter "color"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 677
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    .end local p0
    :goto_0
    return p0

    .line 681
    .restart local p0
    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 682
    .local v0, hsv:[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 683
    aget v1, v0, v3

    const v2, 0x3fa66666

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 684
    aget v1, v0, v4

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 685
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    goto :goto_0
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 24
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "currentMillis"
    .parameter "localTimezone"
    .parameter "allDay"
    .parameter "context"

    .prologue
    .line 1239
    const/16 v19, 0x12

    .line 1240
    .local v19, flagsDate:I
    const/16 v20, 0x1

    .line 1241
    .local v20, flagsTime:I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1242
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    .line 1245
    :cond_0
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v16, currentTime:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1247
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1248
    .local v21, resources:Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 1249
    .local v18, datetimeString:Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 1251
    const/4 v7, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v7, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v3

    .line 1252
    .local v3, localStartMillis:J
    const/4 v7, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v7, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v5

    .line 1253
    .local v5, localEndMillis:J
    move-object/from16 v0, v16

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1255
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v16

    iget-wide v12, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v8, v3

    move-wide/from16 v10, p4

    invoke-static/range {v7 .. v13}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v23

    .line 1257
    .local v23, todayOrTomorrow:I
    const/4 v7, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_3

    .line 1258
    const v7, 0x7f0c0043

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1263
    .end local v23           #todayOrTomorrow:I
    :cond_1
    :goto_0
    if-nez v18, :cond_2

    .line 1266
    new-instance v8, Ljava/util/Formatter;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x32

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1267
    .local v8, f:Ljava/util/Formatter;
    const-string v14, "UTC"

    move-object/from16 v7, p8

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    move/from16 v13, v19

    invoke-static/range {v7 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1303
    .end local v3           #localStartMillis:J
    .end local v5           #localEndMillis:J
    .end local v8           #f:Ljava/util/Formatter;
    :cond_2
    :goto_1
    return-object v18

    .line 1259
    .restart local v3       #localStartMillis:J
    .restart local v5       #localEndMillis:J
    .restart local v23       #todayOrTomorrow:I
    :cond_3
    const/4 v7, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_1

    .line 1260
    const v7, 0x7f0c0044

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1271
    .end local v3           #localStartMillis:J
    .end local v5           #localEndMillis:J
    .end local v23           #todayOrTomorrow:I
    :cond_4
    move-object/from16 v0, v16

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v20

    .line 1273
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v22

    .line 1277
    .local v22, timeString:Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v16

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v23

    .line 1279
    .restart local v23       #todayOrTomorrow:I
    const/4 v7, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_5

    .line 1281
    const v7, 0x7f0c0045

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1283
    :cond_5
    const/4 v7, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    .line 1285
    const v7, 0x7f0c0046

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    :cond_6
    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v19

    .line 1289
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v17

    .line 1291
    .local v17, dateString:Ljava/lang/String;
    const v7, 0x7f0c0047

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v9, v10

    const/4 v10, 0x1

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1297
    .end local v17           #dateString:Ljava/lang/String;
    .end local v22           #timeString:Ljava/lang/String;
    .end local v23           #todayOrTomorrow:I
    :cond_7
    or-int v7, v19, v20

    const/high16 v9, 0x1

    or-int/2addr v7, v9

    const v9, 0x8000

    or-int v14, v7, v9

    .local v14, flagsDatetime:I
    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    .line 1299
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1
.end method

.method public static getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "startMillis"
    .parameter "localTimezone"
    .parameter "eventTimezone"

    .prologue
    const/4 v4, 0x0

    .line 1312
    const/4 v2, 0x0

    .line 1313
    .local v2, tzDisplay:Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1315
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1316
    .local v1, tz:Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1317
    :cond_0
    move-object v2, p2

    .line 1324
    .end local v1           #tz:Ljava/util/TimeZone;
    :cond_1
    :goto_0
    return-object v2

    .line 1319
    .restart local v1       #tz:Ljava/util/TimeZone;
    :cond_2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v0, startTime:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1321
    iget v3, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 515
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 516
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, pref:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 526
    .local v2, startDay:I
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 527
    const/4 v3, 0x6

    .line 531
    :goto_1
    return v3

    .line 523
    .end local v2           #startDay:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #startDay:I
    goto :goto_0

    .line 528
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 529
    const/4 v3, 0x1

    goto :goto_1

    .line 531
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getFirstDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;
    .locals 5
    .parameter "context"

    .prologue
    .line 1633
    new-instance v3, Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v3, t:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1635
    .local v0, firstDayOfWeek:I
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/format/Time;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v2

    .line 1636
    .local v2, julianMonday:I
    const/4 v1, 0x0

    .line 1637
    .local v1, firstDisplayedJulianDay:I
    packed-switch v0, :pswitch_data_0

    .line 1662
    :goto_0
    invoke-virtual {v3, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1663
    return-object v3

    .line 1639
    :pswitch_0
    move v1, v2

    .line 1640
    goto :goto_0

    .line 1642
    :pswitch_1
    add-int/lit8 v1, v2, -0x6

    .line 1643
    goto :goto_0

    .line 1645
    :pswitch_2
    add-int/lit8 v1, v2, -0x5

    .line 1646
    goto :goto_0

    .line 1648
    :pswitch_3
    add-int/lit8 v1, v2, -0x4

    .line 1649
    goto :goto_0

    .line 1651
    :pswitch_4
    add-int/lit8 v1, v2, -0x3

    .line 1652
    goto :goto_0

    .line 1654
    :pswitch_5
    add-int/lit8 v1, v2, -0x2

    .line 1655
    goto :goto_0

    .line 1657
    :pswitch_6
    add-int/lit8 v1, v2, -0x1

    .line 1658
    goto :goto_0

    .line 1637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 548
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getJulianDayInGeneral(Landroid/text/format/Time;Z)I
    .locals 13
    .parameter "time"
    .parameter "ignoreDst"

    .prologue
    const/4 v11, 0x0

    .line 1781
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1782
    .local v9, t:Landroid/text/format/Time;
    iput v11, v9, Landroid/text/format/Time;->hour:I

    .line 1783
    iput v11, v9, Landroid/text/format/Time;->minute:I

    .line 1784
    iput v11, v9, Landroid/text/format/Time;->second:I

    .line 1785
    invoke-virtual {v9, p1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1786
    invoke-virtual {v9, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1787
    .local v3, millis:J
    new-instance v10, Landroid/text/format/Time;

    iget-object v11, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1788
    .local v10, timeJulian:Landroid/text/format/Time;
    invoke-virtual {v10, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1789
    .local v5, millisJulian:J
    sub-long v0, v3, v5

    .line 1790
    .local v0, dif:J
    const-wide/32 v7, 0x5265c00

    .line 1791
    .local v7, millisPerDay:J
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-gez v11, :cond_0

    .line 1792
    const-string v11, "CalUtils"

    const-string v12, "Julian day before epoch day, adjust by epoch day"

    invoke-static {v11, v12}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-wide/32 v11, 0x5265c00

    div-long v11, v0, v11

    long-to-int v2, v11

    .line 1794
    .local v2, difDay:I
    const v11, 0x253d8c

    add-int/2addr v11, v2

    .line 1796
    .end local v2           #difDay:I
    :goto_0
    return v11

    :cond_0
    iget-wide v11, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    goto :goto_0
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .parameter "week"

    .prologue
    .line 506
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLastDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;
    .locals 6
    .parameter "context"

    .prologue
    .line 1675
    new-instance v3, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v3, t:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1677
    .local v0, firstDayOfWeek:I
    const v5, 0x259d23

    invoke-static {v5, v0}, Landroid/text/format/Time;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v4

    .line 1679
    .local v4, weekNo:I
    invoke-static {v4}, Landroid/text/format/Time;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v1

    .line 1680
    .local v1, julianMonday:I
    const v2, 0x259d23

    .line 1681
    .local v2, lastDisplayedJulianDay:I
    packed-switch v0, :pswitch_data_0

    .line 1706
    :goto_0
    invoke-virtual {v3, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1707
    return-object v3

    .line 1683
    :pswitch_0
    add-int/lit8 v2, v1, 0x6

    .line 1684
    goto :goto_0

    .line 1686
    :pswitch_1
    move v2, v1

    .line 1687
    goto :goto_0

    .line 1689
    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    .line 1690
    goto :goto_0

    .line 1692
    :pswitch_3
    add-int/lit8 v2, v1, 0x2

    .line 1693
    goto :goto_0

    .line 1695
    :pswitch_4
    add-int/lit8 v2, v1, 0x3

    .line 1696
    goto :goto_0

    .line 1698
    :pswitch_5
    add-int/lit8 v2, v1, 0x4

    .line 1699
    goto :goto_0

    .line 1701
    :pswitch_6
    add-int/lit8 v2, v1, 0x5

    .line 1702
    goto :goto_0

    .line 1681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "theTime"
    .parameter "tz"

    .prologue
    const/4 v1, 0x0

    .line 619
    if-nez p0, :cond_0

    .line 620
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 622
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 623
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 624
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 625
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 626
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 627
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 628
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;
    .locals 2
    .parameter
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;I)",
            "Lcom/android/calendar/Utils$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Utils$DNAStrand;

    .line 1117
    .local v0, strand:Lcom/android/calendar/Utils$DNAStrand;
    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Lcom/android/calendar/Utils$DNAStrand;

    .end local v0           #strand:Lcom/android/calendar/Utils$DNAStrand;
    invoke-direct {v0}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 1119
    .restart local v0       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iput p1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 1120
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1121
    iget v1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :cond_0
    return-object v0
.end method

.method private static getPixelOffsetFromMinutes(III)I
    .locals 4
    .parameter "minute"
    .parameter "workDayHeight"
    .parameter "remainderHeight"

    .prologue
    .line 1045
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge p0, v1, :cond_0

    .line 1046
    mul-int v1, p0, p2

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 1054
    .local v0, y:I
    :goto_0
    return v0

    .line 1047
    .end local v0           #y:I
    :cond_0
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-ge p0, v1, :cond_1

    .line 1048
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int v1, p0, v1

    mul-int/2addr v1, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p2, v1

    .restart local v0       #y:I
    goto :goto_0

    .line 1051
    .end local v0           #y:I
    :cond_1
    add-int v1, p2, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sub-int v2, p0, v2

    mul-int/2addr v2, p2

    sget v3, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0       #y:I
    goto :goto_0
.end method

.method public static getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1544
    const-string v2, "preferences_quick_responses"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, s:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1550
    :cond_0
    return-object v0
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CalendarRecentSuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 275
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 270
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 280
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 260
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, prefs:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 262
    .local v1, ss:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 264
    .local v2, strings:[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 266
    .end local v2           #strings:[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 539
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getTardis()J
    .locals 2

    .prologue
    .line 310
    sget-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 221
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTimeInCalendar(Landroid/content/Context;J)Landroid/text/format/Time;
    .locals 7
    .parameter "context"
    .parameter "timeMillis"

    .prologue
    const/4 v6, 0x0

    .line 1741
    new-instance v4, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v4, t:Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1743
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1744
    .local v0, first:J
    invoke-static {p0}, Lcom/android/calendar/Utils;->getLastDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1746
    .local v2, last:J
    cmp-long v5, p1, v0

    if-ltz v5, :cond_0

    cmp-long v5, p1, v2

    if-lez v5, :cond_1

    .line 1747
    :cond_0
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1749
    :cond_1
    return-object v4
.end method

.method public static getValidTimeInCalendar(Landroid/content/Context;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 8
    .parameter "context"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 1721
    if-nez p1, :cond_1

    .line 1722
    const/4 p1, 0x0

    .line 1731
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1724
    .restart local p1
    :cond_1
    invoke-virtual {p1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1725
    .local v4, time:J
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1726
    .local v0, first:J
    invoke-static {p0}, Lcom/android/calendar/Utils;->getLastDisplayTimeInCalendar(Landroid/content/Context;)Landroid/text/format/Time;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1728
    .local v2, last:J
    cmp-long v6, v4, v0

    if-ltz v6, :cond_2

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 1729
    :cond_2
    invoke-virtual {p1}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1557
    sget-object v1, Lcom/android/calendar/Utils;->sVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1559
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/android/calendar/Utils;->sVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/calendar/Utils;->sVersion:Ljava/lang/String;

    return-object v1

    .line 1561
    :catch_0
    move-exception v0

    .line 1563
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finding package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x2

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 149
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    const/4 v3, 0x5

    .line 167
    :cond_0
    :goto_0
    return v3

    .line 155
    :cond_1
    if-eqz v0, :cond_3

    .line 156
    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    const-string v4, "preferred_detailedView"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 160
    :cond_2
    const-string v4, "DAY"

    const-string v5, "VIEW"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    :cond_3
    const-string v3, "preferred_startView"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public static getWeekNumberFromTime(JLandroid/content/Context;)I
    .locals 5
    .parameter "millisSinceEpoch"
    .parameter "context"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1160
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v1, weekTime:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1162
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1163
    invoke-static {p2}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1167
    .local v0, firstDayOfWeek:I
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 1169
    :cond_0
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1170
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1175
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v2

    return v2

    .line 1171
    :cond_2
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 1172
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1173
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .parameter "julianDay"
    .parameter "firstDayOfWeek"

    .prologue
    .line 486
    rsub-int/lit8 v0, p1, 0x4

    .line 487
    .local v0, diff:I
    if-gez v0, :cond_0

    .line 488
    add-int/lit8 v0, v0, 0x7

    .line 490
    :cond_0
    const v2, 0x253d8c

    sub-int v1, v2, v0

    .line 491
    .local v1, refDay:I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "email"
    .parameter "syncAccountName"

    .prologue
    .line 1472
    invoke-static {p0}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSaturday(II)Z
    .locals 3
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 565
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 578
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I
    .locals 4
    .parameter "r"
    .parameter "dayMillis"
    .parameter "currentMillis"
    .parameter "localGmtOffset"

    .prologue
    const/4 v3, 0x1

    .line 1352
    invoke-static {p1, p2, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1353
    .local v2, startDay:I
    invoke-static {p3, p4, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1355
    .local v0, currentDay:I
    sub-int v1, v2, v0

    .line 1356
    .local v1, days:I
    if-ne v1, v3, :cond_1

    .line 1357
    const/4 v3, 0x2

    .line 1361
    :cond_0
    :goto_0
    return v3

    .line 1358
    :cond_1
    if-eqz v1, :cond_0

    .line 1361
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "email"

    .prologue
    .line 1462
    if-eqz p0, :cond_0

    const-string v0, "calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 461
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 462
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 467
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 469
    .end local v3           #thing:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 356
    if-nez p0, :cond_1

    .line 357
    const/4 v3, 0x0

    .line 374
    :cond_0
    return-object v3

    .line 360
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, columnNames:[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 362
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    .line 364
    :cond_2
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 365
    .local v3, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 366
    .local v4, numColumns:I
    new-array v1, v4, [Ljava/lang/String;

    .line 367
    .local v1, data:[Ljava/lang/String;
    const/4 v5, -0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 370
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    :cond_3
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "h"
    .parameter "r"

    .prologue
    .line 1227
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static returnToCalendarHome(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AllInOneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1133
    .local v0, launchIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1135
    const-string v1, "KEY_HOME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1137
    return-void
.end method

.method public static setAllowWeekForDetailView(Z)V
    .locals 0
    .parameter "allowWeekView"

    .prologue
    .line 665
    sput-boolean p0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 666
    return-void
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "viewId"

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 338
    .local v2, validDetailView:Z
    sget-boolean v4, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 339
    const/4 v2, 0x1

    .line 345
    :goto_0
    if-eqz v2, :cond_0

    .line 347
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    :cond_0
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-void

    .line 341
    :cond_1
    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setJulianDayInGeneral(Landroid/text/format/Time;I)J
    .locals 5
    .parameter "time"
    .parameter "julianDay"

    .prologue
    const/4 v4, 0x1

    .line 1760
    const v2, 0x253d8c

    sub-int v0, p1, v2

    .line 1761
    .local v0, dif:I
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v1, julianTime:Landroid/text/format/Time;
    if-gtz v0, :cond_0

    .line 1763
    const-string v2, "CalUtils"

    const-string v3, "Julian day before epoch day, adjust by epoch day"

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1765
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1769
    :goto_0
    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 1770
    invoke-virtual {p0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 1767
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    goto :goto_0
.end method

.method public static setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 7
    .parameter "h"
    .parameter "r"
    .parameter "timezone"

    .prologue
    .line 1213
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1217
    .local v0, now:J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1219
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 1221
    .local v2, runInMillis:J
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1222
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 321
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 292
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 314
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "key"
    .parameter "values"

    .prologue
    .line 297
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 298
    .local v3, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 299
    .local v4, set:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 300
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, p1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    return-void
.end method

.method public static setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "c"
    .parameter "callback"

    .prologue
    .line 1520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1521
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1522
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1524
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1526
    new-instance v1, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;

    invoke-direct {v1, p1}, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;-><init>(Ljava/lang/Runnable;)V

    .line 1527
    .local v1, r:Lcom/android/calendar/Utils$CalendarBroadcastReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1528
    return-object v1
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 202
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "icon"
    .parameter "c"
    .parameter "timezone"

    .prologue
    const v4, 0x7f1000c5

    .line 1483
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1484
    .local v0, currentDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/calendar/DayOfMonthDrawable;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1485
    check-cast v2, Lcom/android/calendar/DayOfMonthDrawable;

    .line 1490
    .local v2, today:Lcom/android/calendar/DayOfMonthDrawable;
    :goto_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1492
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1493
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayOfMonthDrawable;->setDayOfMonth(I)V

    .line 1494
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1495
    invoke-virtual {p0, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1496
    return-void

    .line 1487
    .end local v1           #now:Landroid/text/format/Time;
    .end local v2           #today:Lcom/android/calendar/DayOfMonthDrawable;
    :cond_0
    new-instance v2, Lcom/android/calendar/DayOfMonthDrawable;

    invoke-direct {v2, p1}, Lcom/android/calendar/DayOfMonthDrawable;-><init>(Landroid/content/Context;)V

    .restart local v2       #today:Lcom/android/calendar/DayOfMonthDrawable;
    goto :goto_0
.end method

.method public static setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V
    .locals 2
    .parameter "view"
    .parameter "act"

    .prologue
    .line 1147
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1148
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1149
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 1150
    return-void
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 5
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "localGmtOffset"

    .prologue
    const/4 v2, 0x1

    .line 1331
    cmp-long v3, p0, p2

    if-nez v3, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return v2

    .line 1337
    :cond_1
    invoke-static {p0, p1, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 1338
    .local v1, startDay:I
    const-wide/16 v3, 0x1

    sub-long v3, p2, v3

    invoke-static {v3, v4, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1339
    .local v0, endDay:I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static tardis()V
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 307
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 417
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 418
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 419
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 421
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 430
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 433
    :cond_1
    return-wide v2

    .line 424
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static toastText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 1587
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1588
    return-void
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .locals 17
    .parameter
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "dayXs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1001
    .local v9, strandIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Utils$DNAStrand;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1002
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 1003
    .local v8, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v14, :cond_0

    .line 1004
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1007
    :cond_0
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    mul-int/lit8 v14, v14, 0x4

    new-array v14, v14, [F

    iput-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    .line 1008
    const/4 v14, 0x0

    iput v14, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    goto :goto_0

    .line 1011
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Utils$DNASegment;

    .line 1013
    .local v7, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 1014
    .restart local v8       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->day:I

    sub-int v2, v14, p1

    .line 1015
    .local v2, dayIndex:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 1016
    .local v3, dayStartMinute:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 1017
    .local v1, dayEndMinute:I
    sub-int v4, p4, p3

    .line 1018
    .local v4, height:I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v10, v14, 0x4

    .line 1019
    .local v10, workDayHeight:I
    sub-int v14, v4, v10

    div-int/lit8 v6, v14, 0x2

    .line 1021
    .local v6, remainderHeight:I
    aget v11, p5, v2

    .line 1022
    .local v11, x:I
    const/4 v12, 0x0

    .line 1023
    .local v12, y0:I
    const/4 v13, 0x0

    .line 1025
    .local v13, y1:I
    invoke-static {v3, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p3, v14

    .line 1026
    invoke-static {v1, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v13, p3, v14

    .line 1031
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1032
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1033
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1034
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v13

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_1

    .line 1036
    .end local v1           #dayEndMinute:I
    .end local v2           #dayIndex:I
    .end local v3           #dayStartMinute:I
    .end local v4           #height:I
    .end local v6           #remainderHeight:I
    .end local v7           #segment:Lcom/android/calendar/Utils$DNASegment;
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    .end local v10           #workDayHeight:I
    .end local v11           #x:I
    .end local v12           #y0:I
    .end local v13           #y1:I
    :cond_2
    return-void
.end method
