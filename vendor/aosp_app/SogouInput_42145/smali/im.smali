.class public Lim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;
.implements Lhq;


# static fields
.field private static a:Lim;


# instance fields
.field private a:I

.field private a:Lage;

.field private a:Lamw;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/Toast;

.field private a:Lcom/sogou/theme/ThemeListView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

.field private a:Lgw;

.field private a:Lhf;

.field private final a:Ljava/lang/String;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/List;

.field private a:Lsg;

.field private final a:Z

.field private b:Landroid/os/Handler;

.field private b:Landroid/view/View;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lim;->a:Lim;

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "ThemeRecommendListTab"

    iput-object v0, p0, Lim;->a:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lim;->a:Z

    .line 50
    iput-object v1, p0, Lim;->a:Landroid/view/LayoutInflater;

    .line 51
    iput-boolean v2, p0, Lim;->b:Z

    .line 56
    iput-object v1, p0, Lim;->a:Lage;

    .line 57
    iput-object v1, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    .line 58
    iput-object v1, p0, Lim;->a:Lgw;

    .line 59
    iput-object v1, p0, Lim;->a:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lim;->b:Ljava/util/List;

    .line 61
    iput-object v1, p0, Lim;->a:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Lim;->a:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lim;->b:Landroid/view/View;

    .line 66
    iput-object v1, p0, Lim;->a:Lamw;

    .line 67
    iput-object v1, p0, Lim;->a:Lhf;

    .line 68
    iput-object v1, p0, Lim;->a:Ljava/lang/Thread;

    .line 74
    iput-boolean v2, p0, Lim;->d:Z

    .line 75
    iput-boolean v2, p0, Lim;->e:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lim;->a:I

    .line 81
    iput-object v1, p0, Lim;->a:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lim;->b:Landroid/os/Handler;

    .line 374
    new-instance v0, Lin;

    invoke-direct {v0, p0}, Lin;-><init>(Lim;)V

    iput-object v0, p0, Lim;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 416
    new-instance v0, Lhe;

    iget-object v1, p0, Lim;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1}, Lhe;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lim;->a:Landroid/view/View$OnTouchListener;

    .line 175
    iput-object p1, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 176
    iget-object v0, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v1, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lim;->a:Landroid/view/LayoutInflater;

    .line 178
    iput-object p3, p0, Lim;->b:Landroid/os/Handler;

    .line 179
    new-instance v0, Lip;

    iget-object v1, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Lip;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lim;->a:Landroid/os/Handler;

    .line 180
    iput-object p2, p0, Lim;->a:Lage;

    .line 188
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Landroid/content/SharedPreferences;

    .line 189
    iget-object v0, p0, Lim;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Landroid/content/SharedPreferences$Editor;

    .line 191
    sput-object p0, Lim;->a:Lim;

    .line 192
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eZ:I

    .line 194
    return-void
.end method

