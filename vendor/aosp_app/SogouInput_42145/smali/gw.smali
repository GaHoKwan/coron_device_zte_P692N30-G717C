.class public Lgw;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:I

.field private a:Landroid/content/Context;

.field protected a:Landroid/graphics/Bitmap;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnClickListener;

.field protected a:Z

.field protected b:I

.field protected b:Z

.field protected c:I

.field protected c:Z

.field private d:I

.field protected d:Z

.field private e:I

.field protected e:Z

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object v1, p0, Lgw;->a:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lgw;->a:Landroid/view/LayoutInflater;

    .line 29
    iput-object v1, p0, Lgw;->a:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v0, p0, Lgw;->a:Z

    .line 31
    iput-boolean v0, p0, Lgw;->b:Z

    .line 32
    iput-boolean v0, p0, Lgw;->c:Z

    .line 33
    iput-boolean v0, p0, Lgw;->d:Z

    .line 34
    iput-boolean v0, p0, Lgw;->e:Z

    .line 35
    iput-boolean v0, p0, Lgw;->f:Z

    .line 36
    iput v0, p0, Lgw;->a:I

    .line 37
    iput v0, p0, Lgw;->b:I

    .line 38
    iput v0, p0, Lgw;->c:I

    .line 145
    new-instance v0, Lgx;

    invoke-direct {v0, p0}, Lgx;-><init>(Lgw;)V

    iput-object v0, p0, Lgw;->a:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lgw;->a:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lgw;->a:Landroid/content/Context;

    iget-object v1, p0, Lgw;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lgw;->a:Landroid/view/LayoutInflater;

    .line 46
    iput-boolean p2, p0, Lgw;->a:Z

    .line 47
    iput p3, p0, Lgw;->d:I

    .line 48
    iget-object v0, p0, Lgw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lgw;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Lgw;->e:I

    .line 49
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lgw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030060

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 138
    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lgw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030064

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 117
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-object v0
.end method

.method protected a(ILandroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const v0, 0x7f0701fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/4 v1, 0x0

    .line 84
    :goto_0
    iget v3, p0, Lgw;->d:I

    if-ge v1, v3, :cond_0

    .line 85
    invoke-virtual {p0, v0, v2}, Lgw;->a(Landroid/view/View;Ljava/util/ArrayList;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v2
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lgw;->b:Z

    .line 194
    iput-boolean v0, p0, Lgw;->c:Z

    .line 195
    iput-boolean v0, p0, Lgw;->d:Z

    .line 196
    iput-boolean v0, p0, Lgw;->e:Z

    .line 197
    iput-boolean v0, p0, Lgw;->f:Z

    .line 198
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lgw;->b:Z

    .line 154
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 92
    iget-object v0, p0, Lgw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03005f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lgw;->e:I

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Ljq;

    invoke-direct {v2}, Ljq;-><init>()V

    .line 100
    iput-object v1, v2, Ljq;->a:Landroid/widget/RelativeLayout;

    .line 101
    const v1, 0x7f0701e7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Ljq;->a:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f0701e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ljq;->a:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ljq;->b:Landroid/widget/ImageView;

    .line 104
    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ljq;->c:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0701eb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ljq;->d:Landroid/widget/ImageView;

    .line 106
    const v1, 0x7f0701ec

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ljq;->a:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0701ed

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ljq;->b:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    return v5
.end method

.method public b(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lgw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03005e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 124
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lgw;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgw;->a:Landroid/graphics/Bitmap;

    .line 203
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-boolean p1, p0, Lgw;->c:Z

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iput-boolean v0, p0, Lgw;->d:Z

    .line 160
    iput-boolean v0, p0, Lgw;->e:Z

    .line 161
    iput-boolean v0, p0, Lgw;->f:Z

    .line 163
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-boolean p1, p0, Lgw;->d:Z

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-boolean v0, p0, Lgw;->c:Z

    .line 169
    iput-boolean v0, p0, Lgw;->e:Z

    .line 170
    iput-boolean v0, p0, Lgw;->f:Z

    .line 172
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-boolean p1, p0, Lgw;->e:Z

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iput-boolean v0, p0, Lgw;->c:Z

    .line 178
    iput-boolean v0, p0, Lgw;->d:Z

    .line 179
    iput-boolean v0, p0, Lgw;->f:Z

    .line 181
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 184
    iput-boolean p1, p0, Lgw;->f:Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iput-boolean v0, p0, Lgw;->c:Z

    .line 187
    iput-boolean v0, p0, Lgw;->d:Z

    .line 188
    iput-boolean v0, p0, Lgw;->e:Z

    .line 190
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lgw;->a:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lgw;->c:I

    return v0
.end method
