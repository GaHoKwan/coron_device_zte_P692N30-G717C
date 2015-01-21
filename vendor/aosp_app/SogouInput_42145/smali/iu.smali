.class public Liu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;
.implements Lhq;
.implements Lit;


# static fields
.field private static a:Liu;


# instance fields
.field private a:I

.field private a:Lage;

.field private a:Lamx;

.field private a:Lamy;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/text/TextWatcher;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/sogou/theme/ThemeListView;

.field private a:Lcom/sogou/theme/ThemeSearchDefaultView;

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

.field private b:Landroid/widget/ImageView;

.field private b:Lhf;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private b:Lsg;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Liu;->a:Liu;

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

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "ThemeSearchListTab"

    iput-object v0, p0, Liu;->a:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Liu;->a:Z

    .line 59
    iput-object v1, p0, Liu;->a:Landroid/view/LayoutInflater;

    .line 60
    iput-boolean v2, p0, Liu;->b:Z

    .line 65
    iput-object v1, p0, Liu;->a:Lage;

    .line 66
    iput-object v1, p0, Liu;->a:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v1, p0, Liu;->a:Landroid/widget/EditText;

    .line 68
    iput-object v1, p0, Liu;->a:Landroid/widget/ImageView;

    .line 69
    iput-object v1, p0, Liu;->b:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    .line 71
    iput-object v1, p0, Liu;->a:Lgw;

    .line 72
    iput-object v1, p0, Liu;->a:Ljava/util/List;

    .line 73
    iput-object v1, p0, Liu;->b:Ljava/util/List;

    .line 74
    iput-object v1, p0, Liu;->a:Ljava/util/ArrayList;

    .line 75
    iput-boolean v2, p0, Liu;->c:Z

    .line 76
    iput-object v1, p0, Liu;->a:Landroid/view/View;

    .line 77
    iput-object v1, p0, Liu;->b:Landroid/view/View;

    .line 78
    iput-object v1, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    .line 79
    iput v2, p0, Liu;->a:I

    .line 80
    iput v2, p0, Liu;->b:I

    .line 81
    iput-boolean v2, p0, Liu;->d:Z

    .line 82
    iput-object v1, p0, Liu;->b:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Liu;->a:Lamx;

    .line 87
    iput-object v1, p0, Liu;->a:Lhf;

    .line 88
    iput-object v1, p0, Liu;->a:Lamy;

    .line 89
    iput-object v1, p0, Liu;->b:Lhf;

    .line 90
    iput-object v1, p0, Liu;->a:Ljava/lang/Thread;

    .line 91
    iput-boolean v2, p0, Liu;->e:Z

    .line 93
    iput-boolean v2, p0, Liu;->f:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Liu;->c:I

    .line 95
    const/16 v0, 0x12

    iput v0, p0, Liu;->d:I

    .line 100
    iput-object v1, p0, Liu;->a:Landroid/os/Handler;

    .line 101
    iput-object v1, p0, Liu;->b:Landroid/os/Handler;

    .line 333
    new-instance v0, Lix;

    invoke-direct {v0, p0}, Lix;-><init>(Liu;)V

    iput-object v0, p0, Liu;->a:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Liy;

    invoke-direct {v0, p0}, Liy;-><init>(Liu;)V

    iput-object v0, p0, Liu;->a:Landroid/text/TextWatcher;

    .line 650
    new-instance v0, Liz;

    invoke-direct {v0, p0}, Liz;-><init>(Liu;)V

    iput-object v0, p0, Liu;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 692
    new-instance v0, Lhe;

    iget-object v1, p0, Liu;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1}, Lhe;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Liu;->a:Landroid/view/View$OnTouchListener;

    .line 219
    iput-object p1, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 220
    iget-object v0, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v1, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Liu;->a:Landroid/view/LayoutInflater;

    .line 222
    iput-object p3, p0, Liu;->b:Landroid/os/Handler;

    .line 223
    new-instance v0, Ljb;

    iget-object v1, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Ljb;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Liu;->a:Landroid/os/Handler;

    .line 224
    iput-object p2, p0, Liu;->a:Lage;

    .line 233
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Landroid/content/SharedPreferences;

    .line 234
    iget-object v0, p0, Liu;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Landroid/content/SharedPreferences$Editor;

    .line 236
    sput-object p0, Liu;->a:Liu;

    .line 237
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fb:I

    .line 239
    return-void
