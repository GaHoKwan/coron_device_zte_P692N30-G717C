.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private transient julianSkew:I

.field private lastYearSkew:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    .line 207
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    .line 216
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    .line 207
    :array_0
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 210
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 213
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0xd2t 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x0t 0xddt 0x6dt 0x0t
    .end array-data

    .line 216
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0xe3t 0x35t 0xfdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 219
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xabt 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x80t 0x4ft 0x12t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 232
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 248
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 266
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 267
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 268
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 290
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 291
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 295
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 306
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .parameter "timezone"

    .prologue
    .line 317
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .parameter "timezone"
    .parameter "locale"

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 332
    return-void
.end method

.method constructor <init>(Z)V
    .locals 3
    .parameter "ignored"

    .prologue
    const/4 v2, 0x1

    .line 335
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 336
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 337
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 338
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .locals 6
    .parameter "dayCount"
    .parameter "localTime"

    .prologue
    .line 789
    const/16 v3, 0x7b2

    .line 790
    .local v3, year:I
    move-wide v1, p1

    .line 791
    .local v1, days:J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_0

    .line 792
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 796
    :cond_0
    :goto_0
    const-wide/16 v4, 0x16d

    div-long v4, v1, v4

    long-to-int v0, v4

    .local v0, approxYears:I
    if-eqz v0, :cond_1

    .line 797
    add-int/2addr v3, v0

    .line 798
    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v4

    sub-long v1, p1, v4

    goto :goto_0

    .line 800
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 801
    add-int/lit8 v3, v3, -0x1

    .line 802
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 804
    :cond_2
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 805
    long-to-int v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(J)J
    .locals 8
    .parameter "year"

    .prologue
    .line 809
    const-wide/16 v2, 0x7b2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    .line 810
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b1

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long v0, v2, v4

    .line 811
    .local v0, days:J
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 812
    const-wide/16 v2, 0x76d

    sub-long v2, p1, v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x641

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 826
    .end local v0           #days:J
    :goto_0
    return-wide v0

    .line 814
    .restart local v0       #days:J
    :cond_0
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 815
    iget v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 816
    :cond_1
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 817
    iget v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 819
    :cond_2
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 823
    .end local v0           #days:J
    :cond_3
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    .line 824
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long v0, v2, v4

    goto :goto_0

    .line 826
    :cond_4
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_0
.end method

.method private daysInMonth()I
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .locals 1
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 835
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 836
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_0
.end method

.method private daysInYear(I)I
    .locals 2
    .parameter "year"

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16e

    .line 844
    .local v0, daysInYear:I
    :goto_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_0

    .line 845
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 847
    :cond_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 848
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 850
    :cond_1
    return v0

    .line 843
    .end local v0           #daysInYear:I
    :cond_2
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private daysInYear(ZI)I
    .locals 1
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 854
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 855
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 858
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_0
.end method

