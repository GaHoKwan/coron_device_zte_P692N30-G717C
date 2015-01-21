.class public Lcom/hf/UI/HFViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "HFViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public removeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public removeView(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/hf/UI/HFViewPager;->getChildCount()I

    move-result v2

    .line 29
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 37
    :goto_1
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hf/UI/HFViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/hf/UI/SKView;

    .line 31
    .local v3, view:Lcom/hf/UI/SKView;
    invoke-virtual {v3}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, childTag:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {p0, v3}, Lcom/hf/UI/HFViewPager;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
