.class public Lcom/sogou/theme/ThemeListViewFooter;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:I

    .line 33
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeListViewFooter;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:I

    .line 38
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeListViewFooter;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/content/Context;

    .line 43
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/sogou/theme/ThemeListViewFooter;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setState(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 55
    iget v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:I

    if-ne p1, v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 78
    :cond_1
    :goto_2
    iput p1, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:I

    goto :goto_0

    .line 60
    :cond_2
    if-ne p1, v3, :cond_3

    .line 61
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 70
    :pswitch_0
    iget v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:I

    if-eq v0, v3, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0478

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisiableHeight(I)V
    .locals 2
    .parameter

    .prologue
    .line 82
    if-gez p1, :cond_0

    .line 83
    const/4 p1, 0x0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 87
    iget-object v1, p0, Lcom/sogou/theme/ThemeListViewFooter;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method
