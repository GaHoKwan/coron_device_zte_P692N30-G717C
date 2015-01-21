.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSimpleAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static BOTTOM_ITEM_HEIGHT:I = 0x0

.field private static COLOR_CHIP_LEFT_MARGIN:I = 0x0

.field private static COLOR_CHIP_RIGHT_MARGIN:I = 0x0

.field private static COLOR_CHIP_TOP_OFFSET:I = 0x0

.field private static final IS_BELOW_SELECTED:I = 0x8

.field private static final IS_BOTTOM:I = 0x4

.field private static final IS_SELECTED:I = 0x1

.field private static final IS_TOP:I = 0x2

.field private static NORMAL_ITEM_HEIGHT:I = 0x0

.field private static ORG_BOTTOM_ITEM_HEIGHT:I = 0x0

.field private static ORG_COLOR_CHIP_LEFT_MARGIN:I = 0x0

.field private static ORG_COLOR_CHIP_RIGHT_MARGIN:I = 0x0

.field private static ORG_COLOR_CHIP_TOP_OFFSET:I = 0x0

.field private static ORG_NORMAL_ITEM_HEIGHT:I = 0x0

.field private static ORG_SELECTED_COLOR_CHIP_SIZE:I = 0x0

.field private static ORG_UNSELECTED_COLOR_CHIP_SIZE:I = 0x0

.field private static SELECTED_COLOR_CHIP_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SelectCalendarsAdapter"

.field private static UNSELECTED_COLOR_CHIP_SIZE:I

.field private static mScale:F


# instance fields
.field private mColorCalendarHidden:I

.field private mColorCalendarSecondaryHidden:I

.field private mColorCalendarSecondaryVisible:I

.field private mColorCalendarVisible:I

.field private mColorColumn:I

.field private mCursor:Landroid/database/Cursor;

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field private mNameColumn:I

.field private mOrientation:I

.field private mOwnerAccountColumn:I

.field mRes:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mVisibleColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 44
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 45
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 46
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 47
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 48
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 49
    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 51
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_SELECTED_COLOR_CHIP_SIZE:I

    .line 52
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_UNSELECTED_COLOR_CHIP_SIZE:I

    .line 53
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_LEFT_MARGIN:I

    .line 54
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_RIGHT_MARGIN:I

    .line 55
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_TOP_OFFSET:I

    .line 56
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_BOTTOM_ITEM_HEIGHT:I

    .line 57
    const/16 v0, 0x30

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_NORMAL_ITEM_HEIGHT:I

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 95
    iput p2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    .line 97
    invoke-direct {p0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    .line 100
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    .line 101
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    .line 102
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 103
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .line 105
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 108
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    if-nez v0, :cond_0

    .line 109
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_SELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 112
    :cond_0
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    if-nez v0, :cond_1

    .line 113
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_UNSELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 116
    :cond_1
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    if-nez v0, :cond_2

    .line 117
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 120
    :cond_2
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    if-nez v0, :cond_3

    .line 121
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 124
    :cond_3
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    if-nez v0, :cond_4

    .line 125
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_COLOR_CHIP_TOP_OFFSET:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 128
    :cond_4
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    if-nez v0, :cond_5

    .line 129
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_BOTTOM_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 132
    :cond_5
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    if-nez v0, :cond_6

    .line 133
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->ORG_NORMAL_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 137
    :cond_6
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 11
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 190
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_0
    if-nez p1, :cond_2

    .line 194
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 195
    iput v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 196
    iput-object v10, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 202
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, idColumn:I
    const-string v6, "calendar_displayName"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, nameColumn:I
    const-string v6, "calendar_color"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, colorColumn:I
    const-string v6, "visible"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 206
    .local v5, visibleColumn:I
    const-string v6, "ownerAccount"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, ownerAccountColumn:I
    if-ltz v1, :cond_3

    if-ltz v2, :cond_3

    if-ltz v0, :cond_3

    if-ltz v5, :cond_3

    if-gez v3, :cond_4

    .line 208
    :cond_3
    const-string v6, "SelectCalendarsAdapter"

    const-string v8, "getColumIndex failed, return like cursor == null"

    invoke-static {v6, v8}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 210
    iput-object v10, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    goto :goto_0

    .line 214
    :cond_4
    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    .line 215
    iput v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    .line 216
    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    .line 217
    iput v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    .line 218
    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    .line 221
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iput-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 223
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, p:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    new-instance v8, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v8, p0, v10}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;)V

    aput-object v8, v6, v4

    .line 227
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v6, v6, v4

    iget v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 228
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v6, v6, v4

    iget v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 229
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v6, v6, v4

    iget v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 230
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v8, v6, v4

    iget v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v8, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 231
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v6, v6, v4

    iget v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v6, v7

    .line 230
    goto :goto_2
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method

