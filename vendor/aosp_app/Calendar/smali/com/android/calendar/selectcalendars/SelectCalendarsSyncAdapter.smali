.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSyncAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_SIZE:I = 0x0

.field private static final LAYOUT:I = 0x7f040014

.field private static final TAG:Ljava/lang/String; = "SelCalsAdapter"

.field private static mCheckBoxStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mColorColumn:I

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameColumn:I

.field private final mNotSyncedString:Ljava/lang/String;

.field private mRowCount:I

.field private mSyncedColumn:I

.field private final mSyncedString:Ljava/lang/String;

.field private r:Landroid/graphics/drawable/shapes/RectShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mCheckBoxStatus:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 73
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 74
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 76
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    sget v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 79
    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static clearCheckBoxStatus()V
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mCheckBoxStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 237
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 11
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 84
    iput v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 85
    iput-object v10, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, idColumn:I
    const-string v7, "calendar_displayName"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 92
    .local v4, nameColumn:I
    const-string v7, "calendar_color"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, colorColumn:I
    const-string v7, "sync_events"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 95
    .local v6, syncedColumn:I
    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    if-ltz v0, :cond_2

    if-gez v6, :cond_3

    .line 96
    :cond_2
    const-string v7, "SelCalsAdapter"

    const-string v9, "getColumnIndex failed, return as cursor is null"

    invoke-static {v7, v9}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 98
    iput-object v10, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    goto :goto_0

    .line 102
    :cond_3
    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    .line 103
    iput v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    .line 104
    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    .line 105
    iput v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    iput v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 109
    iget v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    new-array v7, v7, [Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iput-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 110
    const/4 v7, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 111
    const/4 v5, 0x0

    .line 112
    .local v5, p:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    iget v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 114
    .local v1, id:J
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    new-instance v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    invoke-direct {v9, p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V

    aput-object v9, v7, v5

    .line 115
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, v5

    iput-wide v1, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 116
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, v5

    iget v9, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, v5

    iget v9, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 118
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v9, v7, v5

    iget v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    .line 119
    sget-object v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mCheckBoxStatus:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 120
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v9, v7, v5

    sget-object v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mCheckBoxStatus:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 124
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_1

    :cond_4
    move v7, v8

    .line 118
    goto :goto_2

    .line 122
    :cond_5
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, v5

    iget-object v9, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    iput-boolean v9, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    goto :goto_3
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public getChanges()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 182
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 186
    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 192
    const-wide/16 v0, 0x0

    .line 194
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getSynced(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f100034

    .line 135
    iget v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v6, :cond_0

    .line 136
    const/4 v5, 0x0

    .line 164
    :goto_0
    return-object v5

    .line 138
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-object v3, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 139
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-boolean v4, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 140
    .local v4, selected:Z
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    invoke-static {v6}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 142
    .local v1, color:I
    if-nez p2, :cond_1

    .line 143
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040014

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 148
    .local v5, view:Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    const v6, 0x7f100035

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 151
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 153
    if-eqz v4, :cond_2

    .line 154
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 159
    :goto_2
    const v6, 0x7f100032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, colorView:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    const v6, 0x7f100033

    invoke-static {v5, v6, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #colorView:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_1

    .line 156
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_2
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .line 208
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 209
    .local v1, row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 212
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v3, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 217
    .local v2, status:Ljava/lang/String;
    :goto_1
    const v3, 0x7f100034

    invoke-static {p2, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 219
    const v3, 0x7f100035

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 220
    .local v0, cb:Landroid/widget/CheckBox;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mCheckBoxStatus:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void

    .line 209
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .restart local v2       #status:Ljava/lang/String;
    goto :goto_1
.end method
