.class public final Lhr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lhr;

.field public static a:Ljava/lang/String;

.field private static final a:[J

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/os/Vibrator;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

.field private a:Lhf;

.field private a:Lhh;

.field private a:Lhk;

.field private a:Lif;

.field private a:Lih;

.field private a:Ljava/io/FilenameFilter;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/List;

.field private a:Lrr;

.field private final a:Z

.field private b:I

.field private b:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Ljava/io/FilenameFilter;

.field private b:Ljava/lang/Thread;

.field private b:Ljava/util/ArrayList;

.field private b:Z

.field private c:I

.field private c:Ljava/util/ArrayList;

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private f:Z

.field private g:I

.field private g:Z

.field private h:I

.field private h:Z

.field private i:I

.field private i:Z

.field private j:I

.field private j:Z

.field private k:I

.field private final p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lhr;->a:Lhr;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lhr;->a:[J

    .line 158
    const-string v0, "UI"

    sput-object v0, Lhr;->a:Ljava/lang/String;

    .line 159
    const-string v0, "targetpath"

    sput-object v0, Lhr;->b:Ljava/lang/String;

    .line 160
    const-string v0, "resolution"

    sput-object v0, Lhr;->c:Ljava/lang/String;

    .line 161
    const-string v0, "assets"

    sput-object v0, Lhr;->d:Ljava/lang/String;

    .line 162
    const-string v0, "index"

    sput-object v0, Lhr;->e:Ljava/lang/String;

    .line 163
    const-string v0, "result"

    sput-object v0, Lhr;->f:Ljava/lang/String;

    .line 164
    const-string v0, "result_detail"

    sput-object v0, Lhr;->g:Ljava/lang/String;

    .line 165
    const-string v0, "install"

    sput-object v0, Lhr;->h:Ljava/lang/String;

    .line 166
    const-string v0, "result_switch"

    sput-object v0, Lhr;->i:Ljava/lang/String;

    .line 167
    const-string v0, "android_pc_theme"

    sput-object v0, Lhr;->j:Ljava/lang/String;

    .line 168
    const-string v0, "ISDIMCODETHEMEMSG"

    sput-object v0, Lhr;->k:Ljava/lang/String;

    .line 169
    const-string v0, "dimCodeThemeFileName"

    sput-object v0, Lhr;->l:Ljava/lang/String;

    .line 170
    const-string v0, "dimCodeDownloadURL"

    sput-object v0, Lhr;->m:Ljava/lang/String;

    .line 171
    const-string v0, "isBackgroundMode"

    sput-object v0, Lhr;->n:Ljava/lang/String;

    .line 172
    const-string v0, "startRecommendTheme"

    sput-object v0, Lhr;->o:Ljava/lang/String;

    return-void

    .line 149
    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "ThemeLocalListTab"

    iput-object v0, p0, Lhr;->p:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lhr;->a:Z

    .line 84
    iput-object v3, p0, Lhr;->a:Landroid/content/Context;

    .line 85
    iput-object v3, p0, Lhr;->b:Landroid/content/Context;

    .line 86
    iput-object v3, p0, Lhr;->a:Landroid/view/LayoutInflater;

    .line 91
    iput-object v3, p0, Lhr;->a:Ljava/util/ArrayList;

    .line 92
    iput-object v3, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 93
    iput-object v3, p0, Lhr;->a:Ljava/util/List;

    .line 95
    iput-object v3, p0, Lhr;->a:Lih;

    .line 96
    iput-object v3, p0, Lhr;->a:Landroid/widget/LinearLayout;

    .line 97
    iput-object v3, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    .line 98
    iput-object v3, p0, Lhr;->b:Landroid/widget/RelativeLayout;

    .line 99
    iput-object v3, p0, Lhr;->a:Landroid/widget/ListView;

    .line 100
    iput-object v3, p0, Lhr;->a:Landroid/view/View;

    .line 101
    iput-object v3, p0, Lhr;->c:Ljava/util/ArrayList;

    .line 102
    iput-object v3, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    .line 103
    iput-object v3, p0, Lhr;->q:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lhr;->a:Lhk;

    .line 117
    iput-boolean v1, p0, Lhr;->c:Z

    .line 122
    iput v2, p0, Lhr;->a:I

    .line 124
    iput v2, p0, Lhr;->c:I

    .line 128
    iput-boolean v1, p0, Lhr;->d:Z

    .line 130
    iput-boolean v1, p0, Lhr;->e:Z

    .line 134
    iput-boolean v1, p0, Lhr;->g:Z

    .line 139
    iput-boolean v1, p0, Lhr;->i:Z

    .line 140
    iput-boolean v1, p0, Lhr;->j:Z

    .line 143
    const/16 v0, 0x12

    iput v0, p0, Lhr;->i:I

    .line 145
    iput v2, p0, Lhr;->j:I

    .line 146
    iput v2, p0, Lhr;->k:I

    .line 192
    iput-object v3, p0, Lhr;->a:Landroid/os/Handler;

    .line 193
    iput-object v3, p0, Lhr;->b:Landroid/os/Handler;

    .line 532
    new-instance v0, Lhw;

    invoke-direct {v0, p0}, Lhw;-><init>(Lhr;)V

    iput-object v0, p0, Lhr;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 572
    new-instance v0, Lhe;

    iget-object v1, p0, Lhr;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1}, Lhe;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lhr;->a:Landroid/view/View$OnTouchListener;

    .line 1363
    new-instance v0, Lht;

    invoke-direct {v0, p0}, Lht;-><init>(Lhr;)V

    iput-object v0, p0, Lhr;->a:Ljava/io/FilenameFilter;

    .line 1372
    new-instance v0, Lhu;

    invoke-direct {v0, p0}, Lhu;-><init>(Lhr;)V

    iput-object v0, p0, Lhr;->b:Ljava/io/FilenameFilter;

    .line 312
    iput-object p1, p0, Lhr;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 313
    iput-object p1, p0, Lhr;->b:Landroid/content/Context;

    .line 314
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhr;->a:Landroid/content/Context;

    .line 315
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lhr;->a:Landroid/view/LayoutInflater;

    .line 317
    iput-object p3, p0, Lhr;->b:Landroid/os/Handler;

    .line 319
    new-instance v0, Lig;

    iget-object v1, p0, Lhr;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Lig;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lhr;->a:Landroid/os/Handler;

    .line 321
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/sga/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 326
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    .line 327
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    .line 328
    iget-object v0, p0, Lhr;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhr;->u:Ljava/lang/String;

    .line 332
    :cond_1
    new-instance v0, Lrr;

    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhr;->a:Lrr;

    .line 334
    sput-object p0, Lhr;->a:Lhr;

    .line 336
    invoke-direct {p0}, Lhr;->q()V

    .line 338
    sget-object v0, Laox;->g:Ljava/lang/String;

    sget-object v1, Laox;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lavu;->a(Ljava/lang/String;Ljava/lang/String;)Lavs;

    .line 340
    invoke-direct {p0}, Lhr;->t()V

    .line 341
    new-instance v0, Lif;

    const-string v1, "/sdcard/sogou/sga/"

    invoke-direct {v0, p0, v1, v3}, Lif;-><init>(Lhr;Ljava/lang/String;Lhs;)V

    iput-object v0, p0, Lhr;->a:Lif;

    .line 342
    iget-object v0, p0, Lhr;->a:Lif;

    invoke-virtual {v0}, Lif;->startWatching()V

    .line 343
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-direct {p0}, Lhr;->u()V

    .line 346
    :cond_2
    return-void
.end method

.method static synthetic a(Lhr;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lhr;->k:I

    return v0
.end method

.method static synthetic a(Lhr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lhr;->e:I

    return p1
.end method

.method static synthetic a(Lhr;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lhr;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhr;->a:Landroid/widget/LinearLayout;

    .line 379
    iget-object v0, p0, Lhr;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhr;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lhr;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lhr;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lhr;)Lhh;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Lhh;

    return-object v0
.end method

.method static synthetic a(Lhr;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Lhk;

    return-object v0
.end method

.method static synthetic a(Lhr;Ljava/lang/String;)Lhk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhr;->a(Ljava/lang/String;)Lhk;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Lhr;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lhr;->a:Lhr;

    return-object v0
.end method

.method static synthetic a(Lhr;)Lih;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Lih;

    return-object v0
.end method

.method static synthetic a(Lhr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lhr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lhr;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lhr;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1394
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    invoke-virtual {v1, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 1398
    if-nez v2, :cond_1

    .line 1404
    :cond_0
    return-object v0

    .line 1399
    :cond_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1400
    new-instance v5, Lie;

    invoke-direct {v5, p0, v4, p1}, Lie;-><init>(Lhr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lhr;)Lrr;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Lrr;

    return-object v0
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 433
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 434
    iget-boolean v1, p0, Lhr;->b:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lhr;->i:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhr;->a:Lhh;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    move v4, v3

    .line 435
    :goto_1
    sub-int v0, v5, v1

    add-int/lit8 v0, v0, 0x1

    if-ge v4, v0, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lt v4, v0, :cond_1

    .line 469
    :cond_0
    invoke-direct {p0}, Lhr;->j()V

    .line 470
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 439
    if-eqz v0, :cond_5

    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 442
    invoke-virtual {v0}, Ljq;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {v0}, Ljq;->a()Lhk;

    move-result-object v7

    .line 444
    iget-boolean v8, v7, Lhk;->b:Z

    if-eqz v8, :cond_3

    .line 445
    iget-object v8, v0, Ljq;->b:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget v8, v7, Lhk;->c:I

    iput v8, p0, Lhr;->c:I

    .line 447
    iget v8, v7, Lhk;->b:I

    iput v8, p0, Lhr;->d:I

    .line 449
    :goto_3
    iget-boolean v8, p0, Lhr;->c:Z

    if-eqz v8, :cond_4

    iget-boolean v8, v7, Lhk;->b:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lhk;->d:Z

    if-nez v8, :cond_4

    iget-object v8, v7, Lhk;->b:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 451
    iget-object v8, v0, Ljq;->d:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v8, v0, Ljq;->d:Landroid/widget/ImageView;

    iget v9, v7, Lhk;->c:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 453
    iget-object v8, v0, Ljq;->d:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v8, v0, Ljq;->d:Landroid/widget/ImageView;

    iget-object v9, p0, Lhr;->a:Lih;

    iget-object v9, v9, Lih;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :goto_4
    iget-object v8, v0, Ljq;->a:Landroid/widget/ImageView;

    iget v9, v7, Lhk;->c:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 457
    iget-object v8, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v8, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v9, p0, Lhr;->a:Lih;

    iget-object v9, v9, Lih;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v8, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 460
    iget-object v8, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v9, p0, Lhr;->a:Lih;

    iget-object v9, v9, Lih;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 461
    invoke-direct {p0, v0, v7}, Lhr;->a(Ljq;Lhk;)V

    .line 464
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 448
    :cond_3
    iget-object v8, v0, Ljq;->b:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 455
    :cond_4
    iget-object v8, v0, Ljq;->d:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 435
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_6
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->r()V

    return-void
.end method

.method static synthetic a(Lhr;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhr;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Lhr;Lhk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhr;->b(Lhk;)V

    return-void
.end method

.method static synthetic a(Lhr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhr;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lhr;Ljq;Lhk;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lhr;->a(Ljq;Lhk;)V

    return-void
.end method

.method private a(Ljq;)V
    .locals 3
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    .line 490
    :cond_0
    invoke-virtual {p1}, Ljq;->a()Lhk;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    .line 492
    iget-object v1, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v2, v0, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_1
    return-void
.end method

.method private a(Ljq;Lhk;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 514
    :try_start_0
    new-instance v2, Lhn;

    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    invoke-direct {v2, v1, p1}, Lhn;-><init>(Landroid/content/Context;Ljq;)V

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p2, Lhk;->f:Z

    .line 516
    instance-of v1, p2, Lhm;

    if-eqz v1, :cond_0

    .line 517
    move-object v0, p2

    check-cast v0, Lhm;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lhm;->a(Lhn;)V

    .line 518
    invoke-virtual {p1, p2}, Ljq;->a(Lhk;)V

    .line 524
    :goto_0
    invoke-direct {p0, p1}, Lhr;->a(Ljq;)V

    .line 525
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lhn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 530
    :goto_1
    return-void

    .line 520
    :cond_0
    new-instance v1, Lhm;

    invoke-direct {v1, v2, p2}, Lhm;-><init>(Lhn;Lhk;)V

    .line 522
    invoke-virtual {p1, v1}, Ljq;->a(Lhk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 1025
    const-string v0, ""

    .line 1026
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1027
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1028
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1029
    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1030
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1040
    :cond_0
    :goto_0
    const-string v3, "/sdcard/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1041
    if-ne v3, v6, :cond_1

    const-string v3, "/mnt/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1042
    :cond_1
    if-ne v3, v6, :cond_2

    const-string v3, "/storage/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1044
    :cond_2
    if-eq v3, v6, :cond_4

    .line 1045
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1100
    :goto_1
    return v0

    .line 1031
    :cond_3
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1032
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1047
    goto :goto_1

    .line 1057
    :cond_5
    iget-object v3, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1058
    iget-object v3, p0, Lhr;->a:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1060
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ".ssf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_8

    .line 1061
    invoke-direct {p0, v0}, Lhr;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    goto :goto_1

    .line 1063
    :cond_6
    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhr;->t:Ljava/lang/String;

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/sogou/sga/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lhr;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1078
    iget-object v1, p0, Lhr;->b:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 1079
    iget-object v1, p0, Lhr;->b:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1082
    :cond_7
    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v3, ".ssf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1084
    iput-object v0, p0, Lhr;->v:Ljava/lang/String;

    .line 1089
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    sget-object v1, Lhr;->b:Ljava/lang/String;

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    sget-object v1, Lhr;->c:Ljava/lang/String;

    sget-object v3, Laox;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lhr;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".ssf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lhr;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    sget-object v1, Lhr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    const-string v1, "      send broad cast intent"

    invoke-direct {p0, v1}, Lhr;->c(Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v2

    .line 1098
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 1100
    goto/16 :goto_1
.end method

.method static synthetic a(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->g:Z

    return v0
.end method

.method static synthetic a(Lhr;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lhr;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    .line 751
    :cond_0
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 768
    :goto_0
    return v0

    .line 754
    :cond_1
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    move v0, v1

    .line 756
    goto :goto_0

    .line 757
    :cond_4
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android_internal_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android_internal_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 759
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 760
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 761
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 763
    goto :goto_0

    .line 767
    :cond_5
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b(Lhr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lhr;->f:I

    return p1
.end method

.method static synthetic b(Lhr;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lhr;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[THEME_ITEM_ADVERTISEMENT_VALUE] adName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lhr;->a:Lhh;

    iget-object v2, v2, Lhh;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  picurl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lhr;->a:Lhh;

    iget-object v2, v2, Lhh;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   adurl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lhr;->a:Lhh;

    iget-object v2, v2, Lhh;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lhr;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03005d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    .line 387
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 400
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701e3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhr;->a:Lhh;

    iget-object v2, v2, Lhh;->c:Ljava/lang/String;

    iget-object v3, p0, Lhr;->a:Lhh;

    iget-object v3, v3, Lhh;->c:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhr;->q:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lhr;->q:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhr;->b(Ljava/lang/String;)V

    .line 391
    :cond_1
    new-instance v1, Lhs;

    invoke-direct {v1, p0}, Lhs;-><init>(Lhr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method static synthetic b(Lhr;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lhr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lhr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lhr;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lhk;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 773
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lhk;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 779
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 782
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 784
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 785
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->h:Ljava/lang/String;

    .line 786
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_5

    .line 788
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 789
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 790
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 791
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 792
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2, v4, v5}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 793
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 794
    if-eqz v2, :cond_6

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 810
    :goto_0
    if-nez v0, :cond_3

    .line 811
    const-string v2, "skin.ini"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 812
    const-string v4, "/sdcard/sogou/sga/tmp.ini"

    .line 813
    if-eqz v2, :cond_2

    .line 814
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 815
    invoke-static {v5}, Lavi;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 816
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 817
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 818
    const/4 v5, 0x0

    invoke-static {v2, v6, v4, v5}, Lavi;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 821
    new-instance v2, Layx;

    invoke-direct {v2, v4}, Layx;-><init>(Ljava/lang/String;)V

    .line 822
    if-nez v0, :cond_0

    .line 823
    const-string v5, "General"

    const-string v6, "preview_comp"

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 824
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 825
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 826
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 827
    if-eqz v5, :cond_7

    .line 828
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 829
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 830
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 831
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 832
    sget v0, Laox;->a:I

    div-int/lit8 v0, v0, 0x4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v0, v6, v7}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 833
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 834
    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    .line 851
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 852
    const-string v5, "Scheme_H1"

    const-string v6, "pic"

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 853
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 854
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 855
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 856
    if-eqz v5, :cond_8

    .line 857
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 858
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 859
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 860
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 861
    sget v0, Laox;->a:I

    div-int/lit8 v0, v0, 0x4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v0, v6, v7}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 862
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 863
    if-eqz v0, :cond_1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    .line 880
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 881
    const-string v0, "Scheme_H2"

    const-string v5, "pinyin_pic"

    const/4 v6, 0x0

    invoke-static {v2, v0, v5, v6}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->h:Ljava/lang/String;

    .line 882
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 883
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->h:Ljava/lang/String;

    .line 884
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_9

    .line 886
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 887
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 888
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 889
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 890
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2, v5, v3}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 891
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 892
    if-eqz v2, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    .line 911
    :cond_2
    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 922
    :cond_3
    :goto_4
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 926
    :cond_4
    return-void

    .line 796
    :cond_5
    :try_start_2
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->h:Ljava/lang/String;

    .line 798
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_a

    .line 800
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 801
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 802
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 803
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 804
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2, v4, v5}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 805
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 806
    if-eqz v2, :cond_6

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    .line 836
    :cond_7
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lhk;->h:Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lhk;->h:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 838
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 839
    if-eqz v5, :cond_0

    .line 840
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 841
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 842
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 843
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 844
    sget v0, Laox;->a:I

    div-int/lit8 v0, v0, 0x4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v0, v6, v7}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 845
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 846
    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 916
    :catch_0
    move-exception v0

    .line 918
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 920
    :catchall_0
    move-exception v0

    .line 922
    :goto_6
    invoke-static {v1}, Lazd;->a(Ljava/util/zip/ZipFile;)V

    .line 920
    throw v0

    .line 865
    :cond_8
    :try_start_4
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 866
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lhk;->h:Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lhk;->h:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lhk;->h:Ljava/lang/String;

    .line 867
    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 868
    if-eqz v5, :cond_1

    .line 869
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 870
    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 871
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 872
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 873
    sget v0, Laox;->a:I

    div-int/lit8 v0, v0, 0x4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v0, v6, v7}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 874
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 875
    if-eqz v0, :cond_1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 894
    :cond_9
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lhk;->h:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->h:Ljava/lang/String;

    .line 896
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_2

    .line 898
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 899
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 900
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 901
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 902
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2, v5, v3}, Lays;->a(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 903
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 904
    if-eqz v2, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 920
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    .line 916
    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :cond_a
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->l()V

    return-void
.end method

.method static synthetic b(Lhr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhr;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701e3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 406
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 409
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 410
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    .line 411
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 415
    iget-object v1, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lhr;->g:I

    .line 610
    iput v0, p0, Lhr;->h:I

    .line 611
    iput v0, p0, Lhr;->j:I

    .line 612
    iput-object v4, p0, Lhr;->c:Ljava/util/ArrayList;

    .line 614
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 615
    const/16 v3, 0x8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 616
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 617
    iget-object v3, p0, Lhr;->a:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 636
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    iget-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    :cond_1
    iput-object v4, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 625
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    :cond_2
    iput-object v4, p0, Lhr;->a:Ljava/util/List;

    .line 629
    invoke-direct {p0}, Lhr;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    invoke-direct {p0}, Lhr;->e()Z

    move-result v0

    iput-boolean v0, p0, Lhr;->i:Z

    .line 633
    :cond_3
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    invoke-virtual {v0}, Lavs;->a()V

    .line 634
    invoke-direct {p0}, Lhr;->c()Z

    .line 635
    invoke-direct {p0}, Lhr;->n()V

    move v0, v1

    .line 636
    goto :goto_0
.end method

.method static synthetic b(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->f:Z

    return v0
.end method

.method static synthetic b(Lhr;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lhr;->g:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 1007
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lhr;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1010
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/sga/tmp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1015
    :cond_1
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lhr;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1020
    return v0
.end method

.method static synthetic c(Lhr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lhr;->c:I

    return p1
.end method

.method static synthetic c(Lhr;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lhr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lhr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lhr;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->o()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1929
    return-void
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 641
    sget-object v0, Laox;->f:Ljava/lang/String;

    iget-object v1, p0, Lhr;->b:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0, v1}, Lhr;->a(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lie;

    .line 642
    iget-object v0, v0, Lie;->a:Ljava/lang/String;

    .line 644
    const-string v2, "sogou_custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lhr;->a:Lhk;

    if-nez v2, :cond_1

    .line 646
    new-instance v2, Lhk;

    invoke-direct {v2}, Lhk;-><init>()V

    iput-object v2, p0, Lhr;->a:Lhk;

    .line 647
    iget-object v2, p0, Lhr;->a:Lhk;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhk;->d:Ljava/lang/String;

    .line 648
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lavs;->a(Ljava/lang/String;)Lavz;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_1

    .line 650
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhk;->a:Ljava/lang/String;

    .line 651
    iget-object v2, p0, Lhr;->a:Lhk;

    const-string v3, ""

    iput-object v3, v2, Lhk;->b:Ljava/lang/String;

    .line 652
    iget-object v2, p0, Lhr;->a:Lhk;

    const-string v3, ""

    iput-object v3, v2, Lhk;->c:Ljava/lang/String;

    .line 653
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhk;->e:Ljava/lang/String;

    .line 654
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhk;->f:Ljava/lang/String;

    .line 655
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->a()I

    move-result v3

    iput v3, v2, Lhk;->a:I

    .line 656
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhk;->g:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->a()Z

    move-result v3

    iput-boolean v3, v2, Lhk;->c:Z

    .line 658
    iget-object v2, p0, Lhr;->a:Lhk;

    invoke-virtual {v0}, Lavz;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhk;->h:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lhr;->a:Lhk;

    iget-object v2, p0, Lhr;->b:Landroid/content/Context;

    const v3, 0x7f0b00e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhk;->i:Ljava/lang/String;

    .line 664
    :cond_1
    iget-object v0, p0, Lhr;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhr;->a:Lhk;

    iput-boolean v5, v0, Lhk;->b:Z

    .line 665
    :cond_2
    iget-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 668
    :cond_3
    iget-object v0, p0, Lhr;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lhr;->a:Lhk;

    iget-object v2, v2, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    iget v0, p0, Lhr;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->j:I

    .line 670
    iget v0, p0, Lhr;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->g:I

    .line 671
    iget v0, p0, Lhr;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->h:I

    goto/16 :goto_0

    .line 674
    :cond_4
    return v5
.end method

.method static synthetic c(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->e:Z

    return v0
.end method

.method static synthetic d(Lhr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lhr;->d:I

    return p1
.end method

.method static synthetic d(Lhr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->p()V

    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->J()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lhr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lhr;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->m()V

    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lhr;->a:Lhf;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Lhf;

    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhr;->a:Lhf;

    .line 744
    :cond_0
    iget-object v0, p0, Lhr;->a:Lhh;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhr;->a:Lhf;

    invoke-virtual {v0}, Lhf;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lhr;->a:Lhh;

    .line 745
    :cond_1
    iget-object v0, p0, Lhr;->a:Lhh;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 746
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->h:Z

    return v0
.end method

.method static synthetic f(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->n()V

    return-void
.end method

.method static synthetic f(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->i:Z

    return v0
.end method

.method static synthetic g(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lhr;->k()V

    return-void
.end method

.method static synthetic g(Lhr;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lhr;->c:Z

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lhr;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lhr;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lhr;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-static {v0}, Lhl;->a(Lhk;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lhr;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lhr;->s:Ljava/lang/String;

    .line 484
    :cond_2
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 504
    iget-boolean v0, p0, Lhr;->d:Z

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lhr;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    iput-object v0, p0, Lhr;->u:Ljava/lang/String;

    .line 509
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhr;->d:Z

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhr;->e:Z

    .line 576
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhx;

    invoke-direct {v1, p0}, Lhx;-><init>(Lhr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 590
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 593
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhy;

    invoke-direct {v1, p0}, Lhy;-><init>(Lhr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    .line 604
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 606
    :cond_0
    return-void
.end method

.method private n()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    if-nez v0, :cond_2

    .line 679
    new-array v1, v10, [Ljava/lang/String;

    const-string v0, "/sdcard/sogou/sga/"

    aput-object v0, v1, v2

    sget-object v0, Laox;->h:Ljava/lang/String;

    aput-object v0, v1, v7

    const-string v0, "/sdcard/UCDownloads/"

    aput-object v0, v1, v8

    const-string v0, "/sdcard/download/"

    aput-object v0, v1, v9

    const/4 v0, 0x4

    const-string v3, "/sdcard/"

    aput-object v3, v1, v0

    const/4 v0, 0x5

    const-string v3, "/storage/sdcard0/Download/"

    aput-object v3, v1, v0

    const/4 v0, 0x6

    const-string v3, "/storage/extSdCard/sogou/sga/"

    aput-object v3, v1, v0

    const/4 v0, 0x7

    const-string v3, "/storage/extSdCard/Download/"

    aput-object v3, v1, v0

    .line 689
    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 690
    iget-object v5, p0, Lhr;->a:Ljava/util/List;

    if-nez v5, :cond_0

    .line 691
    iget-object v5, p0, Lhr;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v4, v5}, Lhr;->a(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lhr;->a:Ljava/util/List;

    .line 689
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object v5, p0, Lhr;->a:Ljava/util/List;

    iget-object v6, p0, Lhr;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v4, v6}, Lhr;->a(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 694
    :cond_1
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    new-instance v1, Lil;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lil;-><init>(Lhr;Lhs;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 699
    :cond_2
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 700
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------------themeTotalSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    mNumberOfRefreshed = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lhr;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 702
    :goto_2
    iget v0, p0, Lhr;->g:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lhr;->g:I

    if-lt v0, v7, :cond_5

    .line 703
    iget-object v0, p0, Lhr;->a:Ljava/util/List;

    iget v3, p0, Lhr;->g:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lie;

    .line 704
    iget-object v3, v0, Lie;->a:Ljava/lang/String;

    .line 705
    iget-object v0, v0, Lie;->b:Ljava/lang/String;

    .line 706
    const-string v4, ".ssf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-direct {p0, v4}, Lhr;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 708
    iget-object v4, p0, Lhr;->b:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 709
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 711
    :cond_3
    iget-object v4, p0, Lhr;->b:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget v0, p0, Lhr;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->j:I

    .line 713
    iget v0, p0, Lhr;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->h:I

    .line 715
    :cond_4
    iget v0, p0, Lhr;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr;->g:I

    goto :goto_2

    :cond_5
    move v0, v1

    .line 723
    :goto_3
    iget-object v1, p0, Lhr;->a:Landroid/os/Handler;

    if-nez v1, :cond_6

    .line 732
    :goto_4
    return-void

    .line 724
    :cond_6
    iget-object v1, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 725
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 726
    iput v10, v1, Landroid/os/Message;->what:I

    .line 727
    iput v8, v1, Landroid/os/Message;->arg1:I

    .line 728
    iget-object v2, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    iget v1, p0, Lhr;->g:I

    if-ne v1, v0, :cond_7

    iput-boolean v7, p0, Lhr;->e:Z

    .line 731
    :cond_7
    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iput v0, v1, Lamo;->o:I

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 929
    iget-object v0, p0, Lhr;->r:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhr;->r:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 930
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 932
    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    iget-object v2, p0, Lhr;->r:Ljava/lang/String;

    sget-object v3, Laox;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhr;->t:Ljava/lang/String;

    .line 933
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 934
    iget-object v0, p0, Lhr;->a:Lih;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lhr;->a:Lih;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lih;->a(Z)V

    .line 936
    :cond_0
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lhr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 940
    if-eqz v0, :cond_1

    .line 941
    iput-boolean v4, v0, Lhk;->f:Z

    .line 942
    iget-object v0, v0, Lhk;->d:Ljava/lang/String;

    iput-object v0, p0, Lhr;->s:Ljava/lang/String;

    .line 945
    :cond_1
    iget v0, p0, Lhr;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhr;->h:I

    .line 946
    iget v0, p0, Lhr;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhr;->g:I

    .line 948
    :cond_2
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lhr;->a:Lih;

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0, v4}, Lih;->a(Z)V

    .line 951
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 953
    :cond_3
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 955
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lhr;->r:Ljava/lang/String;

    .line 957
    :cond_5
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 960
    iget-boolean v0, p0, Lhr;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lhr;->c:Z

    .line 961
    iput-boolean v1, p0, Lhr;->g:Z

    .line 962
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lhr;->a:Lih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 964
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 965
    invoke-direct {p0}, Lhr;->w()V

    .line 966
    return-void

    :cond_1
    move v0, v1

    .line 960
    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    .line 969
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    .line 970
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 971
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    const v2, 0x7f0b02ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 972
    new-instance v0, Lhz;

    invoke-direct {v0, p0}, Lhz;-><init>(Lhr;)V

    .line 987
    iget-object v1, p0, Lhr;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lhr;->b:Landroid/content/Context;

    const v4, 0x7f0b029b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 989
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lhr;->b:Landroid/content/Context;

    const v3, 0x7f0b029c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lia;

    invoke-direct {v3, p0}, Lia;-><init>(Lhr;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 995
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    new-instance v1, Lib;

    invoke-direct {v1, p0}, Lib;-><init>(Lhr;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1004
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1172
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1173
    const/4 v1, 0x0

    .line 1174
    iget v0, p0, Lhr;->a:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lhr;->b:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lhr;->a:I

    iget-object v3, p0, Lhr;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1175
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    iget v3, p0, Lhr;->a:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1176
    iget-object v3, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1177
    iget-object v3, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    iput-boolean v2, v0, Lhk;->b:Z

    .line 1180
    iget-object v0, v0, Lhk;->a:Ljava/lang/String;

    iput-object v0, p0, Lhr;->w:Ljava/lang/String;

    move v1, v2

    .line 1185
    :cond_0
    iget v0, p0, Lhr;->c:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lhr;->d:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lhr;->c:I

    iget-object v3, p0, Lhr;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1186
    iget-object v0, p0, Lhr;->a:Ljava/util/ArrayList;

    iget v3, p0, Lhr;->c:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1187
    iget-object v3, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    iget-object v3, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 1189
    if-eqz v0, :cond_1

    .line 1190
    iput-boolean v2, v0, Lhk;->b:Z

    move v1, v2

    .line 1195
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1198
    :cond_2
    iget v0, p0, Lhr;->a:I

    iput v0, p0, Lhr;->c:I

    .line 1199
    iget v0, p0, Lhr;->b:I

    iput v0, p0, Lhr;->d:I

    .line 1200
    iput v4, p0, Lhr;->a:I

    .line 1201
    iput v4, p0, Lhr;->b:I

    .line 1202
    invoke-virtual {p0}, Lhr;->a()V

    .line 1203
    iget-object v0, p0, Lhr;->b:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1204
    iget-object v0, p0, Lhr;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1206
    :cond_3
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    const v4, 0x7f0b0076

    const v2, 0x7f0b006e

    const/4 v3, 0x1

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------[[resetThemeSelect]], mCurrentInstallThemeName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhr;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lhr;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lhr;->v:Ljava/lang/String;

    iput-object v1, v0, Lamo;->h:Ljava/lang/String;

    .line 1227
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cB:I

    .line 1228
    iget-object v0, p0, Lhr;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eX:I

    .line 1230
    :cond_1
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    iget-object v1, p0, Lhr;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1231
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    iget-object v1, p0, Lhr;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lavs;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1232
    if-nez v0, :cond_2

    .line 1233
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->j()V

    .line 1234
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->A(Z)V

    .line 1235
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1239
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1240
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1251
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lhr;->v:Ljava/lang/String;

    .line 1252
    return-void

    .line 1242
    :cond_2
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->k()V

    .line 1243
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhr;->v:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1248
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1249
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1258
    iget-object v0, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Lic;

    invoke-direct {v0, p0}, Lic;-><init>(Lhr;)V

    iput-object v0, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    .line 1272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1273
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1274
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1275
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    iget-object v2, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1278
    :cond_0
    return-void
.end method

.method private u()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1305
    iput-boolean v8, p0, Lhr;->h:Z

    .line 1306
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->Q(Z)V

    .line 1307
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/sogou/sga/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v8, :cond_0

    .line 1310
    new-instance v2, Lid;

    invoke-direct {v2, p0}, Lid;-><init>(Lhr;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 1324
    if-nez v2, :cond_1

    .line 1345
    :goto_0
    return-void

    .line 1320
    :cond_0
    const-string v0, "ssf scan dir is not exist ......"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1329
    :cond_2
    :try_start_0
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1330
    array-length v4, v2

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 1331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>> asset contain ssf : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lhr;->c(Ljava/lang/String;)V

    .line 1332
    const-string v6, ".ssf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >>>>> unzip a ssf file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sdcard/sogou/sga/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lhr;->c(Ljava/lang/String;)V

    .line 1336
    iget-object v6, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 1337
    const-string v7, "/sdcard/sogou/sga/"

    invoke-static {v6, v7, v5}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1338
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1344
    :cond_4
    iput-boolean v1, p0, Lhr;->h:Z

    goto/16 :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1854
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1856
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1857
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1858
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1859
    iget-object v1, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1860
    invoke-static {v1}, Lhl;->a(Landroid/view/View;)V

    .line 1861
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 1858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1865
    :cond_0
    iput-object v2, p0, Lhr;->a:Landroid/widget/ListView;

    .line 1866
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1917
    iget-object v0, p0, Lhr;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lhr;->a:Landroid/os/Vibrator;

    .line 1920
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/os/Vibrator;

    sget-object v1, Lhr;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1921
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v0, 0x1

    .line 349
    iget-boolean v1, p0, Lhr;->j:Z

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->eY:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->eY:I

    .line 351
    iput-boolean v0, p0, Lhr;->j:Z

    .line 353
    :cond_0
    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-static {v1}, Laox;->c(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x69

    iput v1, p0, Lhr;->k:I

    .line 354
    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-static {v1}, Laox;->d(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x69

    iget v2, p0, Lhr;->k:I

    mul-int/2addr v1, v2

    iput v1, p0, Lhr;->i:I

    .line 355
    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_4

    move v1, v0

    .line 356
    :goto_0
    iget-boolean v2, p0, Lhr;->b:Z

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lhr;->c()V

    .line 357
    :cond_1
    iget-object v2, p0, Lhr;->a:Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 358
    iget-object v2, p0, Lhr;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030061

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    .line 359
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    const v2, 0x7f0701de

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 361
    iget-object v2, p0, Lhr;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 363
    new-instance v0, Lih;

    iget-object v2, p0, Lhr;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget v3, p0, Lhr;->k:I

    invoke-direct {v0, p0, v2, v1, v3}, Lih;-><init>(Lhr;Landroid/content/Context;ZI)V

    iput-object v0, p0, Lhr;->a:Lih;

    .line 364
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lhr;->a:Lih;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lhr;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 366
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lhr;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    if-nez p1, :cond_2

    .line 368
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    :cond_2
    iput-boolean v1, p0, Lhr;->b:Z

    .line 373
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lhr;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    :cond_3
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    return-object v0

    .line 355
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1209
    invoke-direct {p0}, Lhr;->s()V

    .line 1210
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v1}, Laxc;->a(Z)V

    .line 1211
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    .line 1218
    :goto_0
    iput-boolean v1, p0, Lhr;->d:Z

    .line 1219
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v1}, Laxc;->b(Z)V

    .line 1215
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->a()V

    .line 1216
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0, v2}, Laxc;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1157
    sget-object v0, Lhr;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1158
    sget-object v1, Lhr;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1159
    sget-object v2, Lhr;->g:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1160
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1161
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1162
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 1163
    if-ne v0, v4, :cond_0

    .line 1164
    iput v4, v3, Landroid/os/Message;->what:I

    .line 1168
    :goto_0
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    return-void

    .line 1166
    :cond_0
    const/4 v0, 0x2

    iput v0, v3, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public a(Lhk;)V
    .locals 2
    .parameter

    .prologue
    .line 1104
    const-string v0, "======================startTheme"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lhr;->u:Ljava/lang/String;

    iget-object v1, p1, Lhk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lhr;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lhr;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1111
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1112
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1113
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1114
    iget-object v1, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lhk;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1120
    iget-object v0, p1, Lhk;->d:Ljava/lang/String;

    .line 1121
    if-nez v0, :cond_0

    iget-object v1, p0, Lhr;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lhr;->u:Ljava/lang/String;

    .line 1125
    iget v0, p1, Lhk;->c:I

    iput v0, p0, Lhr;->a:I

    .line 1126
    iget v0, p1, Lhk;->b:I

    iput v0, p0, Lhr;->b:I

    .line 1127
    invoke-direct {p0}, Lhr;->r()V

    .line 1154
    :cond_1
    :goto_0
    return-void

    .line 1130
    :cond_2
    const-string v1, ".ssf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1132
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lhr;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1133
    sget-object v2, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, ".ssf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1135
    iput-object v2, p0, Lhr;->v:Ljava/lang/String;

    .line 1137
    invoke-direct {p0, v0}, Lhr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    sget-object v0, Lhr;->b:Ljava/lang/String;

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    sget-object v0, Lhr;->c:Ljava/lang/String;

    sget-object v2, Laox;->aB:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/sga/tmp/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lhr;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ssf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lhr;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    sget-object v0, Lhr;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1144
    sget-object v0, Lhr;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1145
    iget-boolean v0, p1, Lhk;->a:Z

    if-nez v0, :cond_3

    .line 1146
    sget-object v0, Lhr;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    :goto_1
    const-string v0, "      send broad cast intent to start services"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1151
    iget v0, p1, Lhk;->c:I

    iput v0, p0, Lhr;->a:I

    .line 1152
    iget v0, p1, Lhk;->b:I

    iput v0, p0, Lhr;->b:I

    .line 1153
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1148
    :cond_3
    sget-object v0, Lhr;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1660
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1661
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1662
    if-eqz v0, :cond_2

    .line 1663
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1664
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1669
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1670
    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1672
    :cond_0
    iget-object v1, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1673
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhv;

    invoke-direct {v1, p0}, Lhv;-><init>(Lhr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    .line 1679
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1685
    :cond_1
    :goto_1
    return-void

    .line 1667
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 421
    :goto_0
    iget-boolean v3, p0, Lhr;->b:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 420
    goto :goto_0

    :cond_1
    move v1, v2

    .line 421
    goto :goto_1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1688
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 1689
    iget-boolean v2, p0, Lhr;->c:Z

    if-ne v2, v0, :cond_0

    .line 1690
    iput-boolean v1, p0, Lhr;->c:Z

    .line 1691
    iget-object v1, p0, Lhr;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1695
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1656
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1699
    iget-object v0, p0, Lhr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1700
    :goto_0
    iget-boolean v2, p0, Lhr;->b:Z

    if-ne v2, v0, :cond_1

    .line 1727
    :goto_1
    return-void

    .line 1699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1701
    :cond_1
    iput-boolean v0, p0, Lhr;->b:Z

    .line 1702
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1704
    :cond_2
    iget-object v0, p0, Lhr;->a:Lih;

    if-eqz v0, :cond_3

    .line 1705
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0, v1}, Lih;->a(Z)V

    .line 1706
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0, v1}, Lih;->b(Z)V

    .line 1707
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 1708
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->b()V

    .line 1709
    iput-object v3, p0, Lhr;->a:Lih;

    .line 1711
    :cond_3
    iget-object v0, p0, Lhr;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1712
    iput-object v3, p0, Lhr;->a:Landroid/view/View;

    .line 1713
    invoke-direct {p0}, Lhr;->v()V

    .line 1715
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 1716
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1721
    :cond_4
    iput-object v3, p0, Lhr;->a:Ljava/lang/Thread;

    .line 1722
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 1723
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1725
    :cond_5
    iput-object v3, p0, Lhr;->b:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1770
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1772
    iput-object v1, p0, Lhr;->a:Landroid/app/AlertDialog;

    .line 1774
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1777
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lhr;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1779
    :cond_0
    invoke-direct {p0}, Lhr;->v()V

    .line 1781
    iget-object v0, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1784
    iget-object v0, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1786
    :cond_1
    iput-object v2, p0, Lhr;->a:Landroid/graphics/drawable/Drawable;

    .line 1788
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1789
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1794
    :cond_2
    iput-object v2, p0, Lhr;->a:Ljava/lang/Thread;

    .line 1795
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 1797
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1799
    :cond_3
    iput-object v2, p0, Lhr;->b:Ljava/lang/Thread;

    .line 1801
    iget-object v0, p0, Lhr;->a:Lih;

    if-eqz v0, :cond_4

    .line 1802
    iget-object v0, p0, Lhr;->a:Lih;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lih;->a(Z)V

    .line 1803
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 1804
    iget-object v0, p0, Lhr;->a:Lih;

    invoke-virtual {v0}, Lih;->b()V

    .line 1806
    :cond_4
    iput-object v2, p0, Lhr;->a:Lih;

    .line 1808
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 1809
    iget-object v0, p0, Lhr;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lhl;->a(Ljava/util/HashMap;)V

    .line 1811
    :cond_5
    iput-object v2, p0, Lhr;->a:Ljava/util/HashMap;

    .line 1813
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1814
    iget-object v0, p0, Lhr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1815
    iput-object v2, p0, Lhr;->c:Ljava/util/ArrayList;

    .line 1818
    :cond_6
    iget-object v0, p0, Lhr;->a:Lrr;

    if-eqz v0, :cond_7

    .line 1819
    iget-object v0, p0, Lhr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 1821
    :cond_7
    iput-object v2, p0, Lhr;->a:Lrr;

    .line 1822
    iget-object v0, p0, Lhr;->a:Lhf;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhr;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 1823
    :cond_8
    iput-object v2, p0, Lhr;->a:Lhf;

    .line 1825
    invoke-virtual {p0}, Lhr;->d()V

    .line 1826
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 1827
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1828
    iput-object v2, p0, Lhr;->a:Landroid/os/Handler;

    .line 1830
    :cond_9
    iget-object v0, p0, Lhr;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1831
    iget-object v0, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1832
    iget-object v0, p0, Lhr;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1833
    iget-object v0, p0, Lhr;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1835
    iput-object v2, p0, Lhr;->a:Landroid/widget/RelativeLayout;

    .line 1836
    iput-object v2, p0, Lhr;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 1837
    sput-object v2, Lhr;->a:Lhr;

    .line 1838
    iput-object v2, p0, Lhr;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 1839
    iput-object v2, p0, Lhr;->a:Landroid/view/View$OnTouchListener;

    .line 1840
    iput-object v2, p0, Lhr;->a:Landroid/widget/ListView;

    .line 1841
    iput-object v2, p0, Lhr;->a:Lhh;

    .line 1842
    iput-object v2, p0, Lhr;->b:Ljava/util/ArrayList;

    .line 1843
    iput-object v2, p0, Lhr;->a:Ljava/util/ArrayList;

    .line 1844
    iput-object v2, p0, Lhr;->a:Ljava/util/HashMap;

    .line 1845
    iput-object v2, p0, Lhr;->a:Landroid/widget/LinearLayout;

    .line 1846
    iput-object v2, p0, Lhr;->c:Ljava/util/ArrayList;

    .line 1847
    iput-object v2, p0, Lhr;->b:Landroid/widget/RelativeLayout;

    .line 1848
    iput-object v2, p0, Lhr;->a:Landroid/view/LayoutInflater;

    .line 1849
    iput-object v2, p0, Lhr;->a:Landroid/view/View;

    .line 1850
    iput-object v2, p0, Lhr;->a:Landroid/os/Vibrator;

    .line 1851
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1869
    iget-object v0, p0, Lhr;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lhr;->b:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1871
    iget-object v1, p0, Lhr;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1872
    iput-object v0, p0, Lhr;->u:Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1874
    iget-object v0, p0, Lhr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1880
    :cond_0
    const-string v0, "[[onResume]]"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1881
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1886
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhr;->c:Z

    .line 1887
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1890
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lhr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1892
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhr;->c:Z

    .line 1893
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1894
    const-string v0, "Stop the load thread"

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread is alive ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhr;->c(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lhr;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1899
    :cond_1
    iput-object v2, p0, Lhr;->a:Ljava/lang/Thread;

    .line 1900
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1901
    iget-object v0, p0, Lhr;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1903
    :cond_2
    iput-object v2, p0, Lhr;->b:Ljava/lang/Thread;

    .line 1904
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1907
    iget-object v0, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lhr;->b:Landroid/content/Context;

    iget-object v1, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1910
    :cond_0
    iget-object v0, p0, Lhr;->a:Lif;

    invoke-virtual {v0}, Lif;->a()V

    .line 1911
    iput-object v2, p0, Lhr;->a:Landroid/content/BroadcastReceiver;

    .line 1912
    iput-object v2, p0, Lhr;->a:Lif;

    .line 1913
    invoke-static {}, Laox;->a()V

    .line 1914
    return-void
.end method
