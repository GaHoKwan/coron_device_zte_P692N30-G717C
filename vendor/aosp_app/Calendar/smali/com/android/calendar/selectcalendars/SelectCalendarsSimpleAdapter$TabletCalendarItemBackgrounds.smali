.class Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;
.super Ljava/lang/Object;
.source "SelectCalendarsSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabletCalendarItemBackgrounds"
.end annotation


# static fields
.field private static mBackgrounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgrounds()[I
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 149
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 185
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 155
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x0

    const v2, 0x7f02001c

    aput v2, v0, v1

    .line 157
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x1

    const v2, 0x7f020019

    aput v2, v0, v1

    .line 159
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x5

    const v2, 0x7f02000d

    aput v2, v0, v1

    .line 162
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f02000a

    aput v1, v0, v6

    .line 164
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xf

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 166
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x7

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 169
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f020016

    aput v1, v0, v4

    .line 170
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xb

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 172
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x3

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 174
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x4

    const v2, 0x7f020010

    aput v2, v0, v1

    .line 176
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f020013

    aput v1, v0, v5

    .line 178
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xe

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 180
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x6

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 182
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f02001f

    aput v1, v0, v3

    .line 183
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xa

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 184
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x2

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 185
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    goto/16 :goto_0
.end method