.method private fullFieldsCalc(JI)V
    .locals 23
    .parameter "timeVal"
    .parameter "zoneOffset"

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/Calendar;->time:J

    const-wide/32 v19, 0x5265c00

    rem-long v3, v3, v19

    long-to-int v9, v3

    .line 463
    .local v9, millis:I
    const-wide/32 v3, 0x5265c00

    div-long v11, p1, v3

    .line 465
    .local v11, days:J
    if-gez v9, :cond_0

    .line 466
    const v3, 0x5265c00

    add-int/2addr v9, v3

    .line 467
    const-wide/16 v3, 0x1

    sub-long/2addr v11, v3

    .line 470
    :cond_0
    add-int v9, v9, p3

    .line 471
    :goto_0
    if-gez v9, :cond_1

    .line 472
    const v3, 0x5265c00

    add-int/2addr v9, v3

    .line 473
    const-wide/16 v3, 0x1

    sub-long/2addr v11, v3

    goto :goto_0

    .line 475
    :cond_1
    :goto_1
    const v3, 0x5265c00

    if-lt v9, v3, :cond_2

    .line 476
    const v3, 0x5265c00

    sub-int/2addr v9, v3

    .line 477
    const-wide/16 v3, 0x1

    add-long/2addr v11, v3

    goto :goto_1

    .line 480
    :cond_2
    move/from16 v0, p3

    int-to-long v3, v0

    add-long v3, v3, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v10

    .line 481
    .local v10, dayOfYear:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x6

    aput v10, v3, v4

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v19, v19, p1

    cmp-long v3, v3, v19

    if-gtz v3, :cond_3

    .line 483
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v10, v3

    .line 485
    :cond_3
    div-int/lit8 v6, v10, 0x20

    .line 486
    .local v6, month:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v15

    .line 487
    .local v15, leapYear:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v3

    sub-int v7, v10, v3

    .line 488
    .local v7, date:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v3

    if-le v7, v3, :cond_4

    .line 489
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v3

    sub-int/2addr v7, v3

    .line 490
    add-int/lit8 v6, v6, 0x1

    .line 492
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x7

    const-wide/16 v19, 0x3

    sub-long v19, v11, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gtz v3, :cond_a

    const/4 v14, 0x0

    .line 495
    .local v14, dstOffset:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-lez v3, :cond_5

    .line 496
    sub-int v14, v14, p3

    .line 498
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x10

    aput v14, v3, v4

    .line 499
    if-eqz v14, :cond_9

    .line 500
    move-wide/from16 v16, v11

    .line 501
    .local v16, oldDays:J
    add-int/2addr v9, v14

    .line 502
    if-gez v9, :cond_b

    .line 503
    const v3, 0x5265c00

    add-int/2addr v9, v3

    .line 504
    const-wide/16 v3, 0x1

    sub-long/2addr v11, v3

    .line 509
    :cond_6
    :goto_3
    cmp-long v3, v16, v11

    if-eqz v3, :cond_9

    .line 510
    move/from16 v0, p3

    int-to-long v3, v0

    sub-long v3, p1, v3

    int-to-long v0, v14

    move-wide/from16 v19, v0

    add-long v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v10

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x6

    aput v10, v3, v4

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v19, p1, v19

    int-to-long v0, v14

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    cmp-long v3, v3, v19

    if-gtz v3, :cond_7

    .line 514
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v10, v3

    .line 516
    :cond_7
    div-int/lit8 v6, v10, 0x20

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v15

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v3

    sub-int v7, v10, v3

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v3

    if-le v7, v3, :cond_8

    .line 520
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v3

    sub-int/2addr v7, v3

    .line 521
    add-int/lit8 v6, v6, 0x1

    .line 523
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x7

    const-wide/16 v19, 0x3

    sub-long v19, v11, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 527
    .end local v16           #oldDays:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0xe

    rem-int/lit16 v5, v9, 0x3e8

    aput v5, v3, v4

    .line 528
    div-int/lit16 v9, v9, 0x3e8

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0xd

    rem-int/lit8 v5, v9, 0x3c

    aput v5, v3, v4

    .line 530
    div-int/lit8 v9, v9, 0x3c

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0xc

    rem-int/lit8 v5, v9, 0x3c

    aput v5, v3, v4

    .line 532
    div-int/lit8 v9, v9, 0x3c

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0xb

    rem-int/lit8 v5, v9, 0x18

    aput v5, v3, v4

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v8, 0xb

    aget v3, v3, v8

    const/16 v8, 0xb

    if-le v3, v8, :cond_c

    const/4 v3, 0x1

    :goto_4
    aput v3, v4, v5

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/Calendar;->fields:[I

    const/16 v8, 0xb

    aget v5, v5, v8

    rem-int/lit8 v5, v5, 0xc

    aput v5, v3, v4

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gtz v3, :cond_d

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 543
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x2

    aput v6, v3, v4

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x5

    aput v7, v3, v4

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x8

    add-int/lit8 v5, v7, -0x1

    div-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x4

    add-int/lit8 v5, v7, -0x1

    int-to-long v0, v7

    move-wide/from16 v19, v0

    sub-long v19, v11, v19

    const-wide/16 v21, 0x2

    sub-long v19, v19, v21

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v0, v8

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    add-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 548
    const-wide/16 v3, 0x3

    sub-long v3, v11, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x6

    aget v5, v5, v8

    add-int/lit8 v5, v5, -0x1

    int-to-long v0, v5

    move-wide/from16 v19, v0

    sub-long v3, v3, v19

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v0, v5

    move-wide/from16 v19, v0

    sub-long v3, v3, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v13

    .line 550
    .local v13, daysFromStart:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v13

    div-int/lit8 v4, v3, 0x7

    rsub-int/lit8 v3, v13, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    if-lt v3, v5, :cond_e

    const/4 v3, 0x1

    :goto_6
    add-int v18, v4, v3

    .line 552
    .local v18, week:I
    if-nez v18, :cond_11

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x1

    aget v3, v3, v8

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x2

    :goto_7
    sub-int v3, v13, v3

    int-to-long v0, v3

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v3, v8, :cond_10

    const/16 v3, 0x35

    :goto_8
    aput v3, v4, v5

    .line 563
    .end local v18           #week:I
    :goto_9
    return-void

    .line 493
    .end local v13           #daysFromStart:I
    .end local v14           #dstOffset:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/Calendar;->fields:[I

    const/16 v19, 0x7

    aget v8, v8, v19

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v14

    goto/16 :goto_2

    .line 505
    .restart local v14       #dstOffset:I
    .restart local v16       #oldDays:J
    :cond_b
    const v3, 0x5265c00

    if-lt v9, v3, :cond_6

    .line 506
    const v3, 0x5265c00

    sub-int/2addr v9, v3

    .line 507
    const-wide/16 v3, 0x1

    add-long/2addr v11, v3

    goto/16 :goto_3

    .line 534
    .end local v16           #oldDays:J
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 541
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    goto/16 :goto_5

    .line 550
    .restart local v13       #daysFromStart:I
    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 553
    .restart local v18       #week:I
    :cond_f
    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/16 v3, 0x34

    goto :goto_8

    .line 556
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x6

    aget v5, v3, v4

    if-eqz v15, :cond_13

    const/16 v3, 0x16f

    move v4, v3

    :goto_a
    if-eqz v15, :cond_14

    const/4 v3, 0x2

    :goto_b
    add-int/2addr v3, v13

    int-to-long v0, v3

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v3

    sub-int v3, v4, v3

    if-lt v5, v3, :cond_16

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v5, 0x3

    if-eqz v15, :cond_15

    const/4 v3, 0x2

    :goto_c
    add-int/2addr v3, v13

    int-to-long v0, v3

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v3, v8, :cond_12

    const/16 v18, 0x1

    .end local v18           #week:I
    :cond_12
    aput v18, v4, v5

    goto :goto_9

    .line 556
    .restart local v18       #week:I
    :cond_13
    const/16 v3, 0x16e

    move v4, v3

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    goto :goto_b

    .line 558
    :cond_15
    const/4 v3, 0x1

    goto :goto_c

    .line 561
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x3

    aput v18, v3, v4

    goto/16 :goto_9
.end method

.method private getOffset(J)I
    .locals 21
    .parameter "localTime"

    .prologue
    .line 1016
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1018
    .local v3, timeZone:Ljava/util/TimeZone;
    const-wide/32 v17, 0x5265c00

    div-long v11, p1, v17

    .line 1019
    .local v11, dayCount:J
    const-wide/32 v17, 0x5265c00

    rem-long v17, p1, v17

    move-wide/from16 v0, v17

    long-to-int v9, v0

    .line 1020
    .local v9, millis:I
    if-gez v9, :cond_0

    .line 1021
    const v4, 0x5265c00

    add-int/2addr v9, v4

    .line 1022
    const-wide/16 v17, 0x1

    sub-long v11, v11, v17

    .line 1025
    :cond_0
    const/16 v5, 0x7b2

    .line 1026
    .local v5, year:I
    move-wide v14, v11

    .line 1027
    .local v14, days:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v17, v0

    cmp-long v4, p1, v17

    if-gez v4, :cond_1

    .line 1028
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v0, v4

    move-wide/from16 v17, v0

    sub-long v14, v14, v17

    .line 1032
    :cond_1
    :goto_0
    const-wide/16 v17, 0x16d

    div-long v17, v14, v17

    move-wide/from16 v0, v17

    long-to-int v10, v0

    .local v10, approxYears:I
    if-eqz v10, :cond_2

    .line 1033
    add-int/2addr v5, v10

    .line 1034
    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v17

    sub-long v14, v11, v17

    goto :goto_0

    .line 1036
    :cond_2
    const-wide/16 v17, 0x0

    cmp-long v4, v14, v17

    if-gez v4, :cond_3

    .line 1037
    add-int/lit8 v5, v5, -0x1

    .line 1038
    const-wide/16 v17, 0x16d

    add-long v17, v17, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    int-to-long v0, v4

    move-wide/from16 v19, v0

    add-long v14, v17, v19

    .line 1039
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v5, v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v17, v0

    cmp-long v4, p1, v17

    if-gez v4, :cond_3

    .line 1040
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v17, v0

    sub-long v14, v14, v17

    .line 1043
    :cond_3
    if-gtz v5, :cond_5

    .line 1044
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 1056
    :goto_2
    return v4

    .line 1038
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1046
    :cond_5
    long-to-int v4, v14

    add-int/lit8 v13, v4, 0x1

    .line 1048
    .local v13, dayOfYear:I
    div-int/lit8 v6, v13, 0x20

    .line 1049
    .local v6, month:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 1050
    .local v16, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v7, v13, v4

    .line 1051
    .local v7, date:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v7, v4, :cond_6

    .line 1052
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v7, v4

    .line 1053
    add-int/lit8 v6, v6, 0x1

    .line 1055
    :cond_6
    const-wide/16 v17, 0x3

    sub-long v17, v11, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 1056
    .local v8, dayOfWeek:I
    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v4

    goto :goto_2
.end method

.method private julianError()I
    .locals 2

    .prologue
    .line 1076
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private mod(II)I
    .locals 1
    .parameter "value"
    .parameter "mod"

    .prologue
    .line 1080
    rem-int v0, p1, p2

    .line 1081
    .local v0, rem:I
    if-gez p1, :cond_0

    if-gez v0, :cond_0

    .line 1082
    add-int/2addr v0, p2

    .line 1084
    .end local v0           #rem:I
    :cond_0
    return v0
.end method

.method private mod7(J)I
    .locals 3
    .parameter "num1"

    .prologue
    .line 1088
    const-wide/16 v1, 0x7

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 1089
    .local v0, rem:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 1090
    add-int/lit8 v0, v0, 0x7

    .line 1092
    .end local v0           #rem:I
    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1259
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1260
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1255
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 17
    .parameter "field"
    .parameter "value"

    .prologue
    .line 353
    if-nez p2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    if-ltz p1, :cond_2

    const/16 v11, 0xf

    move/from16 v0, p1

    if-lt v0, v11, :cond_3

    .line 357
    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 360
    :cond_3
    if-nez p1, :cond_5

    .line 361
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 363
    if-gez p2, :cond_0

    .line 366
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 373
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    .line 368
    :cond_4
    if-lez p2, :cond_0

    .line 371
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 377
    :cond_5
    const/4 v11, 0x1

    move/from16 v0, p1

    if-eq v0, v11, :cond_6

    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    .line 378
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 379
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int v5, v11, p2

    .line 381
    .local v5, month:I
    if-gez v5, :cond_9

    .line 382
    add-int/lit8 v11, v5, -0xb

    div-int/lit8 p2, v11, 0xc

    .line 383
    rem-int/lit8 v11, v5, 0xc

    add-int/lit8 v5, v11, 0xc

    .line 387
    :goto_2
    const/4 v11, 0x2

    rem-int/lit8 v12, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 389
    .end local v5           #month:I
    :cond_7
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v1

    .line 391
    .local v1, days:I
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    if-le v11, v1, :cond_8

    .line 392
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 394
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    .line 385
    .end local v1           #days:I
    .restart local v5       #month:I
    :cond_9
    div-int/lit8 p2, v5, 0xc

    goto :goto_2

    .line 398
    .end local v5           #month:I
    :cond_a
    const-wide/16 v6, 0x0

    .line 399
    .local v6, multiplier:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_b

    .line 430
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 431
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    .line 402
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    .line 405
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    .line 408
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    .line 412
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0x36ee80

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    .line 415
    :pswitch_4
    const-wide/32 v6, 0x2932e00

    .line 416
    goto :goto_3

    .line 420
    :pswitch_5
    const-wide/32 v6, 0x5265c00

    .line 421
    goto :goto_3

    .line 425
    :pswitch_6
    const-wide/32 v6, 0x240c8400

    goto :goto_3

    .line 435
    :cond_b
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long v2, v11, v6

    .line 448
    .local v2, delta:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    .line 449
    .local v10, zoneOffset:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v9

    .line 450
    .local v9, offsetBefore:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v8

    .line 451
    .local v8, offsetAfter:I
    sub-int v4, v9, v8

    .line 452
    .local v4, dstDelta:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    int-to-long v13, v4

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v11

    if-ne v11, v8, :cond_c

    .line 453
    int-to-long v11, v4

    add-long/2addr v2, v11

    .line 456
    :cond_c
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    .line 457
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected computeFields()V
    .locals 7

    .prologue
    .line 567
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 568
    .local v2, timeZone:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Ljava/util/Calendar;->time:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 569
    .local v0, dstOffset:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 570
    .local v3, zoneOffset:I
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    const/16 v5, 0x10

    aput v0, v4, v5

    .line 571
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    const/16 v5, 0xf

    aput v3, v4, v5

    .line 573
    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-direct {p0, v4, v5, v3}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JI)V

    .line 575
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x11

    if-ge v1, v4, :cond_1

    .line 576
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    .end local v0           #dstOffset:I
    .end local v1           #i:I
    .end local v3           #zoneOffset:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    .restart local v0       #dstOffset:I
    .restart local v1       #i:I
    .restart local v3       #zoneOffset:I
    :cond_1
    return-void
