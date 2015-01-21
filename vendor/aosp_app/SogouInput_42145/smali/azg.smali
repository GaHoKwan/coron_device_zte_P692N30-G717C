.class public Lazg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:F

.field private a:I

.field a:[F

.field a:[J

.field b:F

.field private b:I

.field b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const/16 v0, 0x40

    const/16 v1, 0x258

    invoke-direct {p0, v0, v1}, Lazg;-><init>(II)V

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lazg;->a:I

    .line 32
    iput p2, p0, Lazg;->b:I

    .line 33
    iget v0, p0, Lazg;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lazg;->a:[F

    .line 34
    iget v0, p0, Lazg;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lazg;->b:[F

    .line 35
    iget v0, p0, Lazg;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lazg;->a:[J

    .line 36
    return-void
.end method

.method private a(FFJ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 49
    const/4 v0, -0x1

    .line 51
    iget-object v3, p0, Lazg;->a:[J

    move v2, v0

    move v0, v1

    .line 52
    :goto_0
    iget v4, p0, Lazg;->a:I

    if-ge v0, v4, :cond_0

    .line 53
    aget-wide v4, v3, v0

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    .line 59
    :cond_0
    iget v4, p0, Lazg;->a:I

    if-ne v0, v4, :cond_1

    if-gez v2, :cond_1

    move v2, v1

    .line 62
    :cond_1
    if-ne v2, v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 63
    :cond_2
    iget-object v4, p0, Lazg;->a:[F

    .line 64
    iget-object v5, p0, Lazg;->b:[F

    .line 65
    if-ltz v2, :cond_3

    .line 66
    add-int/lit8 v6, v2, 0x1

    .line 67
    iget v7, p0, Lazg;->a:I

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    .line 68
    invoke-static {v4, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-static {v5, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-static {v3, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v0, v1

    .line 73
    :cond_3
    aput p1, v4, v0

    .line 74
    aput p2, v5, v0

    .line 75
    aput-wide p3, v3, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    iget v1, p0, Lazg;->a:I

    if-ge v0, v1, :cond_4

    .line 78
    aput-wide v8, v3, v0

    .line 80
    :cond_4
    return-void

    .line 55
    :cond_5
    aget-wide v4, v3, v0

    iget v6, p0, Lazg;->b:I

    int-to-long v6, v6

    sub-long v6, p3, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    move v2, v0

    .line 52
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lazg;->b:F

    return v0
.end method

.method public a()I
    .locals 6

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lazg;->a:[J

    .line 136
    :goto_0
    iget v2, p0, Lazg;->a:I

    if-ge v0, v2, :cond_0

    .line 137
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 142
    :cond_0
    return v0

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lazg;->a:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 22
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 83
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Lazg;->a(IF)V

    .line 84
    return-void
.end method

.method public a(IF)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v6, v0, Lazg;->a:[F

    .line 88
    move-object/from16 v0, p0

    iget-object v7, v0, Lazg;->b:[F

    .line 89
    move-object/from16 v0, p0

    iget-object v8, v0, Lazg;->a:[J

    .line 91
    const/4 v1, 0x0

    aget v9, v6, v1

    .line 92
    const/4 v1, 0x0

    aget v10, v7, v1

    .line 93
    const/4 v1, 0x0

    aget-wide v11, v8, v1

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lazg;->a:I

    if-ge v1, v2, :cond_0

    .line 98
    aget-wide v13, v8, v1

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-nez v2, :cond_1

    .line 104
    :cond_0
    const/4 v2, 0x1

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_5

    .line 105
    aget-wide v13, v8, v5

    sub-long/2addr v13, v11

    long-to-int v13, v13

    .line 106
    if-nez v13, :cond_2

    move v2, v3

    move v3, v4

    .line 104
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_2
    aget v2, v6, v5

    sub-float/2addr v2, v9

    .line 108
    int-to-float v14, v13

    div-float/2addr v2, v14

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v2, v14

    .line 109
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-nez v14, :cond_3

    .line 113
    :goto_3
    aget v4, v7, v5

    sub-float/2addr v4, v10

    .line 114
    int-to-float v13, v13

    div-float/2addr v4, v13

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v4, v13

    .line 115
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-nez v13, :cond_4

    move v3, v2

    move v2, v4

    goto :goto_2

    .line 111
    :cond_3
    add-int/lit8 v14, v5, -0x1

    int-to-float v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v2, v4

    int-to-float v4, v5

    div-float/2addr v2, v4

    goto :goto_3

    .line 117
    :cond_4
    add-int/lit8 v13, v5, -0x1

    int-to-float v13, v13

    mul-float/2addr v3, v13

    add-float/2addr v3, v4

    int-to-float v4, v5

    div-float/2addr v3, v4

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_2

    .line 119
    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_6

    move/from16 v0, p2

    neg-float v1, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Lazg;->b:F

    .line 121
    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_7

    move/from16 v0, p2

    neg-float v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_5
    move-object/from16 v0, p0

    iput v1, v0, Lazg;->a:F

    .line 123
    return-void

    .line 119
    :cond_6
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 121
    :cond_7
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 41
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lazg;->a(FFJ)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3, v1, v2}, Lazg;->a(FFJ)V

    .line 46
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lazg;->a:F

    return v0
.end method
