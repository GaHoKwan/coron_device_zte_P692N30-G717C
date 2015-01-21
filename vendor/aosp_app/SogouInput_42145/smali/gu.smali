.class public Lgu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:D

.field a:I

.field a:Z

.field b:D

.field b:I

.field b:Z

.field c:D

.field c:I

.field d:D

.field d:I

.field e:D

.field f:D

.field g:D

.field h:D


# direct methods
.method constructor <init>(IIDDDD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lgu;->a:I

    .line 24
    iput p2, p0, Lgu;->b:I

    .line 26
    iput-wide p3, p0, Lgu;->b:D

    .line 27
    iput-wide p5, p0, Lgu;->f:D

    .line 28
    iput-wide p7, p0, Lgu;->e:D

    .line 29
    iput-wide p9, p0, Lgu;->a:D

    .line 30
    invoke-virtual {p0}, Lgu;->a()V

    .line 31
    return-void
.end method


# virtual methods
.method a([SII)D
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 50
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v0, p2

    .line 54
    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, v0, p2

    iget v6, p0, Lgu;->a:I

    if-ge v1, v6, :cond_0

    .line 55
    aget-short v1, p1, v0

    aget-short v6, p1, v0

    mul-int/2addr v1, v6

    int-to-double v6, v1

    add-double/2addr v4, v6

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lgu;->a:I

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 59
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 61
    :goto_1
    const-wide/high16 v2, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 62
    return-wide v0

    :cond_1
    move-wide v0, v2

    .line 59
    goto :goto_1
.end method

.method a([SIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    move v1, v0

    move v2, v0

    .line 122
    :goto_0
    if-ge v2, p4, :cond_1

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lgu;->a([SII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 122
    :goto_1
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lgu;->b:I

    add-int/2addr p2, v3

    goto :goto_0

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_1
    return v1
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgu;->c:D

    .line 35
    const-wide v0, 0x4072c00000000000L

    iput-wide v0, p0, Lgu;->d:D

    .line 36
    iput-boolean v2, p0, Lgu;->b:Z

    .line 37
    iput-boolean v2, p0, Lgu;->a:Z

    .line 38
    invoke-virtual {p0}, Lgu;->b()V

    .line 39
    return-void
.end method

.method a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-wide v0, p0, Lgu;->h:D

    iget-wide v2, p0, Lgu;->c:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lgu;->h:D

    .line 68
    iget v0, p0, Lgu;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgu;->c:I

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-wide v0, p0, Lgu;->g:D

    iget-wide v2, p0, Lgu;->d:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lgu;->g:D

    .line 71
    iget v0, p0, Lgu;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgu;->d:I

    goto :goto_0
.end method

.method a([SII)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lgu;->a([SII)D

    move-result-wide v2

    .line 78
    iput-boolean v5, p0, Lgu;->a:Z

    .line 80
    iget-wide v0, p0, Lgu;->e:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    .line 81
    iget-boolean v0, p0, Lgu;->b:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lgu;->c:D

    iget-wide v6, p0, Lgu;->a:D

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    iget-wide v6, p0, Lgu;->a:D

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    div-double/2addr v0, v6

    :goto_0
    iput-wide v0, p0, Lgu;->c:D

    .line 83
    iget-wide v0, p0, Lgu;->d:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_4

    .line 84
    iput-wide v2, p0, Lgu;->d:D

    .line 89
    :cond_0
    :goto_1
    iget-wide v0, p0, Lgu;->c:D

    iget-wide v2, p0, Lgu;->d:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 90
    iget-wide v0, p0, Lgu;->d:D

    iput-wide v0, p0, Lgu;->c:D

    .line 92
    :cond_1
    iget-wide v0, p0, Lgu;->c:D

    iget-wide v2, p0, Lgu;->d:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lgu;->f:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lgu;->a:Z

    .line 94
    :cond_2
    iput-boolean v4, p0, Lgu;->b:Z

    .line 95
    iget-boolean v0, p0, Lgu;->a:Z

    invoke-virtual {p0, v0}, Lgu;->a(Z)V

    .line 96
    return-void

    :cond_3
    move-wide v0, v2

    .line 81
    goto :goto_0

    .line 85
    :cond_4
    iget-wide v0, p0, Lgu;->d:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    .line 86
    iget-wide v0, p0, Lgu;->d:D

    iget-wide v6, p0, Lgu;->d:D

    sub-double/2addr v2, v6

    iget-wide v6, p0, Lgu;->b:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lgu;->d:D

    goto :goto_1

    :cond_5
    move v0, v5

    .line 92
    goto :goto_2
.end method

.method a([SII)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lgu;->a([SII)V

    .line 100
    iget-boolean v0, p0, Lgu;->a:Z

    return v0
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 42
    iput v2, p0, Lgu;->d:I

    .line 43
    iput v2, p0, Lgu;->c:I

    .line 44
    iput-wide v0, p0, Lgu;->h:D

    .line 45
    iput-wide v0, p0, Lgu;->g:D

    .line 46
    return-void
.end method
