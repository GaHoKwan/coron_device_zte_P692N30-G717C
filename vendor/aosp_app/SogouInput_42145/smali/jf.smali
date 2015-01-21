.class public Ljf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;
.implements Lhq;


# static fields
.field private static a:Ljf;


# instance fields
.field private a:I

.field private a:Lage;

.field private a:Lamz;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/PopupWindow;

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

.field private b:I

.field private b:Landroid/os/Handler;

.field private b:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:I

.field private c:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private c:Z

.field private d:I

.field private d:Landroid/view/View;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Ljf;->a:Ljf;

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

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ThemeSortListTab"

    iput-object v0, p0, Ljf;->a:Ljava/lang/String;

    .line 51
    iput-boolean v2, p0, Ljf;->a:Z

    .line 55
    iput-object v1, p0, Ljf;->a:Landroid/view/LayoutInflater;

    .line 56
    iput-boolean v2, p0, Ljf;->b:Z

    .line 61
    iput-object v1, p0, Ljf;->a:Lage;

    .line 62
    iput-object v1, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    .line 63
    iput-object v1, p0, Ljf;->a:Lgw;

    .line 64
    iput-object v1, p0, Ljf;->a:Ljava/util/List;

    .line 65
    iput-object v1, p0, Ljf;->b:Ljava/util/List;

    .line 66
    iput-object v1, p0, Ljf;->c:Ljava/util/List;

    .line 67
    iput-object v1, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 68
    iput-boolean v2, p0, Ljf;->c:Z

    .line 69
    iput-object v1, p0, Ljf;->a:Landroid/view/View;

    .line 70
    iput-object v1, p0, Ljf;->b:Landroid/view/View;

    .line 71
    iput-object v1, p0, Ljf;->c:Landroid/view/View;

    .line 72
    iput-object v1, p0, Ljf;->a:Landroid/widget/PopupWindow;

    .line 73
    iput-object v1, p0, Ljf;->d:Landroid/view/View;

    .line 74
    iput v2, p0, Ljf;->a:I

    .line 75
    iput v2, p0, Ljf;->b:I

    .line 76
    iput-boolean v2, p0, Ljf;->d:Z

    .line 77
    iput-object v1, p0, Ljf;->b:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Ljf;->c:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Ljf;->e:Z

    .line 82
    iput-object v1, p0, Ljf;->a:Lamz;

    .line 83
    iput-object v1, p0, Ljf;->a:Lhf;

    .line 84
    iput-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    .line 91
    iput-boolean v2, p0, Ljf;->h:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljf;->c:I

    .line 93
    const/16 v0, 0x12

    iput v0, p0, Ljf;->d:I

    .line 98
    iput-object v1, p0, Ljf;->a:Landroid/os/Handler;

    .line 99
    iput-object v1, p0, Ljf;->b:Landroid/os/Handler;

    .line 625
    new-instance v0, Lji;

    invoke-direct {v0, p0}, Lji;-><init>(Ljf;)V

    iput-object v0, p0, Ljf;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 667
    new-instance v0, Lhe;

    iget-object v1, p0, Ljf;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1}, Lhe;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Ljf;->a:Landroid/view/View$OnTouchListener;

    .line 206
    iput-object p1, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 207
    iget-object v0, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Landroid/content/Context;

    .line 208
    iget-object v0, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v1, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Ljf;->a:Landroid/view/LayoutInflater;

    .line 209
    iput-object p3, p0, Ljf;->b:Landroid/os/Handler;

    .line 210
    new-instance v0, Ljm;

    iget-object v1, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Ljm;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Ljf;->a:Landroid/os/Handler;

    .line 211
    iput-object p2, p0, Ljf;->a:Lage;

    .line 219
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Landroid/content/SharedPreferences;

    .line 220
    iget-object v0, p0, Ljf;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Landroid/content/SharedPreferences$Editor;

    .line 222
    sput-object p0, Ljf;->a:Ljf;

    .line 223
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fa:I

    .line 225
    return-void
.end method

