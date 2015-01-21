.class public Lcom/android/launcher2/FocusOnlyTabWidget;
.super Landroid/widget/TabWidget;
.source "FocusOnlyTabWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getChildTabIndex(Landroid/view/View;)I
    .locals 3
    .parameter "v"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 52
    .local v1, tabCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 57
    .end local v0           #i:I
    :goto_1
    return v0

    .line 52
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedTab()Landroid/view/View;
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 41
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 41
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 83
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 87
    :cond_0
    return-void
.end method

.method public setCurrentTabToFocusedTab()V
    .locals 6

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, tab:Landroid/view/View;
    const/4 v2, -0x1

    .line 63
    .local v2, index:I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 64
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    move-object v3, v4

    .line 68
    move v2, v1

    .line 72
    .end local v4           #v:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    .line 73
    invoke-super {p0, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 74
    const/4 v5, 0x1

    invoke-super {p0, v3, v5}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 76
    :cond_1
    return-void

    .line 64
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public superOnFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 79
    return-void
.end method
