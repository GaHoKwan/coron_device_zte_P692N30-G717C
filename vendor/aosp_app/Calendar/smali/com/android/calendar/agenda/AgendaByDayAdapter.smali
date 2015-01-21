.class public Lcom/android/calendar/agenda/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_DAY:I = 0x0

.field static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    new-instance v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaByDayAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter;

    const v1, 0x7f04000a

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/agenda/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 81
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 82
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/agenda/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 59
    .parameter "dayAdapterInfo"

    .prologue
    .line 298
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object/from16 v49, v0

    .line 299
    .local v49, cursor:Landroid/database/Cursor;
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v57, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;>;"
    const/16 v56, -0x1

    .line 302
    .local v56, prevStartDay:I
    new-instance v58, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 303
    .local v58, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 304
    .local v54, now:J
    move-object/from16 v0, v58

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 305
    move-object/from16 v0, v58

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v54

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 307
    new-instance v53, Ljava/util/LinkedList;

    invoke-direct/range {v53 .. v53}, Ljava/util/LinkedList;-><init>()V

    .line 308
    .local v53, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v29, 0x0

    .local v29, position:I
    :goto_0
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 309
    const/16 v4, 0xa

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 310
    .local v28, startDay:I
    const/16 v4, 0x9

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 311
    .local v17, id:J
    const/4 v4, 0x7

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 312
    .local v32, startTime:J
    const/16 v4, 0x8

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 313
    .local v21, endTime:J
    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 314
    .local v23, instanceId:J
    const/4 v4, 0x3

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v25, 0x1

    .line 315
    .local v25, allDay:Z
    :goto_1
    if-eqz v25, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v32

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v21

    .line 320
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 323
    move-object/from16 v0, v58

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v47

    .line 324
    .local v47, adapterStartTime:J
    move-wide/from16 v0, v32

    move-wide/from16 v2, v47

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v32

    .line 326
    move/from16 v0, v28

    move/from16 v1, v56

    if-eq v0, v1, :cond_2

    .line 328
    const/4 v4, -0x1

    move/from16 v0, v56

    if-ne v0, v4, :cond_4

    .line 329
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_1
    :goto_2
    move/from16 v56, v28

    .line 377
    :cond_2
    const/16 v4, 0xb

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 380
    .local v16, endDay:I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 381
    move/from16 v0, v16

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v19

    .line 383
    .local v19, nextMidnight:J
    new-instance v14, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    move/from16 v15, v29

    invoke-direct/range {v14 .. v25}, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;-><init>(IIJJJJZ)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v26, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    move-wide/from16 v30, v17

    move-wide/from16 v34, v19

    move-wide/from16 v36, v23

    move/from16 v38, v25

    invoke-direct/range {v26 .. v38}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v19           #nextMidnight:J
    :goto_3
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 314
    .end local v16           #endDay:I
    .end local v25           #allDay:Z
    .end local v47           #adapterStartTime:J
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v25       #allDay:Z
    .restart local v47       #adapterStartTime:J
    :cond_4
    const/16 v50, 0x0

    .line 335
    .local v50, dayHeaderAdded:Z
    add-int/lit8 v6, v56, 0x1

    .local v6, currentDay:I
    :goto_4
    move/from16 v0, v28

    if-gt v6, v0, :cond_9

    .line 336
    const/16 v50, 0x0

    .line 337
    invoke-virtual/range {v53 .. v53}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .line 338
    .local v52, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_5
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 339
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 342
    .local v51, info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_5

    .line 343
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 349
    :cond_5
    if-nez v50, :cond_6

    .line 350
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const/16 v50, 0x1

    .line 353
    :cond_6
    move-object/from16 v0, v51

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v19

    .line 356
    .restart local v19       #nextMidnight:J
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_7

    move-object/from16 v0, v51

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 358
    .local v12, infoEndTime:J
    :goto_6
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v51

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v51

    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v51

    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v51

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    move-wide/from16 v0, v19

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_5

    .end local v12           #infoEndTime:J
    :cond_7
    move-wide/from16 v12, v19

    .line 356
    goto :goto_6

    .line 335
    .end local v19           #nextMidnight:J
    .end local v51           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 368
    .end local v52           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_9
    if-nez v50, :cond_1

    .line 369
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 391
    .end local v6           #currentDay:I
    .end local v50           #dayHeaderAdded:Z
    .restart local v16       #endDay:I
    :cond_a
    new-instance v26, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v27, 0x1

    move-wide/from16 v30, v17

    move-wide/from16 v34, v21

    move-wide/from16 v36, v23

    move/from16 v38, v25

    invoke-direct/range {v26 .. v38}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 398
    .end local v16           #endDay:I
    .end local v17           #id:J
    .end local v21           #endTime:J
    .end local v23           #instanceId:J
    .end local v25           #allDay:Z
    .end local v28           #startDay:I
    .end local v32           #startTime:J
    .end local v47           #adapterStartTime:J
    :cond_b
    if-lez v56, :cond_10

    .line 399
    add-int/lit8 v6, v56, 0x1

    .restart local v6       #currentDay:I
    :goto_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v6, v4, :cond_10

    .line 401
    const/16 v50, 0x0

    .line 402
    .restart local v50       #dayHeaderAdded:Z
    invoke-virtual/range {v53 .. v53}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .line 403
    .restart local v52       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_8
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 404
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 407
    .restart local v51       #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_c

    .line 408
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 414
    :cond_c
    if-nez v50, :cond_d

    .line 415
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const/16 v50, 0x1

    .line 418
    :cond_d
    move-object/from16 v0, v51

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v19

    .line 420
    .restart local v19       #nextMidnight:J
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_e

    move-object/from16 v0, v51

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 422
    .restart local v12       #infoEndTime:J
    :goto_9
    new-instance v34, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v35, 0x1

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v37, v0

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v46, v0

    move/from16 v36, v6

    move-wide/from16 v42, v12

    invoke-direct/range {v34 .. v46}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    move-wide/from16 v0, v19

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_8

    .end local v12           #infoEndTime:J
    :cond_e
    move-wide/from16 v12, v19

    .line 420
    goto :goto_9

    .line 400
    .end local v19           #nextMidnight:J
    .end local v51           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 430
    .end local v6           #currentDay:I
    .end local v50           #dayHeaderAdded:Z
    .end local v52           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_10
    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 431
    return-void
