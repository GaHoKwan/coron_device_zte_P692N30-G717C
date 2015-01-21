.class final Lcom/actionbarsherlock/internal/widget/IcsView;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMeasuredStateInt(Landroid/view/View;)I
    .locals 3

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    .line 54
    .line 55
    and-int/lit16 v1, v1, -0x100

    .line 53
    or-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 3

    .line 0
    move v1, p0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 27
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 29
    :sswitch_0
    move v1, p0

    .line 30
    goto :goto_0

    .line 32
    :sswitch_1
    if-ge p1, p0, :cond_0

    .line 33
    const/high16 v0, 0x100

    or-int v1, p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, p0

    .line 37
    goto :goto_0

    .line 39
    :sswitch_2
    move v1, p1

    .line 42
    :goto_0
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    or-int/2addr v0, v1

    return v0
.end method
