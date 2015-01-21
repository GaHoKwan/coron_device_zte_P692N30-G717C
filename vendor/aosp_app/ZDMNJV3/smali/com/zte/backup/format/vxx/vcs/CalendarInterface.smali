.class public Lcom/zte/backup/format/vxx/vcs/CalendarInterface;
.super Ljava/lang/Object;
.source "CalendarInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Calendar"

.field private static final WEEK_STRING_ARRAY:[Ljava/lang/String; = null

.field private static calanderEventURL:Ljava/lang/String; = null

.field private static calanderRemiderURL:Ljava/lang/String; = null

.field private static calanderURL:Ljava/lang/String; = null

.field private static calendarAccountID:Ljava/lang/String; = null

.field private static final calendarAccountType:Ljava/lang/String; = "My calendar"

.field private static final calendarAccountTypeExt:Ljava/lang/String; = "Local Calendar"

.field private static final calendarSyncAccountType:Ljava/lang/String; = "_local_account"

.field private static final calendarSyncAccountTypeExt:Ljava/lang/String; = "offline"


# instance fields
.field private EventsIDArrays:[Ljava/lang/String;

.field private IDArrayCounts:I

.field private context:Landroid/content/Context;

.field public eventAlarm:[Ljava/lang/String;

.field public eventAlarmCounts:I

.field public eventContent:Ljava/lang/String;

.field public eventDescription:Ljava/lang/String;

.field public eventDuration:Ljava/lang/String;

.field public eventEnd:Ljava/lang/String;

.field public eventIsAllDay:I

.field public eventLastDate:Ljava/lang/String;

.field public eventLocation:Ljava/lang/String;

.field public eventRepeat:Ljava/lang/String;

.field public eventStart:Ljava/lang/String;

.field public eventTimeZone:Ljava/lang/String;

.field private myCursor:Landroid/database/Cursor;

.field public sync_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, ""

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderURL:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderRemiderURL:Ljava/lang/String;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TU"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SU"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WEEK_STRING_ARRAY:[Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 80
    const-string v0, "content://com.android.calendar/calendars"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderURL:Ljava/lang/String;

    .line 81
    const-string v0, "content://com.android.calendar/events"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    .line 82
    const-string v0, "content://com.android.calendar/reminders"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderRemiderURL:Ljava/lang/String;

    .line 351
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calendarAccountID:Ljava/lang/String;

    .line 21
    return-void

    .line 86
    :cond_0
    const-string v0, "content://calendar/calendars"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderURL:Ljava/lang/String;

    .line 87
    const-string v0, "content://calendar/events"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    .line 88
    const-string v0, "content://calendar/reminders"

    sput-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderRemiderURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cx"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    .line 61
    const-string v0, "Asia/Shanghai"

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    .line 129
    return-void
.end method

.method private AddReminderByEvent(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 584
    const/4 v0, 0x1

    .line 585
    .local v0, bRet:Z
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 586
    .local v2, rawContactId:J
    iget v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-gtz v6, :cond_0

    .line 587
    const/4 v6, 0x1

    .line 604
    :goto_0
    return v6

    .line 590
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-lt v1, v6, :cond_1

    move v6, v0

    .line 604
    goto :goto_0

    .line 591
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "event_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v6, "minutes"

    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v6, "method"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderRemiderURL:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 601
    .local v4, uriReminder:Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 602
    const/4 v0, 0x0

    .line 590
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private GetCalendarEndTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "during"

    .prologue
    .line 517
    if-eqz p2, :cond_0

    .line 518
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetReminderByEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "s"
    .parameter "id"

    .prologue
    .line 540
    const/4 v6, 0x0

    .line 541
    .local v6, bRet:Z
    const/4 v7, 0x0

    .line 543
    .local v7, curs:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderRemiderURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 544
    const/4 v5, 0x0

    .line 543
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 545
    if-eqz v7, :cond_2

    .line 546
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    .line 549
    const/4 v10, 0x0

    .line 552
    .local v10, numIndex:I
    :cond_0
    const-string v0, "minutes"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, mins:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 557
    add-int/lit8 v10, v10, 0x1

    .line 559
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 550
    if-nez v0, :cond_0

    .line 561
    .end local v9           #mins:Ljava/lang/String;
    .end local v10           #numIndex:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_2
    const/4 v6, 0x1

    .line 570
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 572
    :goto_0
    return v6

    .line 566
    :catch_0
    move-exception v8

    .line 567
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Calendar"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 569
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 570
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 571
    throw v0
.end method

.method private WiseRuleDaily(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;)V
    .locals 1
    .parameter "recur"

    .prologue
    .line 744
    const/4 v0, 0x4

    iput v0, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->freq:I

    .line 745
    return-void
.end method

.method private WiseRuleMonth(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;[Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "recur"
    .parameter "arrRecSplit"
    .parameter "tmStartTime"
    .parameter "ruleStr"
    .parameter "rrule"

    .prologue
    .line 793
    const/4 v2, 0x2

    .line 794
    .local v2, MONTH_DATE_NUM_IDX:I
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {p5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, strMIndicator:Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v5, p2, v7

    .line 797
    .local v5, strDate:Ljava/lang/String;
    const/16 v7, 0x2d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 798
    const-string v7, "Calendar"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in ParseRepeatRuleStr monthly is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not support last day"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v7, 0x0

    .line 825
    :goto_0
    return v7

    .line 801
    :cond_0
    const-string v7, "MD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 802
    const/4 v7, 0x0

    iput v7, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayCount:I

    .line 803
    const/4 v7, 0x1

    iput v7, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthdayCount:I

    .line 804
    const/4 v7, 0x1

    new-array v3, v7, [I

    .line 805
    .local v3, byMonthDay:[I
    const/4 v7, 0x0

    iget v8, p3, Landroid/text/format/Time;->monthDay:I

    aput v8, v3, v7

    .line 806
    iput-object v3, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthday:[I

    .line 824
    .end local v3           #byMonthDay:[I
    :goto_1
    const/4 v7, 0x6

    iput v7, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->freq:I

    .line 825
    const/4 v7, 0x1

    goto :goto_0

    .line 807
    :cond_1
    const-string v7, "MP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 808
    const/4 v7, 0x1

    new-array v1, v7, [I

    .line 809
    .local v1, ByDayNum:[I
    const/4 v7, 0x1

    new-array v0, v7, [I

    .line 810
    .local v0, ByDay:[I
    iget v7, p3, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v4, v7, 0x1

    .line 811
    .local v4, nWeekNum:I
    const/4 v7, 0x5

    if-ne v7, v4, :cond_2

    .line 812
    const/4 v4, -0x1

    .line 814
    :cond_2
    const/4 v7, 0x0

    aput v4, v1, v7

    .line 815
    const/4 v7, 0x0

    iget v8, p3, Landroid/text/format/Time;->weekDay:I

    invoke-static {v8}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->timeDay2Day(I)I

    move-result v8

    aput v8, v0, v7

    .line 816
    const/4 v7, 0x1

    iput v7, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayCount:I

    .line 817
    const/4 v7, 0x0

    iput v7, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bymonthdayCount:I

    .line 818
    iput-object v0, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byday:[I

    .line 819
    iput-object v1, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayNum:[I

    goto :goto_1

    .line 821
    .end local v0           #ByDay:[I
    .end local v1           #ByDayNum:[I
    .end local v4           #nWeekNum:I
    :cond_3
    const-string v7, "Calendar"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in ParseRepeatRuleStr monthly is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " String error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private WiseRuleWeek(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;[Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;)Z
    .locals 11
    .parameter "recur"
    .parameter "arrRecSplit"
    .parameter "tmStartTime"
    .parameter "ruleStr"

    .prologue
    .line 748
    const/4 v0, 0x5

    .line 749
    .local v0, WORK_DAY_COUNT:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v1, arrStrWeek:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 751
    .local v4, nCount:I
    sget-object v9, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WEEK_STRING_ARRAY:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_0

    .line 755
    array-length v9, p2

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    .line 760
    if-nez v4, :cond_3

    .line 761
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "in ParseRepeatRuleStr week count is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v8, 0x0

    .line 788
    :goto_2
    return v8

    .line 751
    :cond_0
    aget-object v7, v9, v8

    .line 752
    .local v7, strWeekString:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 755
    .end local v7           #strWeekString:Ljava/lang/String;
    :cond_1
    aget-object v6, p2, v8

    .line 756
    .local v6, strWeek:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 757
    add-int/lit8 v4, v4, 0x1

    .line 755
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 764
    .end local v6           #strWeek:Ljava/lang/String;
    :cond_3
    new-array v2, v4, [I

    .line 765
    .local v2, byDay:[I
    new-array v3, v4, [I

    .line 767
    .local v3, byDayNum:[I
    const/4 v8, 0x5

    if-ne v8, v4, :cond_4

    .line 768
    const/4 v8, 0x0

    const/high16 v9, 0x2

    aput v9, v2, v8

    .line 769
    const/4 v8, 0x1

    const/high16 v9, 0x4

    aput v9, v2, v8

    .line 770
    const/4 v8, 0x2

    const/high16 v9, 0x8

    aput v9, v2, v8

    .line 771
    const/4 v8, 0x3

    const/high16 v9, 0x10

    aput v9, v2, v8

    .line 772
    const/4 v8, 0x4

    const/high16 v9, 0x20

    aput v9, v2, v8

    .line 781
    :goto_3
    const/4 v5, 0x0

    .local v5, nDay:I
    :goto_4
    if-lt v5, v4, :cond_6

    .line 784
    const/4 v8, 0x5

    iput v8, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->freq:I

    .line 785
    iput-object v2, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->byday:[I

    .line 786
    iput-object v3, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayNum:[I

    .line 787
    iput v4, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->bydayCount:I

    .line 788
    const/4 v8, 0x1

    goto :goto_2

    .line 773
    .end local v5           #nDay:I
    :cond_4
    const/4 v8, 0x1

    if-ne v8, v4, :cond_5

    .line 775
    const/4 v8, 0x0

    iget v9, p3, Landroid/text/format/Time;->weekDay:I

    invoke-static {v9}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->timeDay2Day(I)I

    move-result v9

    aput v9, v2, v8

    goto :goto_3

    .line 778
    :cond_5
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "in ParseRepeatRuleStr week count is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v8, 0x0

    goto :goto_2

    .line 782
    .restart local v5       #nDay:I
    :cond_6
    const/4 v8, 0x0

    aput v8, v3, v5

    .line 781
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private WiseRuleYear(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;)V
    .locals 1
    .parameter "recur"

    .prologue
    .line 829
    const/4 v0, 0x7

    iput v0, p1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->freq:I

    .line 830
    return-void
.end method

.method private addCalendarEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "id"
    .parameter "rulerRepeate"

    .prologue
    .line 383
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "calendar_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "title"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "description"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "dtstart"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "dtend"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "duration"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "lastDate"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLastDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "eventTimezone"

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "allDay"

    iget v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "selfAttendeeStatus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "hasAttendeeData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-lez v1, :cond_0

    .line 401
    const-string v1, "hasAlarm"

    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    const-string v1, "rrule"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-object v0

    .line 403
    :cond_0
    const-string v1, "hasAlarm"

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCalendarIsExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "id"
    .parameter "rrule"

    .prologue
    .line 285
    const/4 v9, 0x0

    .line 286
    .local v9, bFind:Z
    const/4 v11, 0x0

    .line 288
    .local v11, c:Landroid/database/Cursor;
    const/16 v0, 0x9

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "calendar_id"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "allDay"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "eventLocation"

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "dtend"

    aput-object v1, v6, v0

    const/4 v0, 0x5

    const-string v1, "duration"

    aput-object v1, v6, v0

    const/4 v0, 0x6

    const-string v1, "dtstart"

    aput-object v1, v6, v0

    const/4 v0, 0x7

    .line 289
    const-string v1, "rrule"

    aput-object v1, v6, v0

    const/16 v0, 0x8

    const-string v1, "_sync_id"

    aput-object v1, v6, v0

    .line 290
    .local v6, ColumnNames:[Ljava/lang/String;
    const/16 v0, 0x9

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v7, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x4

    .line 291
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x7

    aput-object p2, v7, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->sync_id:Ljava/lang/String;

    aput-object v1, v7, v0

    .line 293
    .local v7, ColumnValues:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v10, buf:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 295
    .local v8, addCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v0, v6

    if-lt v13, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 306
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 307
    const/4 v9, 0x1

    .line 311
    :cond_0
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 313
    .end local v6           #ColumnNames:[Ljava/lang/String;
    .end local v7           #ColumnValues:[Ljava/lang/String;
    .end local v8           #addCount:I
    .end local v10           #buf:Ljava/lang/StringBuffer;
    .end local v13           #i:I
    :goto_1
    return v9

    .line 296
    .restart local v6       #ColumnNames:[Ljava/lang/String;
    .restart local v7       #ColumnValues:[Ljava/lang/String;
    .restart local v8       #addCount:I
    .restart local v10       #buf:Ljava/lang/StringBuffer;
    .restart local v13       #i:I
    :cond_1
    :try_start_1
    aget-object v0, v7, v13

    if-eqz v0, :cond_3

    .line 297
    if-eqz v8, :cond_2

    .line 298
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v6, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v7, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 308
    .end local v6           #ColumnNames:[Ljava/lang/String;
    .end local v7           #ColumnValues:[Ljava/lang/String;
    .end local v8           #addCount:I
    .end local v10           #buf:Ljava/lang/StringBuffer;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    .line 309
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 310
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 311
    invoke-direct {p0, v11}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 312
    throw v0
.end method

.method private checkUrl(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, bRet:Z
    if-eqz p1, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->AddReminderByEvent(Landroid/net/Uri;)Z

    move-result v0

    .line 376
    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    .line 377
    :cond_1
    const/16 v1, 0x2002

    .line 379
    :goto_0
    return v1

    :cond_2
    const/16 v1, 0x2001

    goto :goto_0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "curs"

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_0
    return-void
.end method

.method private genuineGetRuleDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strRule"

    .prologue
    .line 621
    const-string v0, " #0"

    .line 622
    .local v0, OCCURRENCE_FOREVER:Ljava/lang/String;
    const-string p1, "D1 #0"

    .line 623
    return-object p1
.end method

.method private genuineGetRuleMonth(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "strRule"
    .parameter "arr20String"
    .parameter "repeat"

    .prologue
    .line 662
    const-string v7, "BYDAY"

    .line 663
    .local v7, BYDAY_STR:Ljava/lang/String;
    const-string v8, "BYMONTHDAY"

    .line 664
    .local v8, BYMONTHDAY_STR:Ljava/lang/String;
    const-string v9, " #0"

    .line 665
    .local v9, OCCURRENCE_FOREVER:Ljava/lang/String;
    const/4 v11, 0x0

    .line 666
    .local v11, i:I
    const-string v13, ""

    .line 667
    .local v13, strMonDay:Ljava/lang/String;
    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v11, v1, :cond_2

    .line 673
    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v11, v1, :cond_3

    .line 674
    aget-object v13, p2, v11

    .line 678
    const-string v1, "="

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 679
    .local v10, arrMonthday:[Ljava/lang/String;
    if-eqz v10, :cond_1

    const/4 v1, 0x2

    array-length v2, v10

    if-eq v1, v2, :cond_4

    .line 680
    :cond_1
    const-string v1, "Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not support the month rule,arrMonthday is empty. string.string is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v1, ""

    .line 698
    .end local v10           #arrMonthday:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 668
    :cond_2
    aget-object v1, p2, v11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BYDAY"

    const/4 v5, 0x0

    const-string v6, "BYDAY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    aget-object v1, p2, v11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BYMONTHDAY"

    const/4 v5, 0x0

    const-string v6, "BYMONTHDAY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 676
    :cond_3
    const-string v1, "MP1"

    goto :goto_1

    .line 684
    .restart local v10       #arrMonthday:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    aget-object v1, v10, v1

    const-string v2, "BYMONTHDAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 685
    const/4 v1, 0x1

    aget-object v14, v10, v1

    .line 686
    .local v14, strMonthDay:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MD1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v1, p1

    .line 698
    goto :goto_1

    .line 688
    .end local v14           #strMonthDay:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    aget-object v16, v10, v1

    .line 689
    .local v16, strWeekDay:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 690
    const-string v1, "Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not support the month rule,strWeekDay length is not 3. string.string is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v1, ""

    goto :goto_1

    .line 693
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 694
    .local v12, strIdx:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 695
    .local v15, strWDay:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MP1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v1, p1

    .line 696
    goto/16 :goto_1
.end method

.method private genuineGetRuleWeek(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "strRule"
    .parameter "arr20String"

    .prologue
    .line 627
    const-string v7, "BYDAY"

    .line 628
    .local v7, BYDAY_STR:Ljava/lang/String;
    const-string v8, " #0"

    .line 629
    .local v8, OCCURRENCE_FOREVER:Ljava/lang/String;
    const/4 v11, 0x0

    .line 630
    .local v11, i:I
    const-string v1, "BYDAY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 631
    .local v12, nBydayLen:I
    const-string v13, ""

    .line 632
    .local v13, strByDayString:Ljava/lang/String;
    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v11, v1, :cond_3

    .line 636
    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v11, v1, :cond_4

    .line 637
    aget-object v13, p2, v11

    .line 641
    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 642
    .local v15, strWeekDay:Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 643
    :cond_1
    const-string v1, "Calendar"

    const-string v2, "not support the week rule string.the strWeekDay is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2
    sget-object v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WEEK_STRING_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "W1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object/from16 v1, p1

    .line 658
    .end local v15           #strWeekDay:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 633
    :cond_3
    aget-object v1, p2, v11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BYDAY"

    const/4 v5, 0x0

    const-string v6, "BYDAY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 639
    :cond_4
    const-string v1, "W1"

    goto :goto_2

    .line 649
    .restart local v15       #strWeekDay:Ljava/lang/String;
    :cond_5
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, arrWeekDay:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 651
    .local v10, buf:Ljava/lang/StringBuffer;
    const-string v1, "W1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    array-length v2, v9

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v2, :cond_6

    .line 655
    const-string v1, " #0"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 652
    :cond_6
    aget-object v14, v9, v1

    .line 653
    .local v14, strWDay:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private genuineGetRuleYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strRule"

    .prologue
    .line 702
    const-string v0, " #0"

    .line 703
    .local v0, OCCURRENCE_FOREVER:Ljava/lang/String;
    const-string p1, "YM1 #0"

    .line 704
    return-object p1
.end method

.method private getCalendarAccountID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    sget-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calendarAccountID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->queryCalendarByLocalType(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getCalendarId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calendarAccountID:Ljava/lang/String;

    .line 364
    invoke-direct {p0, v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 367
    .end local v0           #cur:Landroid/database/Cursor;
    :cond_0
    sget-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calendarAccountID:Ljava/lang/String;

    return-object v2

    .line 360
    .restart local v0       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processResults(Landroid/database/Cursor;)Z
    .locals 14
    .parameter "cur"

    .prologue
    .line 461
    const/4 v8, 0x0

    .line 462
    .local v8, result:Z
    if-nez p1, :cond_0

    move v9, v8

    .line 511
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 466
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 477
    const-string v12, "_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, id:Ljava/lang/String;
    const-string v12, "title"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 479
    const-string v12, "eventLocation"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    .line 480
    const-string v12, "description"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    .line 481
    const-string v12, "dtstart"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 482
    .local v10, start:Ljava/lang/String;
    const-string v12, "dtend"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, end:Ljava/lang/String;
    const-string v12, "lastDate"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, lastDate:Ljava/lang/String;
    const-string v12, "eventTimezone"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 485
    .local v11, timeZone:Ljava/lang/String;
    const-string v12, "duration"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, during:Ljava/lang/String;
    const-string v12, "allDay"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, allDay:Ljava/lang/String;
    const-string v12, "hasAlarm"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, hasAlarm:Ljava/lang/String;
    const-string v12, "rrule"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, repeat:Ljava/lang/String;
    const-string v12, "_sync_id"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->sync_id:Ljava/lang/String;

    .line 491
    iput-object v11, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 492
    iput-object v10, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    .line 493
    iget-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-direct {p0, v12, v2, v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetCalendarEndTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    .line 495
    iput-object v6, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLastDate:Ljava/lang/String;

    .line 496
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    .line 498
    :cond_1
    iput-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 501
    const-string v12, "1"

    invoke-virtual {v4, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 502
    iget-object v12, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    invoke-direct {p0, v12, v5}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetReminderByEvent(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .end local v0           #allDay:Ljava/lang/String;
    .end local v1           #during:Ljava/lang/String;
    .end local v2           #end:Ljava/lang/String;
    .end local v4           #hasAlarm:Ljava/lang/String;
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #lastDate:Ljava/lang/String;
    .end local v7           #repeat:Ljava/lang/String;
    .end local v10           #start:Ljava/lang/String;
    .end local v11           #timeZone:Ljava/lang/String;
    :cond_2
    :goto_1
    move v9, v8

    .line 511
    .restart local v9       #result:I
    goto/16 :goto_0

    .line 504
    .end local v9           #result:I
    .restart local v0       #allDay:Ljava/lang/String;
    .restart local v1       #during:Ljava/lang/String;
    .restart local v2       #end:Ljava/lang/String;
    .restart local v4       #hasAlarm:Ljava/lang/String;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v6       #lastDate:Ljava/lang/String;
    .restart local v7       #repeat:Ljava/lang/String;
    .restart local v10       #start:Ljava/lang/String;
    .restart local v11       #timeZone:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 507
    .end local v0           #allDay:Ljava/lang/String;
    .end local v1           #during:Ljava/lang/String;
    .end local v2           #end:Ljava/lang/String;
    .end local v4           #hasAlarm:Ljava/lang/String;
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #lastDate:Ljava/lang/String;
    .end local v7           #repeat:Ljava/lang/String;
    .end local v10           #start:Ljava/lang/String;
    .end local v11           #timeZone:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 508
    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "Calendar"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private queryCalendarByLocalTypeAndID([Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 13
    .parameter "projection"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    const-string v3, ""

    .line 162
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(_sync_account_type = \'_local_account\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_sync_account_type = \'offline\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    const/4 v10, 0x0

    .line 168
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 189
    :goto_0
    return-object v10

    .line 170
    :catch_0
    move-exception v11

    .line 171
    .local v11, e:Ljava/lang/Exception;
    const-string v7, ""

    .line 172
    .local v7, sel:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(account_type = \'Local Calendar\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'LOCAL\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'com.android.exchange\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'My calendar\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto/16 :goto_0

    .line 184
    :catch_1
    move-exception v12

    .line 185
    .local v12, ex:Ljava/lang/Exception;
    throw v11
.end method


# virtual methods
.method public DeleteAllCalendar()Z
    .locals 10

    .prologue
    .line 433
    const/4 v9, 0x0

    .line 434
    .local v9, status:Z
    const/4 v7, 0x0

    .line 436
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    .local v1, uriCal:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 438
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, Id:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 439
    if-nez v0, :cond_0

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v6           #Id:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    .line 452
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 454
    .end local v1           #uriCal:Landroid/net/Uri;
    :goto_0
    return v9

    .line 448
    :catch_0
    move-exception v8

    .line 449
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Calendar"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 451
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 452
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 453
    throw v0
.end method

.method public GetEventsAlarmByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 106
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 107
    :cond_0
    const-string v0, "Calendar"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetEventsIDArray()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, cur:Landroid/database/Cursor;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    .line 209
    .local v6, projection:[Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->queryCalendarByLocalType(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 211
    .local v0, IDCounts:I
    if-nez v0, :cond_0

    .line 212
    const/4 v7, 0x0

    iput v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->IDArrayCounts:I

    .line 213
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->EventsIDArrays:[Ljava/lang/String;

    .line 214
    iget v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->IDArrayCounts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 239
    .end local v0           #IDCounts:I
    :goto_0
    return v7

    .line 216
    .restart local v0       #IDCounts:I
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    new-array v7, v0, [Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->EventsIDArrays:[Ljava/lang/String;

    .line 218
    const/4 v5, 0x0

    .line 221
    .local v5, numIndex:I
    :cond_1
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 222
    .local v4, id:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, IDString:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->EventsIDArrays:[Ljava/lang/String;

    aput-object v1, v7, v5

    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 227
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 219
    if-nez v7, :cond_1

    .line 229
    iput v5, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->IDArrayCounts:I

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .end local v1           #IDString:Ljava/lang/String;
    .end local v4           #id:I
    .end local v5           #numIndex:I
    :cond_2
    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 239
    .end local v0           #IDCounts:I
    :goto_1
    iget v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->IDArrayCounts:I

    goto :goto_0

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "Calendar"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 236
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 237
    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 238
    throw v7
.end method

.method public GetEventsIDArrayByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 97
    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->IDArrayCounts:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 98
    :cond_0
    const-string v0, "Calendar"

    const-string v1, "index arrange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->EventsIDArrays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public GetRepeatRuleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "repeat"

    .prologue
    .line 709
    const-string v4, ""

    .line 710
    .local v4, strRule:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 711
    :cond_0
    const-string v5, "Calendar"

    const-string v6, "in GetRepeatRuleStr repeat is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v5, "NR"

    .line 740
    :goto_0
    return-object v5

    .line 714
    :cond_1
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, arr20String:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v3, v1, v5

    .line 716
    .local v3, strFreq:Ljava/lang/String;
    const/4 v0, 0x5

    .line 717
    .local v0, INDICATOR_IDX_INT:I
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 718
    .local v2, cIndicator:C
    sparse-switch v2, :sswitch_data_0

    :goto_1
    move-object v5, v4

    .line 740
    goto :goto_0

    .line 721
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->genuineGetRuleDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 722
    goto :goto_1

    .line 725
    :sswitch_1
    invoke-direct {p0, v4, v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->genuineGetRuleWeek(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 726
    goto :goto_1

    .line 729
    :sswitch_2
    invoke-direct {p0, v4, v1, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->genuineGetRuleMonth(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 730
    goto :goto_1

    .line 734
    :sswitch_3
    invoke-direct {p0, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->genuineGetRuleYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 735
    goto :goto_1

    .line 718
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_2
        0x57 -> :sswitch_1
        0x59 -> :sswitch_3
    .end sparse-switch
.end method

.method public ParseRepeatRuleStr(Ljava/lang/String;Landroid/text/format/Time;I)Ljava/lang/String;
    .locals 7
    .parameter "rrule"
    .parameter "tmStartTime"
    .parameter "nWeekStart"

    .prologue
    .line 834
    if-eqz p1, :cond_0

    const-string v0, "NR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    :cond_0
    const/4 v4, 0x0

    .line 868
    :goto_0
    return-object v4

    .line 837
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 838
    const/4 v4, 0x0

    .line 839
    .local v4, ruleStr:Ljava/lang/String;
    new-instance v1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;

    invoke-direct {v1}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;-><init>()V

    .line 840
    .local v1, recur:Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 841
    .local v6, cIndicator:C
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, arrRecSplit:[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 866
    :cond_2
    :goto_1
    iput p3, v1, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->wkst:I

    .line 867
    invoke-virtual {v1}, Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 868
    goto :goto_0

    .line 844
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WiseRuleDaily(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;)V

    goto :goto_1

    .line 848
    :sswitch_1
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WiseRuleWeek(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;[Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_2
    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    .line 854
    invoke-direct/range {v0 .. v5}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WiseRuleMonth(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;[Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 860
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->WiseRuleYear(Lcom/zte/backup/format/vxx/vcs/OkbEventRecurrence;)V

    goto :goto_1

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_2
        0x57 -> :sswitch_1
        0x59 -> :sswitch_3
    .end sparse-switch
.end method

.method public SetEventsAlarmByIndex(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "str"

    .prologue
    .line 120
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    if-le p1, v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public SetEventsAlarmCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 115
    iput p1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    .line 116
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    .line 117
    return-void
.end method

.method public addNewEventItem()I
    .locals 9

    .prologue
    .line 320
    const/16 v1, 0x2001

    .line 322
    .local v1, iRet:I
    :try_start_0
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getCalendarAccountID()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 329
    .local v4, rulerRepeate:Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 331
    invoke-direct {p0, v3, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->checkCalendarIsExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v1

    .line 348
    .end local v1           #iRet:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #rulerRepeate:Ljava/lang/String;
    .local v2, iRet:I
    :goto_0
    return v2

    .line 335
    .end local v2           #iRet:I
    .restart local v1       #iRet:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #rulerRepeate:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->addCalendarEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 336
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 337
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->checkUrl(Landroid/net/Uri;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v3           #id:Ljava/lang/String;
    .end local v4           #rulerRepeate:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :goto_1
    move v2, v1

    .line 348
    .end local v1           #iRet:I
    .restart local v2       #iRet:I
    goto :goto_0

    .line 339
    .end local v2           #iRet:I
    .restart local v1       #iRet:I
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "Calendar"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v1, 0x2004

    goto :goto_1

    .line 343
    .end local v0           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "Calendar"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v1, 0x2002

    goto :goto_1
.end method

.method public getBackupCount()I
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, result:I
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getEventsCount()I

    move-result v0

    .line 886
    return v0
.end method

.method public getBackupDataSize()J
    .locals 4

    .prologue
    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, iCalNum:I
    const/4 v0, 0x0

    .line 875
    .local v0, iBackupSpace:I
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getEventsCount()I

    move-result v1

    .line 876
    if-lez v1, :cond_0

    .line 877
    const/high16 v2, 0x8

    add-int/2addr v0, v2

    .line 878
    :cond_0
    mul-int/lit16 v2, v1, 0x800

    add-int/2addr v0, v2

    .line 880
    int-to-long v2, v0

    return-wide v2
.end method

.method public getCalanderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cur"

    .prologue
    .line 411
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    :cond_0
    const-string v0, "-1"

    .line 426
    .local v0, id:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 423
    .end local v0           #id:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #id:Ljava/lang/String;
    goto :goto_0
.end method

.method public getEventDataByID(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 246
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->sync_id:Ljava/lang/String;

    .line 247
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventContent:Ljava/lang/String;

    .line 248
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLocation:Ljava/lang/String;

    .line 249
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDescription:Ljava/lang/String;

    .line 250
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventStart:Ljava/lang/String;

    .line 251
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventEnd:Ljava/lang/String;

    .line 252
    const-string v3, "Asia/Shanghai"

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventTimeZone:Ljava/lang/String;

    .line 253
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventLastDate:Ljava/lang/String;

    .line 254
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventDuration:Ljava/lang/String;

    .line 255
    iput v5, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventIsAllDay:I

    .line 256
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventRepeat:Ljava/lang/String;

    .line 257
    iput-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarm:[Ljava/lang/String;

    .line 258
    iput v5, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->eventAlarmCounts:I

    .line 260
    const/16 v3, 0xd

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "eventLocation"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "description"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "dtstart"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "dtend"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 261
    const-string v4, "duration"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "eventTimezone"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "lastDate"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "allDay"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "rrule"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "hasAlarm"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "_sync_id"

    aput-object v4, v1, v3

    .line 262
    .local v1, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 271
    .local v2, result:Z
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->queryCalendarByLocalTypeAndID([Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    .line 272
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->processResults(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 281
    :goto_0
    return v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Calendar"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 278
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 279
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 280
    throw v3
.end method

.method public getEventsCount()I
    .locals 5

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, count:I
    :try_start_0
    sget-object v2, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->calanderEventURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->queryCalendarByLocalType(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    .line 196
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 202
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Calendar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 199
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 200
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->myCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->closeCursor(Landroid/database/Cursor;)V

    .line 201
    throw v2
.end method

.method public queryCalendarByLocalType(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "url"
    .parameter "projection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    const-string v3, ""

    .line 134
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_sync_account_type = \'_local_account\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_sync_account_type = \'offline\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    const/4 v10, 0x0

    .line 138
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 156
    :goto_0
    return-object v10

    .line 140
    :catch_0
    move-exception v11

    .line 141
    .local v11, e:Ljava/lang/Exception;
    const-string v7, ""

    .line 142
    .local v7, sel:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'My calendar\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'LOCAL\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'com.android.exchange\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account_type = \'Local Calendar\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_0

    .line 152
    :catch_1
    move-exception v12

    .line 153
    .local v12, ex:Ljava/lang/Exception;
    throw v11
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->context:Landroid/content/Context;

    .line 34
    return-void
.end method