.end method

.method static synthetic a(Liu;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Liu;->c:I

    return v0
.end method

.method static synthetic a(Liu;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Liu;->a:I

    return p1
.end method

.method static synthetic a(Liu;)Lage;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Lage;

    return-object v0
.end method

.method static synthetic a(Liu;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Liu;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Liu;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Liu;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Liu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Liu;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Liu;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Liu;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Liu;)Lcom/sogou/theme/ThemeListView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    return-object v0
.end method

.method static synthetic a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    return-object v0
.end method

.method static synthetic a(Liu;Lcom/sogou/theme/ThemeSearchDefaultView;)Lcom/sogou/theme/ThemeSearchDefaultView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    return-object p1
.end method

.method static synthetic a(Liu;)Lgw;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Lgw;

    return-object v0
.end method

.method static synthetic a()Liu;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Liu;->a:Liu;

    return-object v0
.end method

.method static synthetic a(Liu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Liu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Liu;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Liu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 574
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 575
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    .line 577
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 607
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 579
    :goto_0
    sub-int v0, v6, v5

    add-int/lit8 v0, v0, 0x1

    if-ge v4, v0, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 581
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 583
    if-eqz v0, :cond_4

    .line 585
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

    .line 586
    invoke-virtual {v0}, Ljq;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 587
    add-int v1, v5, v4

    add-int/lit8 v1, v1, -0x1

    .line 588
    iget v9, p0, Liu;->c:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v2

    .line 589
    if-ltz v1, :cond_3

    if-ge v1, v7, :cond_3

    .line 591
    iget-object v9, p0, Liu;->a:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 596
    iget-object v9, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 597
    iget-object v9, p0, Liu;->a:Landroid/content/Context;

    iget-object v10, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v11, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v12, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 598
    :cond_2
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 599
    iget-object v9, p0, Liu;->a:Lgw;

    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v10, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v10}, Lgw;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 602
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 579
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method static synthetic a(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->r()V

    return-void
.end method

.method static synthetic a(Liu;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Liu;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Liu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Liu;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    .line 418
    goto :goto_0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 421
    :cond_1
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->v(Ljava/lang/String;)V

    .line 423
    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Liu;->a:Landroid/widget/EditText;

    .line 273
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    iget-object v1, p0, Liu;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    new-instance v1, Liv;

    invoke-direct {v1, p0}, Liv;-><init>(Liu;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    :cond_0
    iget-object v0, p0, Liu;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Liu;->a:Landroid/widget/ImageView;

    .line 306
    iget-object v0, p0, Liu;->a:Landroid/widget/ImageView;

    new-instance v1, Liw;

    invoke-direct {v1, p0}, Liw;-><init>(Liu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_1
    iget-object v0, p0, Liu;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Liu;->b:Landroid/widget/ImageView;

    .line 318
    iget-object v0, p0, Liu;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Liu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Liu;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 321
    :cond_2
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liu;->a:Lgw;

    if-nez v0, :cond_4

    .line 322
    :cond_3
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sogou/theme/ThemeListView;

    iput-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    .line 323
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 324
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 325
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, p0}, Lcom/sogou/theme/ThemeListView;->setXListViewListener(Lhq;)V

    .line 326
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v1, p0, Liu;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 327
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v1, p0, Liu;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    new-instance v0, Ljc;

    iget-object v1, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget v2, p0, Liu;->c:I

    invoke-direct {v0, p0, v1, p1, v2}, Ljc;-><init>(Liu;Landroid/content/Context;ZI)V

    iput-object v0, p0, Liu;->a:Lgw;

    .line 329
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v1, p0, Liu;->a:Lgw;

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    :cond_4
    return-void
.end method

.method static synthetic a(Liu;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Liu;->f:Z

    return v0
.end method

.method static synthetic a(Liu;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Liu;->f:Z

    return p1
.end method

.method static synthetic b(Liu;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Liu;->b:I

    return v0
.end method

.method static synthetic b(Liu;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Liu;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Liu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Liu;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Liu;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Liu;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->p()V

    return-void
.end method

.method static synthetic b(Liu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Liu;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->u()Ljava/lang/String;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 392
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 397
    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->u(Ljava/lang/String;)V

    .line 407
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Liu;->e:Z

    .line 408
    return-void

    .line 398
    :cond_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 399
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 396
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_3
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lafp;->u(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Liu;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Liu;->e:Z

    return v0
.end method

.method static synthetic b(Liu;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Liu;->e:Z

    return p1
.end method

.method static synthetic c(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->m()V

    return-void
.end method

.method static synthetic c(Liu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Liu;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0x1d

    const/4 v1, 0x0

    .line 542
    iget-object v2, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Liu;->a:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    :cond_0
    iget v2, p0, Liu;->a:I

    iget v3, p0, Liu;->d:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Liu;->b:I

    .line 546
    iget-object v2, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 548
    new-instance v2, Lamx;

    iget-object v3, p0, Liu;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Liu;->a:Lamx;

    .line 549
    iget-object v2, p0, Liu;->a:Lamx;

    iget v3, p0, Liu;->a:I

    iget v4, p0, Liu;->b:I

    invoke-virtual {v2, v3, v4}, Lamx;->a(II)V

    .line 550
    iget-object v2, p0, Liu;->a:Lamx;

    invoke-virtual {v2, p1}, Lamx;->a(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Liu;->a:Lamx;

    invoke-virtual {v2, p0}, Lamx;->b(Lalv;)V

    .line 552
    iget-object v4, p0, Liu;->a:Lamx;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Lsg;

    .line 553
    iget-object v0, p0, Liu;->a:Lamx;

    iget-object v1, p0, Liu;->a:Lsg;

    invoke-virtual {v0, v1}, Lamx;->c(Lsg;)V

    .line 554
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Liu;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 555
    if-lez v0, :cond_1

    .line 556
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 560
    :cond_2
    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Lsg;

    .line 563
    iget-object v0, p0, Liu;->a:Lsg;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Liu;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamx;

    iput-object v0, p0, Liu;->a:Lamx;

    .line 565
    iget-object v0, p0, Liu;->a:Lamx;

    iget v1, p0, Liu;->a:I

    iget v2, p0, Liu;->b:I

    invoke-virtual {v0, v1, v2}, Lamx;->a(II)V

    .line 566
    iget-object v0, p0, Liu;->a:Lamx;

    invoke-virtual {v0, p1}, Lamx;->a(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Liu;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 568
    iget-object v0, p0, Liu;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method static synthetic d(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->n()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1123
    return-void
.end method

.method static synthetic e(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->o()V

    return-void
.end method

.method static synthetic f(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Liu;->s()V

    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Liu;->a:Lhf;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lhf;

    iget-object v3, p0, Liu;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->L:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Liu;->a:Lhf;

    .line 428
    :cond_0
    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Liu;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    .line 430
    :cond_1
    iput-boolean v1, p0, Liu;->c:Z

    .line 431
    iget-object v0, p0, Liu;->a:Lhf;

    invoke-virtual {v0}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_2

    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 435
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Liu;->c:Z

    .line 437
    :cond_2
    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 438
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 440
    iput-object v6, p0, Liu;->b:Ljava/util/List;

    .line 442
    :cond_3
    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    .line 443
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

    invoke-direct {p0, v4}, Liu;->d(Ljava/lang/String;)V

    .line 445
    new-instance v4, Lhk;

    invoke-direct {v4}, Lhk;-><init>()V

    .line 446
    sget-object v5, Laox;->I:Ljava/lang/String;

    iput-object v5, v4, Lhk;->d:Ljava/lang/String;

    .line 447
    const-string v5, ""

    iput-object v5, v4, Lhk;->b:Ljava/lang/String;

    .line 448
    iget-object v5, v0, Lhi;->a:Ljava/lang/String;

    iput-object v5, v4, Lhk;->a:Ljava/lang/String;

    .line 449
    iget-object v5, v0, Lhi;->c:Ljava/lang/String;

    iput-object v5, v4, Lhk;->g:Ljava/lang/String;

    .line 450
    iget-object v5, v0, Lhi;->d:Ljava/lang/String;

    iput-object v5, v4, Lhk;->h:Ljava/lang/String;

    .line 451
    iget-object v5, v0, Lhi;->b:Ljava/lang/String;

    iput-object v5, v4, Lhk;->e:Ljava/lang/String;

    .line 452
    iget-object v5, v0, Lhi;->e:Ljava/lang/String;

    iput-object v5, v4, Lhk;->i:Ljava/lang/String;

    .line 453
    iget-object v0, v0, Lhi;->f:Ljava/lang/String;

    iput-object v0, v4, Lhk;->j:Ljava/lang/String;

    .line 454
    iput-boolean v2, v4, Lhk;->d:Z

    .line 457
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    if-nez v0, :cond_4

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liu;->b:Ljava/util/List;

    .line 460
    :cond_4
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 435
    goto/16 :goto_0

    .line 462
    :cond_6
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_7

    .line 463
    iget-boolean v0, p0, Liu;->c:Z

    if-nez v0, :cond_8

    .line 464
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 467
    :cond_7
    :goto_2
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :goto_3
    iget-object v0, p0, Liu;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 472
    iput-object v6, p0, Liu;->a:Lhf;

    .line 473
    iput-object v6, p0, Liu;->a:Ljava/util/ArrayList;

    .line 474
    return-void

    .line 465
    :cond_8
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    goto :goto_2

    .line 469
    :cond_9
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Liu;->a:Lgw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Liu;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 478
    iget-boolean v0, p0, Liu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Liu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 480
    iput-object v3, p0, Liu;->a:Ljava/util/List;

    .line 481
    iput-boolean v2, p0, Liu;->d:Z

    .line 483
    :cond_0
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liu;->a:Ljava/util/List;

    .line 486
    :cond_1
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    iget-object v1, p0, Liu;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 488
    iput-object v3, p0, Liu;->b:Ljava/util/List;

    .line 489
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 491
    :cond_2
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Liu;->b:Lhf;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lhf;

    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Liu;->b:Lhf;

    .line 496
    :cond_0
    iget-object v0, p0, Liu;->b:Lhf;

    invoke-virtual {v0}, Lhf;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-direct {p0, v0}, Liu;->a(Ljava/util/ArrayList;)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Liu;->e:Z

    .line 501
    :cond_1
    iget-object v0, p0, Liu;->b:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Liu;->b:Lhf;

    .line 504
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Liu;->a:Ljava/util/List;

    .line 511
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Liu;->a:I

    .line 512
    return-void
.end method

.method private q()V
    .locals 7

    .prologue
    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 515
    iget-object v2, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v2, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 520
    new-instance v2, Lamy;

    iget-object v3, p0, Liu;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Liu;->a:Lamy;

    .line 521
    iget-object v2, p0, Liu;->a:Lamy;

    invoke-virtual {v2, p0}, Lamy;->b(Lalv;)V

    .line 522
    iget-object v4, p0, Liu;->a:Lamy;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Liu;->b:Lsg;

    .line 523
    iget-object v0, p0, Liu;->a:Lamy;

    iget-object v1, p0, Liu;->b:Lsg;

    invoke-virtual {v0, v1}, Lamy;->c(Lsg;)V

    .line 524
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Liu;->b:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 525
    if-lez v0, :cond_0

    .line 526
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Liu;->b:Lsg;

    .line 533
    iget-object v0, p0, Liu;->b:Lsg;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Liu;->b:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamy;

    iput-object v0, p0, Liu;->a:Lamy;

    .line 535
    iget-object v0, p0, Liu;->b:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 536
    iget-object v0, p0, Liu;->b:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 642
    const-string v0, "================================onLoad============================="

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->a()V

    .line 645
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->b()V

    .line 648
    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    :cond_0
    new-instance v0, Lja;

    invoke-direct {v0, p0}, Lja;-><init>(Liu;)V

    iput-object v0, p0, Liu;->a:Ljava/lang/Thread;

    .line 912
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 914
    :cond_1
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 992
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 994
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 995
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 996
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1}, Lcom/sogou/theme/ThemeListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 997
    iget-object v1, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v1, v0}, Lcom/sogou/theme/ThemeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 998
    invoke-static {v1}, Lhl;->a(Landroid/view/View;)V

    .line 999
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    iput-object v2, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    .line 1004
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1095
    iget-object v1, p0, Liu;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1097
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 247
    iget-object v0, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Laox;->c(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x69

    iput v0, p0, Liu;->c:I

    .line 248
    iget-object v0, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Laox;->d(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x69

    iget v1, p0, Liu;->c:I

    mul-int/2addr v0, v1

    iput v0, p0, Liu;->d:I

    .line 249
    iget-object v0, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_2

    move v1, v2

    .line 250
    :goto_0
    iget-boolean v0, p0, Liu;->b:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Liu;->c()V

    .line 251
    :cond_0
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Liu;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030068

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    .line 253
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    const v3, 0x7f0701de

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 255
    iget-object v3, p0, Liu;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-direct {p0}, Liu;->q()V

    .line 258
    :cond_1
    invoke-direct {p0, v1}, Liu;->a(Z)V

    .line 259
    iget-object v0, p0, Liu;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liu;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    iget-object v3, p0, Liu;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    iput v2, p0, Liu;->a:I

    .line 264
    iget-object v0, p0, Liu;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Liu;->c(Ljava/lang/String;)V

    .line 266
    :goto_1
    iput-boolean v1, p0, Liu;->b:Z

    .line 267
    iget-object v0, p0, Liu;->a:Landroid/widget/RelativeLayout;

    return-object v0

    .line 249
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 945
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 959
    const-string v0, "------------------MSG_SHOW_ERROR_PAGE------------------"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 947
    :pswitch_0
    const-string v0, "------------------InternetConnection.NEW_THEME_INFO"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 951
    :pswitch_1
    const-string v0, "------------------InternetConnection.NEW_THEME_KEYWORDS"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 955
    :pswitch_2
    const-string v0, "------------------InternetConnection.NO_NEW_THEME_KEYWORDS"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 972
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    iget-object v1, p0, Liu;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 973
    iget-object v1, p0, Liu;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 974
    iget-object v0, p0, Liu;->a:Lage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liu;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Liu;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 977
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    iput-object p1, p0, Liu;->b:Ljava/lang/String;

    .line 979
    iget-object v0, p0, Liu;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 981
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 982
    const/4 v0, 0x1

    iput v0, p0, Liu;->a:I

    .line 983
    iget-object v0, p0, Liu;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Liu;->c(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 985
    iget-object v1, p0, Liu;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 986
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 987
    iget-object v1, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 243
    :goto_0
    iget-boolean v3, p0, Liu;->b:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 242
    goto :goto_0

    :cond_1
    move v1, v2

    .line 243
    goto :goto_1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1108
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1109
    iget-object v1, p0, Liu;->a:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Liu;->a:Lgw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Liu;->a:Lgw;

    iget-boolean v1, v1, Lgw;->e:Z

    if-ne v1, v0, :cond_1

    .line 1110
    :cond_0
    iget-object v1, p0, Liu;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 918
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 920
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Liu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 611
    :goto_0
    iget-boolean v2, p0, Liu;->b:Z

    if-ne v2, v0, :cond_1

    .line 639
    :goto_1
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 612
    :cond_1
    iget-object v2, p0, Liu;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Liu;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 613
    :cond_2
    iput-object v3, p0, Liu;->b:Ljava/lang/String;

    .line 614
    :cond_3
    iput-boolean v0, p0, Liu;->b:Z

    .line 615
    iget-object v0, p0, Liu;->a:Lgw;

    if-eqz v0, :cond_4

    .line 616
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 617
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0, v1}, Lgw;->b(Z)V

    .line 618
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 619
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 620
    iput-object v3, p0, Liu;->a:Lgw;

    .line 622
    :cond_4
    iget-object v0, p0, Liu;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Liu;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 626
    iput-object v3, p0, Liu;->b:Landroid/view/View;

    .line 627
    iput-object v3, p0, Liu;->a:Landroid/view/View;

    .line 628
    iput-object v3, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    .line 629
    invoke-direct {p0}, Liu;->t()V

    .line 631
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->b(Ljava/util/List;)V

    .line 632
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 633
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 638
    :cond_5
    iput-object v3, p0, Liu;->a:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public d()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 1009
    :cond_0
    invoke-direct {p0}, Liu;->t()V

    .line 1011
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1012
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1017
    :cond_1
    iput-object v2, p0, Liu;->a:Ljava/lang/Thread;

    .line 1019
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Liu;->b:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 1022
    :cond_2
    iput-object v2, p0, Liu;->b:Ljava/util/List;

    .line 1024
    iget-object v0, p0, Liu;->a:Lgw;

    if-eqz v0, :cond_3

    .line 1025
    iget-object v0, p0, Liu;->a:Lgw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 1026
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 1027
    iget-object v0, p0, Liu;->a:Lgw;

    invoke-virtual {v0}, Lgw;->b()V

    .line 1029
    :cond_3
    iput-object v2, p0, Liu;->a:Lgw;

    .line 1031
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1032
    iget-object v0, p0, Liu;->a:Ljava/util/List;

    invoke-static {v0}, Lhl;->a(Ljava/util/List;)V

    .line 1034
    :cond_4
    iput-object v2, p0, Liu;->a:Ljava/util/List;

    .line 1036
    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1037
    iget-object v0, p0, Liu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1038
    iput-object v2, p0, Liu;->a:Ljava/util/ArrayList;

    .line 1041
    :cond_5
    iget-object v0, p0, Liu;->a:Lamx;

    if-eqz v0, :cond_6

    .line 1042
    iget-object v0, p0, Liu;->a:Lamx;

    invoke-virtual {v0}, Lamx;->a()V

    .line 1043
    :cond_6
    iput-object v2, p0, Liu;->a:Lamx;

    .line 1044
    iget-object v0, p0, Liu;->a:Lhf;

    if-eqz v0, :cond_7

    iget-object v0, p0, Liu;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 1045
    :cond_7
    iput-object v2, p0, Liu;->a:Lhf;

    .line 1046
    iget-object v0, p0, Liu;->a:Lamy;

    if-eqz v0, :cond_8

    .line 1047
    iget-object v0, p0, Liu;->a:Lamy;

    invoke-virtual {v0}, Lamy;->a()V

    .line 1048
    :cond_8
    iput-object v2, p0, Liu;->a:Lamy;

    .line 1049
    iget-object v0, p0, Liu;->b:Lhf;

    if-eqz v0, :cond_9

    .line 1050
    iget-object v0, p0, Liu;->b:Lhf;

    invoke-virtual {v0}, Lhf;->a()V

    .line 1051
    :cond_9
    iput-object v2, p0, Liu;->b:Lhf;

    .line 1055
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 1056
    iget-object v0, p0, Liu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1057
    iput-object v2, p0, Liu;->a:Landroid/os/Handler;

    .line 1060
    :cond_a
    iget-object v0, p0, Liu;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Liu;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1066
    iput-object v2, p0, Liu;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 1067
    sput-object v2, Liu;->a:Liu;

    .line 1068
    iput-object v2, p0, Liu;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 1069
    iput-object v2, p0, Liu;->a:Landroid/view/View$OnTouchListener;

    .line 1070
    iput-object v2, p0, Liu;->a:Lcom/sogou/theme/ThemeListView;

    .line 1071
    iput-object v2, p0, Liu;->a:Landroid/view/LayoutInflater;

    .line 1072
    iput-object v2, p0, Liu;->a:Landroid/view/View;

    .line 1073
    iput-object v2, p0, Liu;->b:Landroid/view/View;

    .line 1074
    iput-object v2, p0, Liu;->a:Lcom/sogou/theme/ThemeSearchDefaultView;

    .line 1075
    iput-object v2, p0, Liu;->a:Lsg;

    .line 1076
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Liu;->d(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Liu;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1085
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Liu;->a:Ljava/lang/Thread;

    .line 1086
    iget-object v0, p0, Liu;->a:Lage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liu;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Liu;->a:Lage;

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 1089
    :cond_1
    invoke-direct {p0}, Liu;->u()V

    .line 1090
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 1101
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 1104
    invoke-static {}, Laox;->a()V

    .line 1105
    return-void
.end method
