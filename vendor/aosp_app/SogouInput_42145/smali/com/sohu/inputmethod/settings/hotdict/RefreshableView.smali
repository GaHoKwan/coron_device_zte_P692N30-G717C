.class public Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lalc;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/Scroller;

.field private a:Landroid/widget/TextView;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/TextView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, -0x32

    iput v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    .line 46
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, -0x32

    iput v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    .line 52
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b()V

    .line 54
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/SharedPreferences;

    .line 55
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 58
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Layu;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Layu;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    const v3, 0x7f0b02ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 75
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    const/high16 v0, -0x3db8

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    .line 80
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    .line 82
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ProgressBar;

    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    const v1, 0x7f0701a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    const v1, 0x7f0701aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a(Landroid/widget/TextView;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    iget v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    if-lez p1, :cond_0

    .line 128
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    .line 129
    int-to-float v3, p1

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    .line 130
    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 132
    if-le v2, v1, :cond_2

    .line 135
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 136
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 138
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a(Landroid/widget/TextView;)V

    .line 142
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-lez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    const v1, 0x7f0b02fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :goto_1
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->d()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->e()V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 303
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 304
    instance-of v0, v1, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 305
    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v0, v1

    .line 306
    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v0

    .line 307
    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 322
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 311
    goto :goto_0

    .line 313
    :cond_1
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 314
    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 315
    goto :goto_0

    :cond_2
    move v0, v3

    .line 317
    goto :goto_0

    :cond_3
    move v0, v3

    .line 322
    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 210
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 211
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/content/Context;

    const v3, 0x7f0b0300

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    rsub-int/lit8 v2, v0, 0x0

    invoke-virtual {v1, v4, v0, v4, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 217
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 218
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Lalc;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Lalc;

    invoke-interface {v0, p0}, Lalc;->a(Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    .line 222
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    invoke-virtual {v1, v3, v0, v3, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 228
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 229
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshEnabled(Z)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->setRefreshing(Z)V

    .line 264
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 266
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a(Landroid/widget/TextView;)V

    .line 269
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    invoke-virtual {v1, v3, v0, v3, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 270
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 271
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    if-gez p1, :cond_1

    .line 101
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 102
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    if-ge v1, v2, :cond_0

    .line 103
    iget v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 107
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a(Landroid/widget/TextView;)V

    .line 111
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-lez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    const v1, 0x7f0b02fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/TextView;

    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 234
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 236
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->invalidate()V

    .line 241
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 276
    packed-switch v0, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 278
    :pswitch_1
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    goto :goto_0

    .line 282
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    sub-int v0, v1, v0

    .line 284
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    .line 285
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    goto :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 164
    iget-boolean v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Z

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    goto :goto_0

    .line 178
    :pswitch_1
    iget v2, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    sub-int v2, v1, v2

    .line 179
    if-lez v2, :cond_2

    iget-boolean v3, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    if-nez v3, :cond_2

    .line 180
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b(I)V

    .line 182
    :cond_2
    if-gez v2, :cond_3

    .line 183
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a(I)V

    .line 185
    :cond_3
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:I

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->c()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Z

    .line 253
    return-void
.end method

.method public setRefreshListener(Lalc;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a:Lalc;

    .line 257
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->b:Z

    .line 249
    return-void
.end method