.method static synthetic a(Lim;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lim;->a:I

    return v0
.end method

.method static synthetic a(Lim;)Lage;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Lage;

    return-object v0
.end method

.method static synthetic a(Lim;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lim;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lim;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lim;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lim;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lim;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lim;)Lcom/sogou/theme/ThemeListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    return-object v0
.end method

.method static synthetic a(Lim;)Lgw;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Lgw;

    return-object v0
.end method

.method static synthetic a()Lim;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lim;->a:Lim;

    return-object v0
.end method

.method static synthetic a(Lim;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 305
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    .line 307
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 336
    :cond_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 309
    :goto_0
    sub-int v0, v6, v5

    add-int/lit8 v0, v0, 0x1

    if-ge v4, v0, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 311
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 313
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 316
    invoke-virtual {v0}, Ljq;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    add-int v1, v5, v4

    add-int/lit8 v1, v1, -0x1

    .line 318
    iget v9, p0, Lim;->a:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v2

    .line 319
    if-ge v1, v7, :cond_3

    .line 320
    iget-object v9, p0, Lim;->a:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 325
    iget-object v9, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 326
    iget-object v9, p0, Lim;->a:Landroid/content/Context;

    iget-object v10, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v11, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v12, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 327
    :cond_2
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 328
    iget-object v9, p0, Lim;->a:Lgw;

    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v10, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v10}, Lgw;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 331
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 309
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method static synthetic a(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lim;->o()V

    return-void
.end method

.method static synthetic a(Lim;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lim;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Lim;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lim;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lim;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lim;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim;->a(Ljava/lang/CharSequence;I)V

    .line 801
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 788
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 790
    :cond_0
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 791
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Landroid/widget/Toast;

    .line 795
    iget-object v0, p0, Lim;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    return-void
.end method

.method static synthetic a(Lim;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lim;->e:Z

    return v0
.end method

.method static synthetic a(Lim;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lim;->e:Z

    return p1
.end method

.method static synthetic b(Lim;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lim;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lim;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lim;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lim;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lim;->l()V

    return-void
.end method

.method static synthetic b(Lim;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lim;->d:Z

    return p1
.end method

.method static synthetic c(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lim;->m()V

    return-void
.end method

.method static synthetic d(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lim;->p()V

    return-void
.end method

.method static synthetic e(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lim;->n()V

    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 225
    iget-object v0, p0, Lim;->a:Lhf;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lhf;

    iget-object v1, p0, Lim;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lim;->a:Lhf;

    .line 227
    :cond_0
    iget-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lim;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    .line 229
    :cond_1
    iget-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 232
    iput-object v5, p0, Lim;->b:Ljava/util/List;

    .line 234
    :cond_2
    iget-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[refreshRecommendTheme] showname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhi;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  squarePicUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhi;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   candidatePicUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   ssfurl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhi;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lim;->a(Ljava/lang/String;)V

    .line 237
    new-instance v2, Lhk;

    invoke-direct {v2}, Lhk;-><init>()V

    .line 238
    sget-object v3, Laox;->I:Ljava/lang/String;

    iput-object v3, v2, Lhk;->d:Ljava/lang/String;

    .line 239
    const-string v3, ""

    iput-object v3, v2, Lhk;->b:Ljava/lang/String;

    .line 240
    iget-object v3, v0, Lhi;->a:Ljava/lang/String;

    iput-object v3, v2, Lhk;->a:Ljava/lang/String;

    .line 241
    iget-object v3, v0, Lhi;->c:Ljava/lang/String;

    iput-object v3, v2, Lhk;->g:Ljava/lang/String;

    .line 242
    iget-object v3, v0, Lhi;->d:Ljava/lang/String;

    iput-object v3, v2, Lhk;->h:Ljava/lang/String;

    .line 243
    iget-object v3, v0, Lhi;->b:Ljava/lang/String;

    iput-object v3, v2, Lhk;->e:Ljava/lang/String;

    .line 244
    iget-object v3, v0, Lhi;->e:Ljava/lang/String;

    iput-object v3, v2, Lhk;->i:Ljava/lang/String;

    .line 245
    iget-object v0, v0, Lhi;->f:Ljava/lang/String;

    iput-object v0, v2, Lhk;->j:Ljava/lang/String;

    .line 246
    iput-boolean v4, v2, Lhk;->d:Z

    .line 247
    iput-boolean v4, v2, Lhk;->e:Z

    .line 249
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    if-nez v0, :cond_3

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim;->b:Ljava/util/List;

    .line 252
    :cond_3
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v4}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 255
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :goto_1
    iget-object v0, p0, Lim;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 260
    iput-object v5, p0, Lim;->a:Lhf;

    .line 261
    iput-object v5, p0, Lim;->a:Ljava/util/ArrayList;

    .line 262
    return-void

    .line 257
    :cond_5
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private m()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lim;->a:Lgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim;->a:Ljava/util/List;

    .line 268
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    iget-object v1, p0, Lim;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lim;->b:Ljava/util/List;

    .line 271
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim;->c:Z

    .line 274
    :cond_0
    return-void
.end method

.method private n()V
    .locals 7

    .prologue
    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-object v2, p0, Lim;->a:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    :cond_0
    iget-object v2, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 282
    new-instance v2, Lamw;

    iget-object v3, p0, Lim;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamw;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lim;->a:Lamw;

    .line 283
    iget-object v2, p0, Lim;->a:Lamw;

    invoke-virtual {v2, p0}, Lamw;->b(Lalv;)V

    .line 284
    iget-object v4, p0, Lim;->a:Lamw;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Lsg;

    .line 285
    iget-object v0, p0, Lim;->a:Lamw;

    iget-object v1, p0, Lim;->a:Lsg;

    invoke-virtual {v0, v1}, Lamw;->c(Lsg;)V

    .line 286
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lim;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 287
    if-lez v0, :cond_1

    .line 288
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v1, p0, Lim;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lim;->a:Lsg;

    .line 295
    iget-object v0, p0, Lim;->a:Lsg;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lim;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamw;

    iput-object v0, p0, Lim;->a:Lamw;

    .line 297
    iget-object v0, p0, Lim;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 298
    iget-object v0, p0, Lim;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 366
    const-string v0, "================================onLoad============================="

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->a()V

    .line 369
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->b()V

    .line 372
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    new-instance v0, Lio;

    invoke-direct {v0, p0}, Lio;-><init>(Lim;)V

    iput-object v0, p0, Lim;->a:Ljava/lang/Thread;

    .line 612
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 614
    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 690
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 691
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 692
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 693
    iget-object v1, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 694
    invoke-static {v1}, Lhl;->a(Landroid/view/View;)V

    .line 695
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_0
    iput-object v2, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    .line 700
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 202
    iget-object v0, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Laox;->c(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x69

    iput v0, p0, Lim;->a:I

    .line 203
    iget-object v0, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_2

    move v1, v2

    .line 204
    :goto_0
    iget-boolean v0, p0, Lim;->b:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lim;->c()V

    .line 205
    :cond_0
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lim;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f030066

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sogou/theme/ThemeListView;

    iput-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    .line 207
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    const v4, 0x7f0701de

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    iget-object v4, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v4, v0}, Lcom/sogou/theme/ThemeListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v3}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 211
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 212
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, p0}, Lcom/sogou/theme/ThemeListView;->setXListViewListener(Lhq;)V

    .line 213
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Lim;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 214
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Lim;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    new-instance v0, Liq;

    iget-object v2, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget v3, p0, Lim;->a:I

    invoke-direct {v0, p0, v2, v1, v3}, Liq;-><init>(Lim;Landroid/content/Context;ZI)V

    iput-object v0, p0, Lim;->a:Lgw;

    .line 216
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Lim;->a:Lgw;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    invoke-direct {p0}, Lim;->n()V

    .line 220
    :cond_1
    iput-boolean v1, p0, Lim;->b:Z

    .line 221
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    return-object v0

    :cond_2
    move v1, v3

    .line 203
    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 618
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 620
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 676
    const-string v0, "------------------MSG_SHOW_ERROR_PAGE------------------"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 654
    :pswitch_0
    const-string v0, "------------------InternetConnection.NO_NEED_DOWNLOAD_THEME_RECOMMEND"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 655
    iget-boolean v0, p0, Lim;->c:Z

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 658
    :goto_1
    iget-boolean v0, p0, Lim;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lim;->d:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 660
    const v1, 0x7f0b047f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 661
    iget-object v1, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 662
    iput-boolean v2, p0, Lim;->d:Z

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 666
    :pswitch_1
    const-string v0, "------------------InternetConnection.NEED_DOWNLOAD_THEME_RECOMMEND"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    iget-boolean v0, p0, Lim;->d:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 670
    const v1, 0x7f0b0480

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 671
    iget-object v1, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    iput-boolean v2, p0, Lim;->d:Z

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 198
    :goto_0
    iget-boolean v3, p0, Lim;->b:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v1, v2

    .line 198
    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lim;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 340
    :goto_0
    iget-boolean v3, p0, Lim;->b:Z

    if-ne v3, v0, :cond_1

    .line 363
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    .line 341
    :cond_1
    iput-boolean v0, p0, Lim;->b:Z

    .line 342
    iget-object v0, p0, Lim;->a:Lgw;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 344
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->b(Z)V

    .line 345
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 346
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 347
    iput-object v4, p0, Lim;->a:Lgw;

    .line 349
    :cond_2
    iget-object v0, p0, Lim;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lim;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 351
    iput-object v4, p0, Lim;->b:Landroid/view/View;

    .line 352
    iput-object v4, p0, Lim;->a:Landroid/view/View;

    .line 353
    invoke-direct {p0}, Lim;->q()V

    .line 354
    iput-boolean v2, p0, Lim;->c:Z

    .line 355
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->b(Ljava/util/List;)V

    .line 356
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 357
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 362
    :cond_3
    iput-object v4, p0, Lim;->a:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public d()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 705
    :cond_0
    invoke-direct {p0}, Lim;->q()V

    .line 707
    iget-object v0, p0, Lim;->a:Lamw;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lim;->a:Lamw;

    invoke-virtual {v0}, Lamw;->a()V

    .line 709
    iput-object v2, p0, Lim;->a:Lamw;

    .line 712
    :cond_1
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 713
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 718
    :cond_2
    iput-object v2, p0, Lim;->a:Ljava/lang/Thread;

    .line 720
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lim;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 723
    :cond_3
    iput-object v2, p0, Lim;->b:Ljava/util/List;

    .line 725
    iget-object v0, p0, Lim;->a:Lgw;

    if-eqz v0, :cond_4

    .line 726
    iget-object v0, p0, Lim;->a:Lgw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 727
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 728
    iget-object v0, p0, Lim;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 730
    :cond_4
    iput-object v2, p0, Lim;->a:Lgw;

    .line 732
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 733
    iget-object v0, p0, Lim;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 735
    :cond_5
    iput-object v2, p0, Lim;->a:Ljava/util/List;

    .line 737
    iget-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 738
    iget-object v0, p0, Lim;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    iput-object v2, p0, Lim;->a:Ljava/util/ArrayList;

    .line 742
    :cond_6
    iget-object v0, p0, Lim;->a:Lhf;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lim;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 743
    :cond_7
    iput-object v2, p0, Lim;->a:Lhf;

    .line 747
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 748
    iget-object v0, p0, Lim;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 749
    iput-object v2, p0, Lim;->a:Landroid/os/Handler;

    .line 752
    :cond_8
    iget-object v0, p0, Lim;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 753
    iget-object v0, p0, Lim;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 757
    iput-object v2, p0, Lim;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 758
    sput-object v2, Lim;->a:Lim;

    .line 759
    iput-object v2, p0, Lim;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 760
    iput-object v2, p0, Lim;->a:Landroid/view/View$OnTouchListener;

    .line 761
    iput-object v2, p0, Lim;->a:Lcom/sogou/theme/ThemeListView;

    .line 762
    iput-object v2, p0, Lim;->a:Landroid/view/LayoutInflater;

    .line 763
    iput-object v2, p0, Lim;->a:Landroid/view/View;

    .line 764
    iput-object v2, p0, Lim;->b:Landroid/view/View;

    .line 765
    iput-object v2, p0, Lim;->a:Lsg;

    .line 766
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim;->a(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lim;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 775
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lim;->a:Ljava/lang/Thread;

    .line 776
    iget-object v0, p0, Lim;->a:Lage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lim;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 779
    :cond_1
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 782
    invoke-static {}, Laox;->a()V

    .line 783
    return-void
.end method
