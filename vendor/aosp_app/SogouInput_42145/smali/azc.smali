.class public Lazc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private a:I

.field private a:J

.field a:[F

.field a:[J

.field private b:F

.field private b:I

.field b:[F


# direct methods
.method public constructor <init>(FI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lazc;-><init>(IFI)V

    .line 35
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lazc;->a:I

    .line 40
    iput p2, p0, Lazc;->a:F

    .line 41
    iget v0, p0, Lazc;->a:F

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    iput v0, p0, Lazc;->b:F

    .line 42
    iput p3, p0, Lazc;->b:I

    .line 43
    iget v0, p0, Lazc;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lazc;->a:[F

    .line 44
    iget v0, p0, Lazc;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lazc;->b:[F

    .line 45
    iget v0, p0, Lazc;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lazc;->a:[J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lazc;->a:J

    .line 47
    return-void
.end method

.method private a()I
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 98
    iget-object v0, p0, Lazc;->a:[J

    aget-wide v5, v0, v3

    cmp-long v0, v5, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazc;->a:[J

    aget-wide v5, v0, v2

    cmp-long v0, v5, v8

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    iget-object v5, p0, Lazc;->a:[J

    move v0, v1

    .line 101
    :goto_1
    iget v6, p0, Lazc;->a:I

    if-ge v0, v6, :cond_2

    .line 102
    aget-wide v6, v5, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 106
    :cond_2
    const/4 v5, 0x3

    if-lt v0, v5, :cond_0

    .line 107
    add-int/lit8 v5, v0, -0x1

    .line 108
    iget-object v0, p0, Lazc;->a:[F

    aget v6, v0, v5

    .line 109
    iget-object v0, p0, Lazc;->b:[F

    aget v0, v0, v5

    .line 110
    iget-object v7, p0, Lazc;->a:[J

    aget-wide v7, v7, v5

    .line 111
    iget-wide v9, p0, Lazc;->a:J

    sub-long v9, v7, v9

    iget v11, p0, Lazc;->b:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 113
    iget-object v9, p0, Lazc;->a:[F

    aget v9, v9, v3

    .line 114
    iget-object v10, p0, Lazc;->b:[F

    aget v10, v10, v3

    .line 115
    sub-float v11, v6, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 116
    sub-float v12, v0, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 117
    iget v13, p0, Lazc;->a:F

    cmpl-float v13, v11, v13

    if-lez v13, :cond_a

    .line 118
    div-float v11, v12, v11

    const/high16 v12, 0x3f00

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    .line 120
    sub-float v0, v6, v9

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    add-float v1, v9, v0

    .line 121
    sub-float v0, v6, v9

    const/high16 v3, 0x40a0

    mul-float/2addr v0, v3

    const/high16 v3, 0x4100

    div-float/2addr v0, v3

    add-float v3, v9, v0

    move v0, v2

    .line 122
    :goto_2
    if-ge v0, v5, :cond_4

    .line 123
    iget-object v10, p0, Lazc;->a:[F

    aget v10, v10, v0

    cmpl-float v10, v10, v1

    if-lez v10, :cond_3

    iget-object v10, p0, Lazc;->a:[F

    aget v10, v10, v0

    cmpg-float v10, v10, v3

    if-ltz v10, :cond_4

    :cond_3
    iget-object v10, p0, Lazc;->a:[F

    aget v10, v10, v0

    cmpl-float v10, v10, v3

    if-lez v10, :cond_6

    iget-object v10, p0, Lazc;->a:[F

    aget v10, v10, v0

    cmpg-float v10, v10, v1

    if-gez v10, :cond_6

    .line 127
    :cond_4
    if-eq v0, v5, :cond_0

    .line 128
    cmpl-float v0, v9, v6

    if-lez v0, :cond_7

    move v0, v2

    .line 129
    :goto_3
    iput-wide v7, p0, Lazc;->a:J

    :goto_4
    move v4, v0

    .line 134
    goto/16 :goto_0

    .line 101
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 122
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_7
    const/4 v0, 0x3

    goto :goto_3

    .line 130
    :cond_8
    cmpl-float v0, v10, v0

    if-lez v0, :cond_9

    move v1, v3

    :cond_9
    move v0, v1

    goto :goto_4

    .line 131
    :cond_a
    iget v2, p0, Lazc;->a:F

    cmpl-float v2, v12, v2

    if-lez v2, :cond_c

    .line 132
    cmpl-float v0, v10, v0

    if-lez v0, :cond_b

    :goto_5
    move v0, v3

    goto :goto_4

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    move v0, v4

    goto :goto_4
.end method

.method private a(FFJ)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    .line 68
    iget-object v4, p0, Lazc;->a:[J

    move v0, v1

    .line 69
    :goto_0
    iget v3, p0, Lazc;->a:I

    if-ge v0, v3, :cond_0

    .line 70
    aget-wide v5, v4, v0

    cmp-long v3, v5, v8

    if-nez v3, :cond_5

    .line 74
    :cond_0
    iget v3, p0, Lazc;->a:I

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 75
    :cond_1
    iget-object v5, p0, Lazc;->a:[F

    .line 76
    iget-object v6, p0, Lazc;->b:[F

    .line 78
    if-lez v0, :cond_6

    .line 79
    add-int/lit8 v3, v0, -0x1

    aget v3, v5, v3

    .line 80
    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 81
    iget v7, p0, Lazc;->b:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    move v3, v2

    .line 84
    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_3

    .line 85
    :cond_2
    aput p1, v5, v0

    .line 86
    aput p2, v6, v0

    .line 87
    aput-wide p3, v4, v0

    move v1, v2

    .line 90
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 91
    iget v2, p0, Lazc;->a:I

    if-ge v0, v2, :cond_4

    .line 92
    aput-wide v8, v4, v0

    .line 94
    :cond_4
    return v1

    .line 69
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 53
    invoke-direct {p0, v2, v3, v4, v5}, Lazc;->a(FFJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lazc;->a()I

    move-result v0

    .line 55
    if-ne v0, v1, :cond_0

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lazc;->a()V

    .line 59
    invoke-direct {p0, v2, v3, v4, v5}, Lazc;->a(FFJ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lazc;->a:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 25
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    iget-object v0, p0, Lazc;->a:[J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 29
    iput-wide v2, p0, Lazc;->a:J

    .line 30
    return-void
.end method