.method static synthetic a(Ljf;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Ljf;->c:I

    return v0
.end method

.method static synthetic a(Ljf;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Ljf;->a:I

    return p1
.end method

.method static synthetic a(Ljf;)Lage;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Lage;

    return-object v0
.end method

.method static synthetic a(Ljf;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljf;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Ljf;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Ljf;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Ljf;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Ljf;)Lcom/sogou/theme/ThemeListView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    return-object v0
.end method

.method static synthetic a(Ljf;)Lgw;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Lgw;

    return-object v0
.end method

.method static synthetic a(Ljf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljf;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Ljf;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->a:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Ljf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a()Ljf;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Ljf;->a:Ljf;

    return-object v0
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    .line 546
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v7

    .line 549
    iget-boolean v0, p0, Ljf;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    move v5, v0

    .line 551
    :goto_1
    if-nez v5, :cond_4

    .line 583
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 549
    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v4, v2

    .line 552
    :goto_3
    sub-int v0, v7, v6

    add-int/lit8 v0, v0, 0x1

    if-ge v4, v0, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 554
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 556
    if-eqz v0, :cond_9

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 559
    invoke-virtual {v0}, Ljq;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 560
    add-int v1, v6, v4

    add-int/lit8 v1, v1, -0x1

    .line 561
    iget-boolean v9, p0, Ljf;->d:Z

    if-eqz v9, :cond_5

    add-int/lit8 v1, v1, -0x1

    .line 562
    :cond_5
    iget v9, p0, Ljf;->c:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v3

    .line 563
    if-ltz v1, :cond_7

    if-ge v1, v5, :cond_7

    .line 565
    iget-boolean v9, p0, Ljf;->d:Z

    if-nez v9, :cond_8

    .line 566
    iget-object v9, p0, Ljf;->a:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 572
    :goto_5
    iget-object v9, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    iget-object v9, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 573
    iget-object v9, p0, Ljf;->a:Landroid/content/Context;

    iget-object v10, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v11, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v12, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 574
    :cond_6
    invoke-virtual {v0, v2}, Ljq;->a(Z)V

    .line 575
    iget-object v9, p0, Ljf;->a:Lgw;

    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v10, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v10}, Lgw;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 578
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 567
    :cond_8
    iget-object v9, p0, Ljf;->c:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    goto :goto_5

    .line 552
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljf;->a(Ljava/lang/CharSequence;I)V

    .line 1187
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1174
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1176
    :cond_0
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1177
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1183
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    .line 1181
    iget-object v0, p0, Ljf;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Ljf;->b(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    return-void
.end method

.method static synthetic a(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->v()V

    return-void
.end method

.method static synthetic a(Ljf;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljf;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Ljf;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljf;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Ljf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljf;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljf;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljf;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Ljf;->h:Z

    return p1
.end method

.method static synthetic b(Ljf;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Ljf;->b:I

    return v0
.end method

.method static synthetic b(Ljf;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Ljf;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Ljf;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Ljf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ljf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 437
    iget-object v2, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 440
    :cond_0
    iget v2, p0, Ljf;->a:I

    iget v3, p0, Ljf;->d:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljf;->b:I

    .line 441
    iget-object v2, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 443
    new-instance v2, Lamz;

    iget-object v3, p0, Ljf;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamz;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljf;->a:Lamz;

    .line 444
    iget-object v2, p0, Ljf;->a:Lamz;

    iget v3, p0, Ljf;->a:I

    iget v4, p0, Ljf;->b:I

    invoke-virtual {v2, v3, v4}, Lamz;->a(II)V

    .line 445
    iget-object v2, p0, Ljf;->a:Lamz;

    invoke-virtual {v2, p1}, Lamz;->a(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Ljf;->a:Lamz;

    invoke-virtual {v2, p0}, Lamz;->b(Lalv;)V

    .line 447
    iget-object v4, p0, Ljf;->a:Lamz;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Lsg;

    .line 448
    iget-object v0, p0, Ljf;->a:Lamz;

    iget-object v1, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, v1}, Lamz;->c(Lsg;)V

    .line 449
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 450
    if-lez v0, :cond_1

    .line 451
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Lsg;

    .line 458
    iget-object v0, p0, Ljf;->a:Lsg;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamz;

    iput-object v0, p0, Ljf;->a:Lamz;

    .line 460
    iget-object v0, p0, Ljf;->a:Lamz;

    iget v1, p0, Ljf;->a:I

    iget v2, p0, Ljf;->b:I

    invoke-virtual {v0, v1, v2}, Lamz;->a(II)V

    .line 461
    iget-object v0, p0, Ljf;->a:Lamz;

    invoke-virtual {v0, p1}, Lamz;->a(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 463
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method static synthetic b(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->m()V

    return-void
.end method

.method static synthetic b(Ljf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljf;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljf;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Ljf;->h:Z

    return v0
.end method

.method static synthetic b(Ljf;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Ljf;->g:Z

    return p1
.end method

.method static synthetic c(Ljf;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Ljf;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljf;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic c(Ljf;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    return-void
.end method

.method static synthetic c(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->q()V

    return-void
.end method

.method static synthetic c(Ljf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljf;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Ljf;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljf;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iput-boolean v1, p0, Ljf;->d:Z

    .line 299
    iget-object v2, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v2, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 301
    iget-object v2, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v2, v0}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 303
    :cond_0
    iget-object v2, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    iput-boolean v0, p0, Ljf;->f:Z

    .line 305
    iget-object v1, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 306
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 307
    iget-object v2, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Ljf;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Ljf;->d:Z

    return v0
.end method

.method static synthetic c(Ljf;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Ljf;->e:Z

    return p1
.end method

.method static synthetic d(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->n()V

    return-void
.end method

.method static synthetic e(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->o()V

    return-void
.end method

.method static synthetic f(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->w()V

    return-void
.end method

.method static synthetic g(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->x()V

    return-void
.end method

.method static synthetic h(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->r()V

    return-void
.end method

.method static synthetic i(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->t()V

    return-void
.end method

.method static synthetic j(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->u()V

    return-void
.end method

.method static synthetic k(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljf;->p()V

    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Ljf;->a:Lhf;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lhf;

    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ljf;->a:Lhf;

    .line 259
    :cond_0
    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 260
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 263
    iput-object v4, p0, Ljf;->b:Ljava/util/List;

    .line 265
    :cond_1
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[refreshSortTheme] showname = "

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

    invoke-direct {p0, v2}, Ljf;->c(Ljava/lang/String;)V

    .line 268
    new-instance v2, Lhk;

    invoke-direct {v2}, Lhk;-><init>()V

    .line 269
    sget-object v3, Laox;->I:Ljava/lang/String;

    iput-object v3, v2, Lhk;->d:Ljava/lang/String;

    .line 270
    const-string v3, ""

    iput-object v3, v2, Lhk;->b:Ljava/lang/String;

    .line 271
    iget-object v3, v0, Lhi;->a:Ljava/lang/String;

    iput-object v3, v2, Lhk;->a:Ljava/lang/String;

    .line 272
    iget-object v3, v0, Lhi;->c:Ljava/lang/String;

    iput-object v3, v2, Lhk;->g:Ljava/lang/String;

    .line 273
    iget-object v3, v0, Lhi;->d:Ljava/lang/String;

    iput-object v3, v2, Lhk;->h:Ljava/lang/String;

    .line 274
    iget-object v3, v0, Lhi;->b:Ljava/lang/String;

    iput-object v3, v2, Lhk;->e:Ljava/lang/String;

    .line 275
    iget-object v3, v0, Lhi;->e:Ljava/lang/String;

    iput-object v3, v2, Lhk;->i:Ljava/lang/String;

    .line 276
    iput-boolean v6, v2, Lhk;->d:Z

    .line 277
    iget-object v0, v0, Lhi;->g:Ljava/lang/String;

    iput-object v0, v2, Lhk;->k:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-nez v0, :cond_2

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljf;->b:Ljava/util/List;

    .line 282
    :cond_2
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_3
    iput-boolean v5, p0, Ljf;->d:Z

    .line 285
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v5}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 287
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v6}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 289
    :cond_4
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    :cond_5
    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 292
    iput-object v4, p0, Ljf;->a:Lhf;

    .line 293
    iput-object v4, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 294
    return-void
.end method

.method private n()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 314
    iget-object v0, p0, Ljf;->a:Lhf;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lhf;

    iget-object v3, p0, Ljf;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->K:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ljf;->a:Lhf;

    .line 316
    :cond_0
    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 317
    iput-boolean v1, p0, Ljf;->c:Z

    .line 318
    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1

    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ljf;->c:Z

    .line 324
    :cond_1
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 325
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 327
    iput-object v6, p0, Ljf;->b:Ljava/util/List;

    .line 329
    :cond_2
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshSortTheme] showname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhi;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  squarePicUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhi;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   candidatePicUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhi;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   ssfurl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lhi;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljf;->c(Ljava/lang/String;)V

    .line 332
    new-instance v4, Lhk;

    invoke-direct {v4}, Lhk;-><init>()V

    .line 333
    sget-object v5, Laox;->I:Ljava/lang/String;

    iput-object v5, v4, Lhk;->d:Ljava/lang/String;

    .line 334
    const-string v5, ""

    iput-object v5, v4, Lhk;->b:Ljava/lang/String;

    .line 335
    iget-object v5, v0, Lhi;->a:Ljava/lang/String;

    iput-object v5, v4, Lhk;->a:Ljava/lang/String;

    .line 336
    iget-object v5, v0, Lhi;->c:Ljava/lang/String;

    iput-object v5, v4, Lhk;->g:Ljava/lang/String;

    .line 337
    iget-object v5, v0, Lhi;->d:Ljava/lang/String;

    iput-object v5, v4, Lhk;->h:Ljava/lang/String;

    .line 338
    iget-object v5, v0, Lhi;->b:Ljava/lang/String;

    iput-object v5, v4, Lhk;->e:Ljava/lang/String;

    .line 339
    iget-object v5, v0, Lhi;->e:Ljava/lang/String;

    iput-object v5, v4, Lhk;->i:Ljava/lang/String;

    .line 340
    iget-object v0, v0, Lhi;->f:Ljava/lang/String;

    iput-object v0, v4, Lhk;->j:Ljava/lang/String;

    .line 341
    iput-boolean v2, v4, Lhk;->d:Z

    .line 344
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-nez v0, :cond_3

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljf;->b:Ljava/util/List;

    .line 347
    :cond_3
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v0, v2

    .line 322
    goto/16 :goto_0

    .line 349
    :cond_5
    iput-boolean v2, p0, Ljf;->d:Z

    .line 350
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 352
    iget-boolean v0, p0, Ljf;->c:Z

    if-nez v0, :cond_7

    .line 353
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 356
    :cond_6
    :goto_2
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    :goto_3
    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 361
    iput-object v6, p0, Ljf;->a:Lhf;

    .line 362
    iput-object v6, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 363
    return-void

    .line 354
    :cond_7
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    goto :goto_2

    .line 358
    :cond_8
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Ljf;->a:Lgw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 367
    iget-boolean v0, p0, Ljf;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 369
    iput-object v3, p0, Ljf;->c:Ljava/util/List;

    .line 370
    iput-boolean v2, p0, Ljf;->e:Z

    .line 372
    :cond_0
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljf;->c:Ljava/util/List;

    .line 375
    :cond_1
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    iget-object v1, p0, Ljf;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 377
    iput-object v3, p0, Ljf;->b:Ljava/util/List;

    .line 378
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljf;->f:Z

    .line 381
    :cond_2
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Ljf;->c:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Ljf;->c:Ljava/util/List;

    .line 388
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Ljf;->a:I

    .line 389
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Ljf;->a:Lgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljf;->a:Ljava/util/List;

    .line 395
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    iget-object v1, p0, Ljf;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Ljf;->b:Ljava/util/List;

    .line 398
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljf;->f:Z

    .line 401
    :cond_0
    return-void
.end method

.method private r()V
    .locals 7

    .prologue
    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 404
    iget-object v2, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    iget-object v2, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    :cond_0
    iget-object v2, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 409
    new-instance v2, Lamz;

    iget-object v3, p0, Ljf;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamz;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljf;->a:Lamz;

    .line 410
    iget-object v2, p0, Ljf;->a:Lamz;

    invoke-virtual {v2, v1}, Lamz;->a(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Ljf;->a:Lamz;

    invoke-virtual {v2, p0}, Lamz;->b(Lalv;)V

    .line 412
    iget-object v4, p0, Ljf;->a:Lamz;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Lsg;

    .line 413
    iget-object v0, p0, Ljf;->a:Lamz;

    iget-object v1, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, v1}, Lamz;->c(Lsg;)V

    .line 414
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 415
    if-lez v0, :cond_1

    .line 416
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Lsg;

    .line 423
    iget-object v0, p0, Ljf;->a:Lsg;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamz;

    iput-object v0, p0, Ljf;->a:Lamz;

    .line 425
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 426
    iget-object v0, p0, Ljf;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljf;->d:Landroid/view/View;

    .line 492
    iget-object v0, p0, Ljf;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Ljf;->d:Landroid/view/View;

    new-instance v1, Ljg;

    invoke-direct {v1, p0}, Ljg;-><init>(Ljf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ljf;->d:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    .line 516
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    .line 518
    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    .line 519
    iget-object v2, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 520
    iget-object v1, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    .prologue
    .line 524
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0}, Ljf;->s()V

    .line 526
    :cond_0
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 529
    iget-object v1, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getLocationInWindow([I)V

    .line 530
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    .line 531
    iget-object v1, p0, Ljf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 532
    iget-object v2, p0, Ljf;->a:Landroid/widget/PopupWindow;

    iget-object v3, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 542
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 615
    const-string v0, "================================onLoad============================="

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->a()V

    .line 618
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->b()V

    .line 623
    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    :cond_0
    new-instance v0, Ljj;

    invoke-direct {v0, p0}, Ljj;-><init>(Ljf;)V

    iput-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    .line 925
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 927
    :cond_1
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    :cond_0
    new-instance v0, Ljk;

    invoke-direct {v0, p0}, Ljk;-><init>(Ljf;)V

    iput-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    .line 949
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 951
    :cond_1
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1037
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1039
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1040
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1041
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1042
    iget-object v1, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1043
    invoke-static {v1}, Lhl;->a(Landroid/view/View;)V

    .line 1044
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_0
    iput-object v2, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    .line 1049
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

    .line 233
    iget-object v0, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Laox;->c(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x69

    iput v0, p0, Ljf;->c:I

    .line 234
    iget-object v0, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Laox;->d(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x69

    iget v1, p0, Ljf;->c:I

    mul-int/2addr v0, v1

    iput v0, p0, Ljf;->d:I

    .line 235
    iget-object v0, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_2

    move v1, v2

    .line 236
    :goto_0
    iget-boolean v0, p0, Ljf;->b:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Ljf;->c()V

    .line 237
    :cond_0
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Ljf;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f030066

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sogou/theme/ThemeListView;

    iput-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    .line 239
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    const v4, 0x7f0701de

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    iget-object v4, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v4, v0}, Lcom/sogou/theme/ThemeListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v3}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 243
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 244
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, p0}, Lcom/sogou/theme/ThemeListView;->setXListViewListener(Lhq;)V

    .line 245
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Ljf;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 246
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Ljf;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    new-instance v0, Ljn;

    iget-object v2, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget v3, p0, Ljf;->c:I

    invoke-direct {v0, p0, v2, v1, v3}, Ljn;-><init>(Ljf;Landroid/content/Context;ZI)V

    iput-object v0, p0, Ljf;->a:Lgw;

    .line 248
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v2, p0, Ljf;->a:Lgw;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    invoke-virtual {p0}, Ljf;->a()V

    .line 252
    :cond_1
    iput-boolean v1, p0, Ljf;->b:Z

    .line 253
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    return-object v0

    :cond_2
    move v1, v3

    .line 235
    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 931
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 932
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 933
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x2

    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 981
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1025
    const-string v0, "------------------MSG_SHOW_ERROR_PAGE------------------"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 984
    :sswitch_0
    const-string v0, "------------------InternetConnection.NO_NEED_DOWNLOAD_THEME_SORT"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 985
    iget-boolean v0, p0, Ljf;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ljf;->d:Z

    if-nez v0, :cond_4

    .line 986
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 988
    :goto_1
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2, v2}, Lcom/sogou/theme/ThemeListView;->scrollTo(II)V

    .line 989
    :cond_2
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 991
    :cond_3
    iget-boolean v0, p0, Ljf;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljf;->g:Z

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 993
    const v1, 0x7f0b0481

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 994
    iget-object v1, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    iput-boolean v2, p0, Ljf;->g:Z

    goto :goto_0

    .line 987
    :cond_4
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 999
    :sswitch_1
    const-string v0, "------------------InternetConnection.NEED_DOWNLOAD_THEME_SORT"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1001
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2, v2}, Lcom/sogou/theme/ThemeListView;->scrollTo(II)V

    .line 1002
    :cond_5
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1003
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1004
    :cond_6
    iget-boolean v0, p0, Ljf;->g:Z

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1006
    const v1, 0x7f0b0480

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1007
    iget-object v1, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1008
    iput-boolean v2, p0, Ljf;->g:Z

    goto/16 :goto_0

    .line 1012
    :sswitch_2
    const-string v0, "------------------InternetConnection.NEW_THEME_INFO"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1014
    iget-boolean v0, p0, Ljf;->g:Z

    if-eqz v0, :cond_7

    .line 1015
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1016
    const v1, 0x7f0b0482

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1017
    iget-object v1, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1018
    iput-boolean v2, p0, Ljf;->g:Z

    .line 1020
    :cond_7
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1021
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1022
    iget-object v1, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 229
    :goto_0
    iget-boolean v3, p0, Ljf;->b:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 228
    goto :goto_0

    :cond_1
    move v1, v2

    .line 229
    goto :goto_1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1154
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1155
    iget-boolean v1, p0, Ljf;->d:Z

    if-ne v1, v0, :cond_2

    .line 1156
    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1157
    :cond_0
    new-instance v1, Ljl;

    invoke-direct {v1, p0}, Ljl;-><init>(Ljf;)V

    iput-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    .line 1163
    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1168
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 955
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 957
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Ljf;->d:Z

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Ljf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 587
    :goto_0
    iget-boolean v3, p0, Ljf;->b:Z

    if-ne v3, v0, :cond_1

    .line 612
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 586
    goto :goto_0

    .line 588
    :cond_1
    iput-boolean v0, p0, Ljf;->b:Z

    .line 589
    iget-object v0, p0, Ljf;->a:Lgw;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 591
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->b(Z)V

    .line 592
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 593
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 594
    iput-object v4, p0, Ljf;->a:Lgw;

    .line 596
    :cond_2
    iget-object v0, p0, Ljf;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 597
    iget-object v0, p0, Ljf;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Ljf;->c:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 599
    iput-object v4, p0, Ljf;->b:Landroid/view/View;

    .line 600
    iput-object v4, p0, Ljf;->a:Landroid/view/View;

    .line 601
    iput-object v4, p0, Ljf;->c:Landroid/view/View;

    .line 602
    invoke-direct {p0}, Ljf;->y()V

    .line 603
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->b(Ljava/util/List;)V

    .line 604
    iput-boolean v2, p0, Ljf;->f:Z

    .line 605
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 606
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 611
    :cond_3
    iput-object v4, p0, Ljf;->a:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public d()V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1052
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 1054
    :cond_0
    invoke-direct {p0}, Ljf;->y()V

    .line 1056
    iget-object v0, p0, Ljf;->a:Lamz;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Ljf;->a:Lamz;

    invoke-virtual {v0}, Lamz;->a()V

    .line 1058
    iput-object v2, p0, Ljf;->a:Lamz;

    .line 1061
    :cond_1
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1062
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1067
    :cond_2
    iput-object v2, p0, Ljf;->a:Ljava/lang/Thread;

    .line 1069
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1070
    iget-object v0, p0, Ljf;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 1072
    :cond_3
    iput-object v2, p0, Ljf;->b:Ljava/util/List;

    .line 1074
    iget-object v0, p0, Ljf;->a:Lgw;

    if-eqz v0, :cond_4

    .line 1075
    iget-object v0, p0, Ljf;->a:Lgw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 1076
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 1077
    iget-object v0, p0, Ljf;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 1079
    :cond_4
    iput-object v2, p0, Ljf;->a:Lgw;

    .line 1081
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1082
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 1084
    :cond_5
    iput-object v2, p0, Ljf;->a:Ljava/util/List;

    .line 1086
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1087
    iget-object v0, p0, Ljf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1088
    iput-object v2, p0, Ljf;->a:Ljava/util/ArrayList;

    .line 1090
    :cond_6
    invoke-direct {p0}, Ljf;->u()V

    .line 1091
    iget-object v0, p0, Ljf;->d:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1092
    iget-object v0, p0, Ljf;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    :cond_7
    iget-object v0, p0, Ljf;->a:Landroid/widget/PopupWindow;

    invoke-static {v0}, Laox;->a(Landroid/widget/PopupWindow;)V

    .line 1094
    iget-object v0, p0, Ljf;->d:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1095
    iput-object v2, p0, Ljf;->a:Landroid/widget/PopupWindow;

    .line 1096
    iput-object v2, p0, Ljf;->d:Landroid/view/View;

    .line 1098
    iget-object v0, p0, Ljf;->a:Lhf;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljf;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 1099
    :cond_8
    iput-object v2, p0, Ljf;->a:Lhf;

    .line 1103
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 1104
    iget-object v0, p0, Ljf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1105
    iput-object v2, p0, Ljf;->a:Landroid/os/Handler;

    .line 1108
    :cond_9
    iget-object v0, p0, Ljf;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1109
    iget-object v0, p0, Ljf;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1110
    iget-object v0, p0, Ljf;->c:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1114
    iput-object v2, p0, Ljf;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 1115
    sput-object v2, Ljf;->a:Ljf;

    .line 1116
    iput-object v2, p0, Ljf;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 1117
    iput-object v2, p0, Ljf;->a:Landroid/view/View$OnTouchListener;

    .line 1118
    iput-object v2, p0, Ljf;->a:Lcom/sogou/theme/ThemeListView;

    .line 1119
    iput-object v2, p0, Ljf;->a:Landroid/view/LayoutInflater;

    .line 1120
    iput-object v2, p0, Ljf;->a:Landroid/view/View;

    .line 1121
    iput-object v2, p0, Ljf;->b:Landroid/view/View;

    .line 1122
    iput-object v2, p0, Ljf;->c:Landroid/view/View;

    .line 1123
    iput-object v2, p0, Ljf;->a:Lsg;

    .line 1124
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljf;->c(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljf;->a:Ljava/lang/Thread;

    .line 1134
    invoke-direct {p0}, Ljf;->u()V

    .line 1135
    iget-object v0, p0, Ljf;->a:Lage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljf;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Ljf;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 1138
    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 1141
    iget-boolean v0, p0, Ljf;->d:Z

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1143
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1144
    iget-object v1, p0, Ljf;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    invoke-direct {p0}, Ljf;->t()V

    .line 1147
    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 1150
    invoke-static {}, Laox;->a()V

    .line 1151
    return-void
.end method