.method protected getBackground(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "position"
    .parameter "selected"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 343
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 344
    .local v0, bg:I
    :goto_0
    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    if-ne v3, v1, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 345
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 346
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int/2addr v0, v2

    .line 347
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->getBackgrounds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .end local v0           #bg:I
    :cond_1
    move v0, v2

    .line 343
    goto :goto_0

    .restart local v0       #bg:I
    :cond_2
    move v1, v2

    .line 344
    goto :goto_1

    :cond_3
    move v1, v2

    .line 345
    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 355
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 359
    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 363
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 364
    const-wide/16 v0, 0x0

    .line 366
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 243
    const/16 v17, 0x0

    .line 333
    :goto_0
    return-object v17

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 246
    .local v9, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-boolean v14, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 248
    .local v14, selected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v6

    .line 250
    .local v6, color:I
    if-nez p2, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 256
    .local v17, view:Landroid/view/View;
    :goto_1
    const v19, 0x7f100033

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 257
    .local v5, calendarName:Landroid/widget/TextView;
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const-string v19, "PC Sync"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0c003c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_1
    const v19, 0x7f100032

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 264
    .local v7, colorView:Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 266
    const v19, 0x7f100035

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 267
    .local v15, syncCheckBox:Landroid/widget/CheckBox;
    if-eqz v15, :cond_7

    .line 269
    invoke-virtual {v15, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 272
    if-eqz v14, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    move/from16 v16, v0

    .line 277
    .local v16, textColor:I
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 280
    .local v8, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    const v19, 0x7f100034

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 281
    .local v13, secondaryText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "calendar.google.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 285
    if-eqz v14, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 290
    .local v12, secondaryColor:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    const/16 v19, -0x2

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    .end local v12           #secondaryColor:I
    :goto_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .end local v8           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #secondaryText:Landroid/widget/TextView;
    .end local v16           #textColor:I
    :cond_2
    :goto_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 253
    .end local v5           #calendarName:Landroid/widget/TextView;
    .end local v7           #colorView:Landroid/view/View;
    .end local v15           #syncCheckBox:Landroid/widget/CheckBox;
    .end local v17           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v17, p2

    .restart local v17       #view:Landroid/view/View;
    goto/16 :goto_1

    .line 275
    .restart local v5       #calendarName:Landroid/widget/TextView;
    .restart local v7       #colorView:Landroid/view/View;
    .restart local v15       #syncCheckBox:Landroid/widget/CheckBox;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    move/from16 v16, v0

    .restart local v16       #textColor:I
    goto/16 :goto_2

    .line 288
    .restart local v8       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .restart local v13       #secondaryText:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .restart local v12       #secondaryColor:I
    goto :goto_3

    .line 295
    .end local v12           #secondaryColor:I
    :cond_6
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 303
    .end local v8           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #secondaryText:Landroid/widget/TextView;
    .end local v16           #textColor:I
    :cond_7
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v11, params:Landroid/widget/RelativeLayout$LayoutParams;
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 306
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 309
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 310
    if-nez v14, :cond_8

    .line 311
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 314
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 316
    :cond_8
    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getBackground(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 319
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 321
    .local v10, newParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 322
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    const v19, 0x7f1000b0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 328
    .local v18, visibleCheckBox:Landroid/widget/CheckBox;
    if-eqz v18, :cond_2

    .line 329
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 324
    .end local v18           #visibleCheckBox:Landroid/widget/CheckBox;
    :cond_9
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6
.end method

.method public getVisible(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public setVisible(II)V
    .locals 2
    .parameter "position"
    .parameter "visible"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 371
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 372
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
