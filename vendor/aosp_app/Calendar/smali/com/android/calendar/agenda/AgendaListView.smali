.class public Lcom/android/calendar/agenda/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_UPDATE_TIME:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "AgendaListView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mHandler:Landroid/os/Handler;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private final mPastEventUpdater:Ljava/lang/Runnable;

.field private mShowEventDetailsWithAgenda:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$1;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$2;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$3;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaListView;->initView(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaListView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaListView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaListView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->updatePastEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/agenda/AgendaListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setPastEventsUpdater()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090003

    const/4 v3, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 93
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 97
    instance-of v0, p1, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {v0, p1, p0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 109
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v5, v3}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 113
    instance-of v0, p1, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;

    if-eqz v0, :cond_1

    .line 114
    iput-boolean v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    .line 121
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 125
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    goto :goto_1
.end method

.method private resetPastEventsUpdater()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private setPastEventsUpdater()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x493e0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    .local v0, now:J
    div-long v4, v0, v8

    mul-long v2, v4, v8

    .line 134
    .local v2, roundedTime:J
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    sub-long v6, v0, v2

    sub-long v6, v8, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method private shiftPosition(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 403
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 404
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 407
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 408
    .local v1, position:I
    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_0
    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 430
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .line 408
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 423
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private updatePastEvents()Z
    .locals 12

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 149
    .local v0, childCount:I
    const/4 v4, 0x0

    .line 150
    .local v4, needUpdate:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 151
    .local v5, now:J
    new-instance v8, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 152
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 153
    iget-wide v10, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 156
    .local v9, todayJulianDay:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 157
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, listItem:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 159
    .local v7, o:Ljava/lang/Object;
    instance-of v10, v7, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    if-eqz v10, :cond_1

    move-object v1, v7

    .line 161
    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .line 162
    .local v1, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    iget v10, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_4

    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_4

    .line 163
    const/4 v4, 0x1

    .line 177
    .end local v1           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v3           #listItem:Landroid/view/View;
    .end local v7           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    return v4

    .line 166
    .restart local v3       #listItem:Landroid/view/View;
    .restart local v7       #o:Ljava/lang/Object;
    :cond_1
    instance-of v10, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v10, :cond_4

    move-object v1, v7

    .line 169
    check-cast v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 170
    .local v1, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_4

    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    if-nez v10, :cond_2

    iget-wide v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    cmp-long v10, v10, v5

    if-lez v10, :cond_3

    :cond_2
    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    if-eqz v10, :cond_4

    iget v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_4

    .line 172
    :cond_3
    const/4 v4, 0x1

    .line 173
    goto :goto_1

    .line 156
    .end local v1           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteSelectedEvent()V
    .locals 10

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v9

    .line 249
    .local v9, position:I
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    .line 250
    .local v8, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-eqz v8, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, v8, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    iget-wide v3, v8, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    iget-wide v5, v8, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 253
    :cond_0
    return-void
.end method

.method protected getEventIdByPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 454
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 457
    .local v0, eventInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 458
    iget-wide v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    .line 461
    .end local v0           #eventInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisibleEvent()Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 317
    .local v0, position:I
    iget-boolean v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 320
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 322
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getStickyHeaderHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 323
    add-int/lit8 v0, v0, 0x1

    .line 328
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v3

    return-object v3
.end method

.method public getFirstVisibleTime(Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;)J
    .locals 7
    .parameter "e"

    .prologue
    .line 284
    move-object v0, p1

    .line 285
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleEvent()Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 288
    :cond_0
    if-eqz v0, :cond_1

    .line 289
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 290
    .local v4, t:Landroid/text/format/Time;
    iget-wide v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 292
    iget v1, v4, Landroid/text/format/Time;->hour:I

    .line 293
    .local v1, hour:I
    iget v2, v4, Landroid/text/format/Time;->minute:I

    .line 294
    .local v2, minute:I
    iget v3, v4, Landroid/text/format/Time;->second:I

    .line 295
    .local v3, second:I
    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 296
    iput v1, v4, Landroid/text/format/Time;->hour:I

    .line 297
    iput v2, v4, Landroid/text/format/Time;->minute:I

    .line 298
    iput v3, v4, Landroid/text/format/Time;->second:I

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 305
    .end local v1           #hour:I
    .end local v2           #minute:I
    .end local v3           #second:I
    .end local v4           #t:Landroid/text/format/Time;
    :goto_0
    return-wide v5

    :cond_1
    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    .prologue
    .line 256
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 258
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 259
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 261
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    .line 265
    .end local v2           #listItem:Landroid/view/View;
    :goto_1
    return-object v2

    .line 258
    .restart local v2       #listItem:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getJulianDayFromPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 335
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v1

    .line 338
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTime()J
    .locals 4

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 270
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 272
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 273
    iget-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 276
    .end local v0           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :goto_0
    return-wide v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime(Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .locals 9
    .parameter "time"
    .parameter "id"
    .parameter "searchQuery"
    .parameter "forced"
    .parameter "refreshEventInfo"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime(Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;)J

    move-result-wide v7

    .line 229
    .local v7, goToTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 232
    :cond_0
    invoke-virtual {p1, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 234
    .end local v7           #goToTime:J
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 240
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 241
    return-void
.end method

.method public isEventVisible(Landroid/text/format/Time;J)Z
    .locals 11
    .parameter "startTime"
    .parameter "id"

    .prologue
    .line 344
    const-wide/16 v9, -0x1

    cmp-long v9, p2, v9

    if-eqz v9, :cond_0

    if-nez p1, :cond_1

    .line 345
    :cond_0
    const/4 v9, 0x0

    .line 374
    :goto_0
    return v9

    .line 348
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_2

    .line 351
    const/4 v9, 0x0

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 354
    .local v8, start:I
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 355
    .local v6, milliTime:J
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 356
    .local v1, childCount:I
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCount()I

    move-result v3

    .line 358
    .local v3, eventsInAdapter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 359
    add-int v9, v4, v8

    if-lt v9, v3, :cond_4

    .line 374
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 362
    :cond_4
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    add-int v10, v4, v8

    invoke-virtual {v9, v10}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v2

    .line 363
    .local v2, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez v2, :cond_6

    .line 358
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    :cond_6
    iget-wide v9, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    cmp-long v9, v9, p2

    if-nez v9, :cond_5

    iget-wide v9, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_5

    .line 367
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 368
    .local v5, listItem:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    if-gt v9, v10, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v10}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getStickyHeaderHeight()I

    move-result v10

    if-lt v9, v10, :cond_5

    .line 370
    const/4 v9, 0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->close()V

    .line 184
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v17

    .line 192
    .local v17, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v19

    .line 193
    .local v19, oldInstanceId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedView(Landroid/view/View;)V

    .line 198
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v2

    cmp-long v2, v19, v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-nez v2, :cond_2

    .line 200
    :cond_0
    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 201
    .local v7, startTime:J
    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 205
    .local v9, endTime:J
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 206
    .local v18, holder:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_3

    .line 207
    check-cast v18, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v18           #holder:Ljava/lang/Object;
    move-object/from16 v0, v18

    iget-wide v15, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 211
    .local v15, holderStartTime:J
    :goto_0
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v7

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v2, v9, v10, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v9

    .line 215
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    .line 217
    .local v1, controller:Lcom/android/calendar/CalendarController;
    const-wide/16 v3, 0x2

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    invoke-static {v2, v13}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v13

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 222
    .end local v1           #controller:Lcom/android/calendar/CalendarController;
    .end local v7           #startTime:J
    .end local v9           #endTime:J
    .end local v15           #holderStartTime:J
    .end local v17           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v19           #oldInstanceId:J
    :cond_2
    return-void

    .line 209
    .restart local v7       #startTime:J
    .restart local v9       #endTime:J
    .restart local v17       #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .restart local v18       #holder:Ljava/lang/Object;
    .restart local v19       #oldInstanceId:J
    :cond_3
    move-wide v15, v7

    .restart local v15       #holderStartTime:J
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 445
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->resetPastEventsUpdater()V

    .line 446
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 438
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setPastEventsUpdater()V

    .line 440
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->onResume()V

    .line 441
    return-void
.end method

.method public refresh(Z)V
    .locals 7
    .parameter "forced"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 245
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1
    .parameter "hideDeclined"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 434
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 383
    return-void
.end method

.method public shiftSelection(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaListView;->shiftPosition(I)V

    .line 389
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 390
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 391
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 393
    :cond_0
    return-void
.end method
