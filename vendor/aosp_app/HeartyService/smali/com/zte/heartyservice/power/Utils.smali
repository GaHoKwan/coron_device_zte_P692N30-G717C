.class public Lcom/zte/heartyservice/power/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/Utils$TimeAmount;
    }
.end annotation


# static fields
.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static formatBytes(Landroid/content/Context;D)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 123
    const-wide v0, 0x412e848000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 124
    const-string v0, "%.2f MB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide v2, 0x408f400000000000L

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const-wide/high16 v0, 0x4090

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 126
    const-string v0, "%.2f KB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4024

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "%d bytes"

    new-array v1, v2, [Ljava/lang/Object;

    double-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "millis"

    .prologue
    const/4 v11, 0x3

    const v7, 0x15180

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide v5, 0x408f400000000000L

    div-double v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 26
    .local v4, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 27
    .local v2, minutes:I
    if-le v4, v7, :cond_0

    .line 28
    div-int v0, v4, v7

    .line 29
    mul-int v5, v0, v7

    sub-int/2addr v4, v5

    .line 31
    :cond_0
    const/16 v5, 0xe10

    if-le v4, v5, :cond_1

    .line 32
    div-int/lit16 v1, v4, 0xe10

    .line 33
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 35
    :cond_1
    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    .line 36
    div-int/lit8 v2, v4, 0x3c

    .line 37
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 39
    :cond_2
    if-lez v0, :cond_3

    .line 40
    const v5, 0x7f0a01b1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 42
    :cond_3
    if-lez v1, :cond_4

    .line 43
    const v5, 0x7f0a01b2

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 44
    :cond_4
    if-lez v2, :cond_5

    .line 45
    const v5, 0x7f0a01b3

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_5
    const v5, 0x7f0a01b4

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static get2Num(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 53
    if-gez p0, :cond_0

    .line 54
    const-string v0, "00"

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFormatTime(I)Lcom/zte/heartyservice/power/Utils$TimeAmount;
    .locals 3
    .parameter "seconds"

    .prologue
    const/16 v2, 0x3c

    .line 70
    new-instance v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;

    invoke-direct {v0}, Lcom/zte/heartyservice/power/Utils$TimeAmount;-><init>()V

    .line 71
    .local v0, t:Lcom/zte/heartyservice/power/Utils$TimeAmount;
    if-gez p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iput p0, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    .line 75
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    if-lt v1, v2, :cond_2

    .line 76
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    div-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    .line 77
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    .line 79
    :cond_2
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    if-lt v1, v2, :cond_3

    .line 80
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    div-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    .line 81
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    .line 83
    :cond_3
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 84
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    div-int/lit8 v1, v1, 0x18

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->days:I

    .line 85
    iget v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    rem-int/lit8 v1, v1, 0x18

    iput v1, v0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    goto :goto_0
.end method

.method public static setTimeAmount(Landroid/view/View;I)V
    .locals 8
    .parameter "view"
    .parameter "seconds"

    .prologue
    const v7, 0x7f0a0518

    const v6, 0x7f0a0517

    .line 91
    const v5, 0x7f0e03b9

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, bigTime:Landroid/widget/TextView;
    const v5, 0x7f0e03ba

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, bigTimeUnit:Landroid/widget/TextView;
    const v5, 0x7f0e03bb

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    .local v2, smallTime:Landroid/widget/TextView;
    const v5, 0x7f0e03bc

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, smallTimeUnit:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/zte/heartyservice/power/Utils;->getFormatTime(I)Lcom/zte/heartyservice/power/Utils$TimeAmount;

    move-result-object v4

    .line 97
    .local v4, t:Lcom/zte/heartyservice/power/Utils$TimeAmount;
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->days:I

    if-lez v5, :cond_0

    .line 98
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->days:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v5, 0x7f0a051a

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    if-lez v5, :cond_1

    .line 103
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget v5, v4, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    invoke-static {v5}, Lcom/zte/heartyservice/power/Utils;->get2Num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v5, 0x7f0a0519

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