.end method

.method protected computeTime()V
    .locals 27

    .prologue
    .line 582
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 585
    :cond_0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 588
    :cond_2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 590
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    if-ltz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 591
    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 593
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    if-ltz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 594
    :cond_6
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 596
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    if-ltz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    const/16 v21, 0x3e7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 598
    :cond_8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 600
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x35

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 602
    :cond_a
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 604
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 606
    :cond_c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 608
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 610
    :cond_e
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 612
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 614
    :cond_10
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 616
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 617
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 619
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    .line 620
    :cond_13
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 622
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_18

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116babfe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 625
    :cond_15
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 626
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116bd2d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_18

    .line 627
    :cond_17
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 630
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-ltz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    .line 631
    :cond_19
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 636
    :cond_1a
    const-wide/16 v6, 0x0

    .line 637
    .local v6, hour:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastTimeFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    .line 642
    :cond_1b
    :goto_0
    const-wide/32 v20, 0x36ee80

    mul-long v11, v6, v20

    .line 644
    .local v11, timeVal:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1c

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 647
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1d

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 650
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1e

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v11, v11, v20

    .line 655
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v19, v20, v21

    .line 656
    .local v19, year:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_22

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_21

    .line 659
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 639
    .end local v11           #timeVal:J
    .end local v19           #year:I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1b

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    goto/16 :goto_0

    .line 655
    .restart local v11       #timeVal:J
    :cond_20
    const/16 v19, 0x7b2

    goto :goto_1

    .line 661
    .restart local v19       #year:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_22

    .line 662
    rsub-int/lit8 v19, v19, 0x1

    .line 666
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-nez v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2c

    :cond_23
    const/16 v18, 0x1

    .line 668
    .local v18, weekMonthSet:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-nez v20, :cond_24

    if-eqz v18, :cond_2d

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2d

    const/16 v16, 0x1

    .line 670
    .local v16, useMonth:Z
    :goto_3
    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    .line 672
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2f

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2e

    if-eqz v18, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2e

    const/16 v16, 0x1

    .line 680
    :cond_26
    :goto_4
    if-eqz v16, :cond_3b

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v9, v20, v21

    .line 682
    .local v9, month:I
    div-int/lit8 v20, v9, 0xc

    add-int v19, v19, v20

    .line 683
    rem-int/lit8 v9, v9, 0xc

    .line 684
    if-gez v9, :cond_27

    .line 685
    add-int/lit8 v19, v19, -0x1

    .line 686
    add-int/lit8 v9, v9, 0xc

    .line 688
    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    .line 689
    .local v8, leapYear:Z
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v4, v20, v22

    .line 690
    .local v4, days:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v15, v20, v21

    .line 691
    .local v15, useDate:Z
    if-eqz v15, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a

    .line 694
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_29

    if-nez v18, :cond_31

    :cond_29
    const/4 v15, 0x1

    .line 696
    :cond_2a
    :goto_5
    if-eqz v15, :cond_36

    .line 697
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_32

    .line 700
    :cond_2b
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 666
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    .end local v16           #useMonth:Z
    .end local v18           #weekMonthSet:Z
    :cond_2c
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 668
    .restart local v18       #weekMonthSet:Z
    :cond_2d
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 673
    .restart local v16       #useMonth:Z
    :cond_2e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 675
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_26

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_30

    const/16 v16, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_30
    const/16 v16, 0x0

    goto :goto_6

    .line 694
    .restart local v4       #days:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_31
    const/4 v15, 0x0

    goto :goto_5

    .line 702
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 761
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    :cond_33
    :goto_7
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/Calendar;->lastDateFieldSet:I

    .line 763
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    add-long v11, v11, v20

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    cmp-long v20, v11, v20

    if-ltz v20, :cond_34

    .line 767
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v11, v11, v20

    .line 776
    :cond_34
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v11, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v13, v20, v22

    .line 778
    .local v13, timeValWithoutDST:J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v11, v11, v20

    .line 781
    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    .line 782
    cmp-long v20, v13, v11

    if-eqz v20, :cond_35

    .line 783
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    .line 784
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/Calendar;->areFieldsSet:Z

    .line 786
    :cond_35
    return-void

    .line 705
    .end local v13           #timeValWithoutDST:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_37

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    .line 710
    .local v3, dayOfWeek:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    .line 712
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 713
    .local v10, skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 715
    goto/16 :goto_7

    .line 708
    .end local v3           #dayOfWeek:I
    .end local v10           #skew:I
    :cond_37
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    .restart local v3       #dayOfWeek:I
    goto :goto_8

    .line 715
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3a

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    if-ltz v20, :cond_39

    .line 717
    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    .line 720
    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v20

    int-to-long v0, v3

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    const-wide/16 v25, 0x3

    sub-long v23, v23, v25

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    .line 725
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_33

    .line 726
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 727
    .restart local v10       #skew:I
    add-int v20, v10, v3

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    .line 731
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v10           #skew:I
    .end local v15           #useDate:Z
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v17, 0x1

    .line 733
    .local v17, useWeekYear:Z
    :goto_9
    if-eqz v17, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3c

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v17, v20, v21

    .line 736
    :cond_3c
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v4

    .line 737
    .restart local v4       #days:J
    if-eqz v17, :cond_3f

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3e

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    .line 744
    .restart local v3       #dayOfWeek:I
    :goto_a
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 745
    .restart local v10       #skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 747
    rsub-int/lit8 v20, v10, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_33

    .line 748
    const-wide/16 v20, 0x7

    add-long v4, v4, v20

    goto/16 :goto_7

    .line 731
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v10           #skew:I
    .end local v17           #useWeekYear:Z
    :cond_3d
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 742
    .restart local v4       #days:J
    .restart local v17       #useWeekYear:Z
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    .restart local v3       #dayOfWeek:I
    goto :goto_a

    .line 750
    .end local v3           #dayOfWeek:I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_43

    .line 751
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v21, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v20

    if-eqz v20, :cond_41

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x16d

    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_42

    .line 754
    :cond_40
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 751
    :cond_41
    const/16 v20, 0x0

    goto :goto_b

    .line 756
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    .line 757
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_33

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 866
    instance-of v2, p1, Ljava/util/GregorianCalendar;

    if-nez v2, :cond_1

    move v0, v1

    .line 872
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 869
    .restart local p1
    :cond_1
    if-eq p1, p0, :cond_0

    .line 872
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 11
    .parameter "field"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 878
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    .local v4, value:I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_0

    .line 927
    .end local v4           #value:I
    :goto_0
    return v4

    .line 882
    .restart local v4       #value:I
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 883
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 884
    .local v1, orgTime:J
    const/4 v3, 0x0

    .line 885
    .local v3, result:I
    packed-switch p1, :pswitch_data_0

    .line 926
    :cond_1
    :goto_1
    :pswitch_0
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    move v4, v3

    .line 927
    goto :goto_0

    .line 887
    :pswitch_1
    const/16 v5, 0x1f

    invoke-virtual {p0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 888
    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 889
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 890
    if-ne v3, v7, :cond_2

    .line 891
    const/16 v5, 0x18

    invoke-virtual {p0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 892
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 894
    :cond_2
    iput-boolean v9, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_1

    .line 897
    :pswitch_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 898
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 899
    iput-boolean v9, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_1

    .line 902
    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v4

    goto :goto_0

    .line 904
    :pswitch_4
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aget v5, v5, v7

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    goto :goto_0

    .line 906
    :pswitch_5
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v3, v5, v6

    .line 908
    goto :goto_1

    .line 910
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 911
    .local v0, clone:Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 912
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 916
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 917
    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 918
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 914
    :cond_3
    const-wide/high16 v5, -0x8000

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_2

    .line 923
    .end local v0           #clone:Ljava/util/GregorianCalendar;
    :pswitch_7
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    goto/16 :goto_1

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 941
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 954
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 3

    .prologue
    .line 964
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .locals 7
    .parameter "field"

    .prologue
    .line 979
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v5, -0xb1d069b5400L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 981
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 982
    .local v1, currentTimeInMillis:J
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 983
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 984
    .local v0, actual:I
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 987
    .end local v0           #actual:I
    .end local v1           #currentTimeInMillis:J
    :goto_0
    return v0

    :cond_0
    sget-object v3, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v0, v3, p1

    goto :goto_0
.end method

.method public getMaximum(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 1000
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 1012
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1060
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 3
    .parameter "year"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v2, :cond_2

    .line 1069
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1069
    goto :goto_0

    .line 1072
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public roll(II)V
    .locals 12
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v9, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 1111
    if-nez p2, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1114
    :cond_0
    if-ltz p1, :cond_1

    const/16 v8, 0xf

    if-lt p1, v8, :cond_2

    .line 1115
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1118
    :cond_2
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1120
    const/4 v3, -0x1

    .line 1121
    .local v3, max:I
    packed-switch p1, :pswitch_data_0

    .line 1204
    :cond_3
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    .line 1205
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1207
    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    .line 1123
    :pswitch_0
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1124
    goto :goto_1

    .line 1126
    :pswitch_1
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    .line 1127
    .local v2, days:I
    const/4 v1, 0x6

    .line 1128
    .local v1, day:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1130
    .local v5, mod:I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1131
    .local v4, maxWeeks:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1132
    .local v6, newWeek:I
    if-ne v6, v4, :cond_6

    .line 1133
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v6, v8

    mul-int/lit8 v0, v8, 0x7

    .line 1134
    .local v0, addDays:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    if-le v8, v0, :cond_5

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    add-int/2addr v8, v0

    if-le v8, v2, :cond_5

    .line 1135
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 1137
    :cond_5
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 1139
    .end local v0           #addDays:I
    :cond_6
    if-ne v6, v10, :cond_8

    .line 1140
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1141
    .local v7, week:I
    if-le v7, v10, :cond_7

    .line 1142
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1144
    :cond_7
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1147
    .end local v7           #week:I
    :cond_8
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1151
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    .line 1152
    .restart local v2       #days:I
    const/4 v1, 0x5

    .line 1153
    .restart local v1       #day:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1155
    .restart local v5       #mod:I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1156
    .restart local v4       #maxWeeks:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1157
    .restart local v6       #newWeek:I
    if-ne v6, v4, :cond_a

    .line 1158
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, p1

    sub-int v9, v6, v9

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_9

    .line 1159
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1161
    :cond_9
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1163
    :cond_a
    if-ne v6, v10, :cond_c

    .line 1164
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1165
    .restart local v7       #week:I
    if-le v7, v10, :cond_b

    .line 1166
    invoke-virtual {p0, v1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1168
    :cond_b
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1171
    .end local v7           #week:I
    :cond_c
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1175
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v3

    .line 1176
    goto/16 :goto_1

    .line 1178
    :pswitch_4
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v3

    .line 1179
    goto/16 :goto_1

    .line 1181
    :pswitch_5
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1182
    const/4 v8, 0x4

    iput v8, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    goto/16 :goto_1

    .line 1185
    :pswitch_6
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    iget-object v10, p0, Ljava/util/Calendar;->fields:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v3, v8, 0x1

    .line 1186
    goto/16 :goto_1

    .line 1196
    :pswitch_7
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/2addr v8, p2

    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    aget v9, v9, p1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1197
    const/4 v8, 0x2

    if-ne p1, v8, :cond_d

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    if-le v8, v9, :cond_d

    .line 1198
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 1199
    :cond_d
    const/16 v8, 0x9

    if-ne p1, v8, :cond_3

    .line 1200
    const/16 v8, 0xa

    iput v8, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    goto/16 :goto_1

    .line 1121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1
    .parameter "field"
    .parameter "increment"

    .prologue
    .line 1227
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1228
    return-void

    .line 1227
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 5
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 1234
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 1235
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1236
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1237
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1238
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1241
    :cond_0
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 1243
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 1244
    .local v1, dayOfYear:I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_1

    .line 1245
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 1246
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1251
    :goto_0
    return-void

    .line 1248
    :cond_1
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1249
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_0
.end method
