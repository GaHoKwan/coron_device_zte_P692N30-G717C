.class public Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/util/Map;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xf

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:Ljava/util/Map;

    .line 17
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:I

    .line 18
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->b:I

    .line 26
    iput p2, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:I

    .line 27
    iput p3, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    if-lez p1, :cond_0

    .line 45
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a(II)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->b:I

    add-int/2addr v0, v1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildCount()I

    move-result v2

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 35
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajl;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget v4, v0, Lajl;->a:I

    iget v5, v0, Lajl;->b:I

    iget v6, v0, Lajl;->c:I

    iget v0, v0, Lajl;->d:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 33
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 60
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildCount()I

    move-result v8

    move v1, v5

    move v0, v5

    move v3, v5

    move v2, v5

    .line 61
    :goto_0
    if-ge v1, v8, :cond_1

    .line 62
    new-instance v9, Lajl;

    const/4 v3, 0x0

    invoke-direct {v9, p0, v3}, Lajl;-><init>(Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;Lajk;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 64
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a(II)I

    move-result v4

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    .line 66
    if-lt v3, v7, :cond_0

    .line 69
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v3, v5, v0

    .line 70
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:I

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    move v2, v0

    move v4, v5

    move v0, v1

    .line 72
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 73
    iput v4, v9, Lajl;->a:I

    .line 74
    iput v2, v9, Lajl;->b:I

    .line 75
    iput v3, v9, Lajl;->c:I

    .line 76
    iput v6, v9, Lajl;->d:I

    .line 77
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->a:Ljava/util/Map;

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, v7, v3}, Lcom/sohu/inputmethod/settings/hotdict/AutoLineBreakView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method