.end method

.method public changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 294
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 295
    return-void
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 290
    return-void
.end method

.method public findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 22
    .parameter "time"
    .parameter "id"

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 509
    const/4 v11, 0x0

    .line 587
    :cond_0
    :goto_0
    return v11

    .line 511
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 512
    .local v13, millis:J
    const-wide/32 v16, 0x7fffffff

    .line 513
    .local v16, minDistance:J
    const-wide/32 v8, 0x7fffffff

    .line 514
    .local v8, idFoundMinDistance:J
    const/16 v18, 0x0

    .line 515
    .local v18, minIndex:I
    const/4 v10, 0x0

    .line 516
    .local v10, idFoundMinIndex:I
    const/4 v6, -0x1

    .line 517
    .local v6, eventInTimeIndex:I
    const/4 v3, -0x1

    .line 518
    .local v3, allDayEventInTimeIndex:I
    const/4 v2, 0x0

    .line 519
    .local v2, allDayEventDay:I
    const/4 v15, 0x0

    .line 520
    .local v15, minDay:I
    const/4 v7, 0x0

    .line 521
    .local v7, idFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 531
    .local v12, len:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1
    if-ge v11, v12, :cond_8

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 533
    .local v19, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 531
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 538
    :cond_3
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p2

    if-nez v20, :cond_5

    .line 539
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v13

    if-eqz v20, :cond_0

    .line 544
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 545
    .local v4, distance:J
    cmp-long v20, v4, v8

    if-gez v20, :cond_4

    .line 546
    move-wide v8, v4

    .line 547
    move v10, v11

    .line 549
    :cond_4
    const/4 v7, 0x1

    .line 551
    .end local v4           #distance:J
    :cond_5
    if-nez v7, :cond_2

    .line 553
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-ltz v20, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-gtz v20, :cond_7

    .line 554
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 555
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_2

    .line 556
    move v3, v11

    .line 557
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 559
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_2

    .line 560
    move v6, v11

    goto :goto_2

    .line 562
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_2

    .line 564
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 565
    .restart local v4       #distance:J
    cmp-long v20, v4, v16

    if-gez v20, :cond_2

    .line 566
    move-wide/from16 v16, v4

    .line 567
    move/from16 v18, v11

    .line 568
    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 575
    .end local v4           #distance:J
    .end local v19           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_8
    if-eqz v7, :cond_9

    move v11, v10

    .line 576
    goto/16 :goto_0

    .line 579
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_a

    move v11, v6

    .line 580
    goto/16 :goto_0

    .line 583
    :cond_a
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_b

    if-eq v15, v2, :cond_b

    move v11, v3

    .line 584
    goto/16 :goto_0

    :cond_b
    move/from16 v11, v18

    .line 587
    goto/16 :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 613
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v3

    .line 617
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 618
    .local v1, len:I
    if-ge p1, v1, :cond_0

    .line 620
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 621
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 622
    .local v2, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v4, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 623
    iget v3, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_0

    .line 620
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 654
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 655
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 656
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 667
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 658
    .restart local v1       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 659
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 661
    if-ltz v0, :cond_1

    .line 662
    neg-int v2, v0

    goto :goto_0

    .line 667
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getHeaderItemsCount(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 118
    const/4 v0, -0x1

    .line 127
    :cond_0
    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    .line 121
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 103
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move v0, v2

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 107
    :cond_2
    move v0, p1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 108
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 109
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-eqz v3, :cond_1

    .line 107
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_4
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method public getInstanceId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 88
    :cond_0
    const-wide/16 v0, -0x1

    .line 90
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 140
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 146
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 143
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 152
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 153
    neg-int v1, p1

    int-to-long v1, v1

    .line 158
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 155
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 158
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartTime(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 95
    :cond_0
    const-wide/16 v0, -0x1

    .line 97
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-le v0, v3, :cond_1

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 281
    :goto_0
    return-object v11

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 183
    .local v18, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_6

    .line 184
    const/16 v16, 0x0

    .line 185
    .local v16, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    const/4 v11, 0x0

    .line 186
    .local v11, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 190
    .local v19, tag:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    if-eqz v3, :cond_2

    .line 191
    move-object/from16 v11, p2

    move-object/from16 v16, v19

    .line 192
    check-cast v16, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .line 193
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 197
    .end local v19           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v16, :cond_3

    .line 200
    new-instance v16, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .end local v16           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 201
    .restart local v16       #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040007

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 202
    const v3, 0x7f10000e

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 203
    const v3, 0x7f10000f

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 204
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 205
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v21

    .line 214
    .local v21, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 215
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 216
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 222
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 223
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    invoke-virtual {v13, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 224
    .local v5, millis:J
    const/4 v9, 0x2

    .line 225
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, dayViewText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    const/16 v9, 0x10

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v7, v5

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, dateViewText:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-le v3, v4, :cond_5

    .line 247
    const/high16 v3, 0x7f02

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 250
    :cond_5
    const v3, 0x7f020001

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 254
    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v11           #agendaDayView:Landroid/view/View;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v14           #dateViewText:Ljava/lang/String;
    .end local v15           #dayViewText:Ljava/lang/String;
    .end local v16           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v21           #tz:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 256
    .local v17, itemView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 257
    .local v16, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 261
    .local v20, title:Landroid/widget/TextView;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v16

    iput-wide v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 262
    move-object/from16 v0, v16

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 266
    .local v12, allDay:Z
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    if-nez v12, :cond_7

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-lez v3, :cond_8

    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-gt v3, v4, :cond_9

    .line 272
    :cond_8
    const v3, 0x7f020001

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    .line 280
    :goto_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->julianDay:I

    move-object/from16 v11, v17

    .line 281
    goto/16 :goto_0

    .line 276
    :cond_9
    const/high16 v3, 0x7f02

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    goto :goto_1

    .line 284
    .end local v12           #allDay:Z
    .end local v16           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .end local v17           #itemView:Landroid/view/View;
    .end local v20           #title:Landroid/widget/TextView;
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown event type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x2

    return v0
.end method

.method public isDayHeaderView(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 677
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 679
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 681
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 679
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstDayAfterYesterday(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v0

    .line 599
    .local v0, headerPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 600
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_0

    .line 601
    iget-boolean v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 603
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAsFirstDayAfterYesterday(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 640
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    goto :goto_0
.end method
