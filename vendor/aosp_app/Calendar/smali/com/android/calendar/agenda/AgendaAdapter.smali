.class public Lcom/android/calendar/agenda/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private COLOR_CHIP_ALL_DAY_HEIGHT:I

.field private COLOR_CHIP_HEIGHT:I

.field private final mDeclinedColor:I

.field private final mFormatter:Ljava/util/Formatter;

.field private final mNoTitleLabel:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private mScale:F

.field private final mStandardColor:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mWhereColor:I

.field private final mWhereDeclinedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 56
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 87
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mDeclinedColor:I

    .line 89
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mStandardColor:I

    .line 90
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereDeclinedColor:I

    .line 91
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereColor:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 93
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    .line 95
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    .line 96
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    .line 97
    iget v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mScale:F

    .line 99
    iget v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 100
    iget v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    .line 101
    iget v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 29
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 109
    const/16 v16, 0x0

    .line 113
    .local v16, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 114
    .local v21, tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    check-cast v16, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 118
    .restart local v16       #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_0
    if-nez v16, :cond_1

    .line 119
    new-instance v16, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v16           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;-><init>()V

    .line 120
    .restart local v16       #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    const v2, 0x7f100015

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f100016

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f100017

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f100014

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    .line 126
    const v2, 0x7f100018

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    .line 127
    const v2, 0x7f100013

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/ColorChipView;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    .line 130
    :cond_1
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 132
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    .line 133
    .local v10, allDay:Z
    :goto_0
    move-object/from16 v0, v16

    iput-boolean v10, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 134
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 135
    .local v20, selfAttendeeStatus:I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    .line 136
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mDeclinedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereDeclinedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereDeclinedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/calendar/ColorChipView;->setDrawStyle(I)V

    .line 152
    :goto_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 153
    .local v19, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_b

    .line 154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    :goto_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    const/16 v2, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 163
    .local v11, canRespond:I
    if-nez v11, :cond_2

    .line 164
    const/16 v2, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 165
    .local v18, owner:Ljava/lang/String;
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, organizer:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/ColorChipView;->setDrawStyle(I)V

    .line 168
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStandardColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStandardColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStandardColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .end local v17           #organizer:Ljava/lang/String;
    .end local v18           #owner:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    .line 175
    .local v22, title:Landroid/widget/TextView;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v25, v0

    .line 176
    .local v25, when:Landroid/widget/TextView;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v27, v0

    .line 178
    .local v27, where:Landroid/widget/TextView;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    .line 181
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v12

    .line 182
    .local v12, color:I
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    invoke-virtual {v2, v12}, Lcom/android/calendar/ColorChipView;->setColor(I)V

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 186
    .local v23, titleString:Ljava/lang/String;
    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 189
    :cond_4
    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 193
    .local v4, begin:J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 194
    .local v6, end:J
    const/16 v2, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, eventTz:Ljava/lang/String;
    const/4 v8, 0x0

    .line 199
    .local v8, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, tzString:Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 201
    const-string v9, "UTC"

    .line 205
    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    or-int/lit16 v8, v8, 0x80

    .line 208
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v26

    .line 211
    .local v26, whenString:Ljava/lang/String;
    if-nez v10, :cond_7

    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 214
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 215
    .local v13, date:Landroid/text/format/Time;
    invoke-virtual {v13, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 217
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 218
    .local v24, tz:Ljava/util/TimeZone;
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 219
    :cond_6
    move-object v14, v9

    .line 223
    .local v14, displayName:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 225
    .end local v13           #date:Landroid/text/format/Time;
    .end local v14           #displayName:Ljava/lang/String;
    .end local v24           #tz:Ljava/util/TimeZone;
    :cond_7
    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 258
    .local v28, whereString:Ljava/lang/String;
    if-eqz v28, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 259
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_5
    return-void

    .line 132
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #flags:I
    .end local v9           #tzString:Ljava/lang/String;
    .end local v10           #allDay:Z
    .end local v11           #canRespond:I
    .end local v12           #color:I
    .end local v15           #eventTz:Ljava/lang/String;
    .end local v19           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v20           #selfAttendeeStatus:I
    .end local v22           #title:Landroid/widget/TextView;
    .end local v23           #titleString:Ljava/lang/String;
    .end local v25           #when:Landroid/widget/TextView;
    .end local v26           #whenString:Ljava/lang/String;
    .end local v27           #where:Landroid/widget/TextView;
    .end local v28           #whereString:Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v10       #allDay:Z
    .restart local v20       #selfAttendeeStatus:I
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStandardColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mWhereColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 145
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/calendar/ColorChipView;->setDrawStyle(I)V

    goto/16 :goto_1

    .line 147
    :cond_a
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->colorChip:Lcom/android/calendar/ColorChipView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/ColorChipView;->setDrawStyle(I)V

    goto/16 :goto_1

    .line 156
    .restart local v19       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/agenda/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 203
    .restart local v4       #begin:J
    .restart local v6       #end:J
    .restart local v8       #flags:I
    .restart local v9       #tzString:Ljava/lang/String;
    .restart local v11       #canRespond:I
    .restart local v12       #color:I
    .restart local v15       #eventTz:Ljava/lang/String;
    .restart local v22       #title:Landroid/widget/TextView;
    .restart local v23       #titleString:Ljava/lang/String;
    .restart local v25       #when:Landroid/widget/TextView;
    .restart local v27       #where:Landroid/widget/TextView;
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 221
    .restart local v13       #date:Landroid/text/format/Time;
    .restart local v24       #tz:Ljava/util/TimeZone;
    .restart local v26       #whenString:Ljava/lang/String;
    :cond_d
    iget v2, v13, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #displayName:Ljava/lang/String;
    goto/16 :goto_4

    .end local v14           #displayName:Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 262
    .end local v13           #date:Landroid/text/format/Time;
    .end local v24           #tz:Ljava/util/TimeZone;
    .restart local v28       #whereString:Ljava/lang/String;
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method
