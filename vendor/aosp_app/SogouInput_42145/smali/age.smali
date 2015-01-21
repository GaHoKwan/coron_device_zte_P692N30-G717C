.class public Lage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamv;


# static fields
.field public static a:F

.field private static a:Lage;

.field public static a:Ljava/lang/String;

.field public static b:F

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

.field public static p:Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Lamr;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lawa;

.field private a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

.field private a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

.field public a:Lgy;

.field private a:Lhk;

.field private a:Lhr;

.field private a:Lim;

.field private a:Liu;

.field private a:Ljava/lang/Thread;

.field private a:Ljf;

.field private a:Lkw;

.field private a:Lrr;

.field private a:Lsg;

.field private final a:Z

.field private b:I

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/PopupWindow;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Lawa;

.field private b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private b:Lhk;

.field private b:Z

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/view/View;

.field private c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private d:Landroid/view/View;

.field private d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private d:Z

.field private e:Landroid/app/AlertDialog;

.field private e:Landroid/view/View;

.field private e:Z

.field private f:Landroid/view/View;

.field private f:Z

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lage;->a:Lage;

    .line 131
    const-string v0, "ISSHARETHEME"

    sput-object v0, Lage;->a:Ljava/lang/String;

    .line 139
    const-string v0, "UI"

    sput-object v0, Lage;->b:Ljava/lang/String;

    .line 140
    const-string v0, "targetpath"

    sput-object v0, Lage;->c:Ljava/lang/String;

    .line 141
    const-string v0, "resolution"

    sput-object v0, Lage;->d:Ljava/lang/String;

    .line 142
    const-string v0, "assets"

    sput-object v0, Lage;->e:Ljava/lang/String;

    .line 143
    const-string v0, "index"

    sput-object v0, Lage;->f:Ljava/lang/String;

    .line 144
    const-string v0, "result"

    sput-object v0, Lage;->g:Ljava/lang/String;

    .line 145
    const-string v0, "result_detail"

    sput-object v0, Lage;->h:Ljava/lang/String;

    .line 146
    const-string v0, "install"

    sput-object v0, Lage;->i:Ljava/lang/String;

    .line 147
    const-string v0, "result_switch"

    sput-object v0, Lage;->j:Ljava/lang/String;

    .line 148
    const-string v0, "android_pc_theme"

    sput-object v0, Lage;->k:Ljava/lang/String;

    .line 149
    const-string v0, "ISDIMCODETHEMEMSG"

    sput-object v0, Lage;->l:Ljava/lang/String;

    .line 150
    const-string v0, "dimCodeThemeFileName"

    sput-object v0, Lage;->m:Ljava/lang/String;

    .line 151
    const-string v0, "dimCodeDownloadURL"

    sput-object v0, Lage;->n:Ljava/lang/String;

    .line 152
    const-string v0, "isBackgroundMode"

    sput-object v0, Lage;->o:Ljava/lang/String;

    .line 153
    const-string v0, "startRecommendTheme"

    sput-object v0, Lage;->p:Ljava/lang/String;

    .line 161
    const v0, 0x439b8000

    sput v0, Lage;->a:F

    .line 162
    const/high16 v0, 0x4387

    sput v0, Lage;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "ThemeManagerTab"

    iput-object v0, p0, Lage;->q:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lage;->a:Z

    .line 81
    iput-object v1, p0, Lage;->a:Landroid/content/Context;

    .line 83
    iput-object v1, p0, Lage;->a:Landroid/view/LayoutInflater;

    .line 87
    iput-object v1, p0, Lage;->a:Lgy;

    .line 89
    iput-object v1, p0, Lage;->a:Lhr;

    .line 90
    iput-object v1, p0, Lage;->a:Lim;

    .line 91
    iput-object v1, p0, Lage;->a:Ljf;

    .line 92
    iput-object v1, p0, Lage;->a:Liu;

    .line 94
    iput-object v1, p0, Lage;->a:Landroid/widget/RelativeLayout;

    .line 95
    iput-object v1, p0, Lage;->a:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, p0, Lage;->a:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lage;->b:Landroid/view/View;

    .line 98
    iput-object v1, p0, Lage;->c:Landroid/view/View;

    .line 99
    iput-object v1, p0, Lage;->d:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lage;->e:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lage;->b:Landroid/widget/RelativeLayout;

    .line 121
    iput-boolean v2, p0, Lage;->b:Z

    .line 125
    iput-object v1, p0, Lage;->a:Ljava/lang/Thread;

    .line 136
    iput-boolean v2, p0, Lage;->d:Z

    .line 137
    iput-boolean v2, p0, Lage;->e:Z

    .line 158
    iput-boolean v2, p0, Lage;->f:Z

    .line 164
    iput v2, p0, Lage;->a:I

    .line 172
    iput v2, p0, Lage;->b:I

    .line 188
    iput-object v1, p0, Lage;->a:Landroid/os/Handler;

    .line 534
    new-instance v0, Lagf;

    invoke-direct {v0, p0}, Lagf;-><init>(Lage;)V

    iput-object v0, p0, Lage;->a:Landroid/view/View$OnClickListener;

    .line 834
    new-instance v0, Lagr;

    invoke-direct {v0, p0}, Lagr;-><init>(Lage;)V

    iput-object v0, p0, Lage;->a:Landroid/view/View$OnTouchListener;

    .line 1261
    new-instance v0, Lags;

    invoke-direct {v0, p0}, Lags;-><init>(Lage;)V

    iput-object v0, p0, Lage;->a:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lrr;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lage;->a:Lrr;

    .line 355
    invoke-virtual {p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lage;->a:Landroid/content/Context;

    .line 356
    iput-object p1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 357
    new-instance v0, Lagw;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Lagw;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lage;->a:Landroid/os/Handler;

    .line 358
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lage;->a:Landroid/view/LayoutInflater;

    .line 359
    sput-object p0, Lage;->a:Lage;

    .line 360
    iget-object v0, p0, Lage;->a:Lhr;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lhr;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    sget-object v2, Lage;->a:Lage;

    iget-object v3, p0, Lage;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lhr;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V

    iput-object v0, p0, Lage;->a:Lhr;

    .line 363
    :cond_0
    new-instance v0, Lgy;

    sget-object v1, Laox;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage;->a:Lgy;

    .line 364
    new-instance v0, Lkw;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lage;->a:Lkw;

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    sget-object v1, Lhr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v2, p0, Lage;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    invoke-direct {p0}, Lage;->u()V

    .line 370
    invoke-virtual {p0}, Lage;->d()V

    .line 371
    invoke-direct {p0}, Lage;->x()V

    .line 373
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/dimcode/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 378
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 382
    :cond_2
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lage;->a:Landroid/content/SharedPreferences;

    .line 383
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lage;->a:Landroid/content/SharedPreferences$Editor;

    .line 384
    return-void
.end method

.method static synthetic a(Lage;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lage;->a:I

    return v0
.end method

.method static synthetic a(Lage;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lage;->b:I

    return p1
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1128
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a()Lage;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lage;->a:Lage;

    return-object v0
.end method

.method static synthetic a(Lage;)Lamr;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lamr;

    return-object v0
.end method

.method static synthetic a(Lage;Lamr;)Lamr;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lage;->a:Lamr;

    return-object p1
.end method

.method static synthetic a(Lage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lage;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lage;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1240
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1242
    if-nez v0, :cond_0

    .line 1243
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1244
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1245
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1246
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1248
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lage;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->b:Lawa;

    return-object v0
.end method

.method static synthetic a(Lage;Lawa;)Lawa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lage;->a:Lawa;

    return-object p1
.end method

.method static synthetic a(Lage;)Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    return-object v0
.end method

.method static synthetic a(Lage;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lhk;

    return-object v0
.end method

.method static synthetic a(Lage;)Lhr;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lhr;

    return-object v0
.end method

.method static synthetic a(Lage;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lage;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lage;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lage;->a:Lsg;

    return-object p1
.end method

.method private a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1388
    iget-object v0, p0, Lage;->a:Lawa;

    if-nez v0, :cond_0

    new-instance v0, Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Lawa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lage;->a:Lawa;

    .line 1389
    :cond_0
    iget-object v0, p0, Lage;->a:Lawa;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lage;->a:Lawa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->g(I)V

    .line 1391
    iget-object v0, p0, Lage;->a:Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v2, 0x7f0b0328

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object v0, p0, Lage;->a:Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v2, 0x7f0b03e6

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v0, p0, Lage;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 1394
    iget-object v0, p0, Lage;->a:Lawa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawa;->setCancelable(Z)V

    .line 1395
    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0, p1}, Lawa;->d(I)V

    .line 1396
    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0, p2}, Lawa;->b(I)V

    .line 1397
    new-instance v0, Lagg;

    invoke-direct {v0, p0}, Lagg;-><init>(Lage;)V

    .line 1406
    iget-object v1, p0, Lage;->a:Lawa;

    const/4 v2, -0x2

    iget-object v3, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v4, 0x7f0b02ae

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1411
    :cond_1
    return-void
.end method

.method static synthetic a(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lage;->s()V

    return-void
.end method

.method static synthetic a(Lage;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lage;->a(II)V

    return-void
.end method

.method static synthetic a(Lage;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lage;Lhk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->d(Lhk;)V

    return-void
.end method

.method static synthetic a(Lage;Lhk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lage;->a(Lhk;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->a(Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 423
    iget v0, p0, Lage;->a:I

    invoke-direct {p0, v0}, Lage;->b(I)V

    .line 424
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lhr;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lhr;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    sget-object v2, Lage;->a:Lage;

    iget-object v3, p0, Lage;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lhr;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V

    iput-object v0, p0, Lage;->a:Lhr;

    .line 429
    :cond_0
    iget-object v0, p0, Lage;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    :cond_1
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0, p1}, Lhr;->a(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lage;->b:Landroid/view/View;

    .line 434
    :goto_1
    iget-object v0, p0, Lage;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage;->a:Landroid/view/View;

    iget-object v1, p0, Lage;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    :cond_2
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 438
    :cond_3
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 440
    :cond_4
    iget-object v0, p0, Lage;->b:Landroid/view/View;

    iput-object v0, p0, Lage;->a:Landroid/view/View;

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lage;->a:I

    goto :goto_0

    .line 432
    :cond_5
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->f()V

    goto :goto_1

    .line 444
    :pswitch_1
    invoke-direct {p0}, Lage;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    iget-object v0, p0, Lage;->a:Lim;

    if-nez v0, :cond_6

    .line 446
    new-instance v0, Lim;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    sget-object v2, Lage;->a:Lage;

    iget-object v3, p0, Lage;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lim;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V

    iput-object v0, p0, Lage;->a:Lim;

    .line 448
    :cond_6
    iget-object v0, p0, Lage;->c:Landroid/view/View;

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 449
    :cond_7
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0, p1}, Lim;->a(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lage;->c:Landroid/view/View;

    .line 454
    :cond_8
    :goto_2
    iget-object v0, p0, Lage;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lage;->a:Landroid/view/View;

    iget-object v1, p0, Lage;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 455
    :cond_9
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 456
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 458
    :cond_a
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 460
    :cond_b
    iget-object v0, p0, Lage;->c:Landroid/view/View;

    iput-object v0, p0, Lage;->a:Landroid/view/View;

    .line 461
    const/4 v0, 0x1

    iput v0, p0, Lage;->a:I

    goto/16 :goto_0

    .line 452
    :cond_c
    iget-object v0, p0, Lage;->b:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lage;->c:Landroid/view/View;

    goto :goto_2

    .line 464
    :pswitch_2
    invoke-direct {p0}, Lage;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 465
    iget-object v0, p0, Lage;->a:Ljf;

    if-nez v0, :cond_d

    .line 466
    new-instance v0, Ljf;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    sget-object v2, Lage;->a:Lage;

    iget-object v3, p0, Lage;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Ljf;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V

    iput-object v0, p0, Lage;->a:Ljf;

    .line 468
    :cond_d
    iget-object v0, p0, Lage;->d:Landroid/view/View;

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 469
    :cond_e
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0, p1}, Ljf;->a(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lage;->d:Landroid/view/View;

    .line 476
    :goto_3
    iget-object v0, p0, Lage;->a:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lage;->a:Landroid/view/View;

    iget-object v1, p0, Lage;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 477
    :cond_f
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    .line 478
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 480
    :cond_10
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 482
    :cond_11
    iget-object v0, p0, Lage;->d:Landroid/view/View;

    iput-object v0, p0, Lage;->a:Landroid/view/View;

    .line 483
    const/4 v0, 0x2

    iput v0, p0, Lage;->a:I

    goto/16 :goto_0

    .line 471
    :cond_12
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->k()V

    goto :goto_3

    .line 474
    :cond_13
    iget-object v0, p0, Lage;->b:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lage;->d:Landroid/view/View;

    goto :goto_3

    .line 486
    :pswitch_3
    invoke-direct {p0}, Lage;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 487
    iget-object v0, p0, Lage;->a:Liu;

    if-nez v0, :cond_14

    .line 488
    new-instance v0, Liu;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    sget-object v2, Lage;->a:Lage;

    iget-object v3, p0, Lage;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Liu;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Lage;Landroid/os/Handler;)V

    iput-object v0, p0, Lage;->a:Liu;

    .line 490
    :cond_14
    iget-object v0, p0, Lage;->e:Landroid/view/View;

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 491
    :cond_15
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0, p1}, Liu;->a(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lage;->e:Landroid/view/View;

    .line 496
    :cond_16
    :goto_4
    iget-object v0, p0, Lage;->a:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lage;->a:Landroid/view/View;

    iget-object v1, p0, Lage;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 497
    :cond_17
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_18

    .line 498
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 500
    :cond_18
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lage;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 502
    :cond_19
    iget-object v0, p0, Lage;->e:Landroid/view/View;

    iput-object v0, p0, Lage;->a:Landroid/view/View;

    .line 503
    const/4 v0, 0x3

    iput v0, p0, Lage;->a:I

    goto/16 :goto_0

    .line 494
    :cond_1a
    iget-object v0, p0, Lage;->b:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lage;->e:Landroid/view/View;

    goto :goto_4

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 1526
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setDimCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 1527
    invoke-direct {p0}, Lage;->v()V

    .line 1528
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1102
    if-nez p0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1104
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    const/4 v2, 0x0

    .line 1107
    if-eqz p0, :cond_1

    .line 1108
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1114
    :goto_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1112
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1114
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1111
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method private a(Lhk;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1253
    if-eqz p1, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/sogou/sga/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->d:Ljava/lang/String;

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p1, Lhk;->b:Z

    .line 1259
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 564
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    return-void
.end method

.method static synthetic a(Lage;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lage;->b:Z

    return v0
.end method

.method static synthetic a(Lage;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lage;->d:Z

    return p1
.end method

.method static synthetic b(Lage;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lage;->a:I

    return p1
.end method

.method static synthetic b(Lage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lage;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->a:Lawa;

    return-object v0
.end method

.method static synthetic b(Lage;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->b:Lhk;

    return-object v0
.end method

.method static synthetic b(Lage;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lage;->s:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 700
    :goto_0
    return-void

    .line 674
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 675
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 676
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 677
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    goto :goto_0

    .line 680
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 681
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 682
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 683
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 687
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 688
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 689
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    goto :goto_0

    .line 692
    :pswitch_3
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 693
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 694
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    .line 695
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setSelected(Z)V

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1198
    packed-switch p1, :pswitch_data_0

    .line 1237
    :goto_0
    :pswitch_0
    return-void

    .line 1200
    :pswitch_1
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-direct {p0, v1, p2, p3}, Lage;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1203
    :pswitch_2
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1206
    :pswitch_3
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1209
    :pswitch_4
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-direct {p0, v1, p2, v2}, Lage;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1212
    :pswitch_5
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-direct {p0, v1, p2, p3}, Lage;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1215
    :pswitch_6
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-direct {p0, v1, p2, v2}, Lage;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1218
    :pswitch_7
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-direct {p0, v1, p2, p3}, Lage;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1224
    :pswitch_8
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1227
    :pswitch_9
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1230
    :pswitch_a
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1233
    :pswitch_b
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const v1, 0x7f0b03e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage;->b(Ljava/lang/String;)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic b(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lage;->t()V

    return-void
.end method

.method static synthetic b(Lage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 574
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 409
    iget v0, p0, Lage;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->b()Z

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lage;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lage;->c:Z

    return v0
.end method

.method static synthetic c(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lage;->p()V

    return-void
.end method

.method static synthetic c(Lage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lage;->f(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1414
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    .line 1415
    :cond_0
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1416
    new-instance v0, Lagh;

    invoke-direct {v0, p0}, Lagh;-><init>(Lage;)V

    .line 1424
    iget-object v1, p0, Lage;->b:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1427
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1429
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lage;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lage;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lage;->d:Z

    return v0
.end method

.method static synthetic d(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lage;->q()V

    return-void
.end method

.method private d(Lhk;)V
    .locals 2
    .parameter

    .prologue
    .line 1531
    iget-object v0, p1, Lhk;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lhk;->d:Z

    if-nez v0, :cond_0

    .line 1533
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setTheme(Lhk;)V

    .line 1534
    invoke-direct {p0}, Lage;->v()V

    .line 1545
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setTheme(Lhk;)V

    .line 1537
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lage;->a(Lhk;Z)V

    .line 1538
    new-instance v0, Lagn;

    invoke-direct {v0, p0, p1}, Lagn;-><init>(Lage;Lhk;)V

    iput-object v0, p0, Lage;->a:Ljava/lang/Thread;

    .line 1543
    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1432
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1433
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    .line 1435
    :cond_0
    iget-object v0, p0, Lage;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1437
    :cond_1
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1438
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v3, 0x7f0b02e2

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagi;

    invoke-direct {v3, p0}, Lagi;-><init>(Lage;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1445
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagj;

    invoke-direct {v3, p0}, Lagj;-><init>(Lage;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1452
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1453
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1454
    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Laox;->a()Z

    move-result v0

    .line 704
    if-nez v0, :cond_0

    .line 705
    iget-object v1, p0, Lage;->b:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lage;->r()V

    .line 707
    :cond_0
    return v0
.end method

.method static synthetic e(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lage;->w()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1808
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1809
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    const v3, 0x7f090003

    .line 511
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701de

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    .line 512
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 513
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b02e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 515
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setId(I)V

    .line 516
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 518
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b02e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 520
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setId(I)V

    .line 521
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 523
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b02e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 525
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setId(I)V

    .line 526
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0701e2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 528
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b02ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 530
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setId(I)V

    .line 531
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Lage;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    .line 577
    invoke-direct {p0}, Lage;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lage;->q()V

    .line 616
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 581
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 582
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 583
    iget-object v2, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    iget-object v3, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v2, v3}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 584
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 585
    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 586
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 587
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 588
    const v1, 0x7f0b04a3

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 589
    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v3, 0x7f0b0249

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 590
    const/4 v1, -0x1

    iget-object v3, p0, Lage;->a:Landroid/content/Context;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lago;

    invoke-direct {v4, p0}, Lago;-><init>(Lage;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 598
    const/4 v1, -0x2

    iget-object v3, p0, Lage;->a:Landroid/content/Context;

    const v4, 0x7f0b02ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lagp;

    invoke-direct {v4, p0}, Lagp;-><init>(Lage;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 605
    new-instance v1, Lagq;

    invoke-direct {v1, p0, v0}, Lagq;-><init>(Lage;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 614
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realWebFunction mCurrentTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  curr_select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 620
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 641
    :cond_0
    :goto_0
    iget v0, p0, Lage;->b:I

    iput v0, p0, Lage;->a:I

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lage;->a(Landroid/content/Intent;)V

    .line 643
    return-void

    .line 622
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->j()V

    .line 624
    :cond_1
    iget-boolean v0, p0, Lage;->e:Z

    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gd:I

    goto :goto_0

    .line 627
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage;->e:Z

    goto :goto_0

    .line 631
    :pswitch_1
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->j()V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->j()V

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 711
    iget-object v0, p0, Lage;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03005e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lage;->b:Landroid/widget/RelativeLayout;

    .line 712
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 713
    const/4 v1, 0x2

    const v2, 0x7f0701de

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 714
    iget-object v1, p0, Lage;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v0, p0, Lage;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 716
    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 747
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lage;->f:Z

    if-nez v0, :cond_1

    .line 748
    :cond_0
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    :cond_1
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    :cond_0
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 766
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 771
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    .line 772
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    :cond_1
    iget-object v0, p0, Lage;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030069

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    iput-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    .line 776
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a()V

    .line 777
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    sget-object v1, Lage;->a:Lage;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setService(Lage;)V

    .line 778
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 783
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lage;->f:Landroid/view/View;

    .line 784
    iget-object v0, p0, Lage;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v0, p0, Lage;->f:Landroid/view/View;

    iget-object v1, p0, Lage;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lage;->f:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    .line 787
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 789
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 790
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 791
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 793
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method

.method private v()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 797
    const-string v0, "showFloatPreviewWindow in"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    invoke-virtual {p0}, Lage;->b()V

    .line 832
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 805
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    .line 808
    :goto_1
    sget v3, Lage;->a:F

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 810
    sget v4, Lage;->b:F

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 812
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 815
    if-eqz v0, :cond_4

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 818
    :goto_2
    iget-object v6, p0, Lage;->b:Landroid/widget/PopupWindow;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 819
    iget-object v6, p0, Lage;->b:Landroid/widget/PopupWindow;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 820
    iget-object v2, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 821
    iget-object v2, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showFloatPreviewWindow] functionWindowWidth = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    functionWindowHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lage;->f(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Lage;->b:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lage;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 826
    iget-object v2, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 827
    iget-object v2, p0, Lage;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 828
    iget-object v2, p0, Lage;->a:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lage;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 831
    :cond_2
    const-string v0, "showFloatPreviewWindow out"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 805
    goto :goto_1

    .line 815
    :cond_4
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x5

    goto :goto_2
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1160
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lage;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    new-instance v0, Lamr;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v2, p0, Lage;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lage;->a:Lamr;

    .line 1170
    iget-object v0, p0, Lage;->a:Lamr;

    invoke-virtual {v0, p0}, Lamr;->a(Lamv;)V

    .line 1171
    iget-object v0, p0, Lage;->a:Lamr;

    invoke-virtual {v0}, Lamr;->a()V

    goto :goto_0
.end method

.method private x()V
    .locals 5

    .prologue
    .line 1495
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    .line 1496
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1497
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v2, 0x7f0b02fb

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1498
    new-instance v0, Lagk;

    invoke-direct {v0, p0}, Lagk;-><init>(Lage;)V

    .line 1505
    iget-object v1, p0, Lage;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v4, 0x7f0b029b

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1508
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v3, 0x7f0b029c

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagl;

    invoke-direct {v3, p0}, Lagl;-><init>(Lage;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1514
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    new-instance v1, Lagm;

    invoke-direct {v1, p0}, Lagm;-><init>(Lage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1523
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->a(I)I

    move-result v0

    iput v0, p0, Lage;->a:I

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 391
    iput v2, p0, Lage;->a:I

    .line 394
    :cond_0
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lage;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f03005b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    .line 396
    invoke-direct {p0}, Lage;->o()V

    .line 398
    :cond_1
    invoke-direct {p0, p1}, Lage;->a(Landroid/content/Intent;)V

    .line 399
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 400
    :goto_0
    iput-boolean v0, p0, Lage;->f:Z

    .line 401
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lage;->f:Z

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    :cond_2
    :goto_1
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    return-object v0

    :cond_3
    move v0, v2

    .line 399
    goto :goto_0

    .line 403
    :cond_4
    invoke-direct {p0}, Lage;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Lhk;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 915
    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 916
    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    const v2, 0x7f0b00fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lhk;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->i:Ljava/lang/String;

    .line 936
    :cond_0
    :goto_0
    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    :cond_1
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->i:Ljava/lang/String;

    .line 939
    :cond_2
    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    return-object v0

    .line 919
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lhk;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 920
    const-string v0, ""

    .line 921
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 923
    :try_start_0
    invoke-static {v1}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 932
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lage;->a:Landroid/content/Context;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->i:Ljava/lang/String;

    goto :goto_0

    .line 924
    :catch_0
    move-exception v1

    .line 926
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 927
    :catch_1
    move-exception v1

    .line 929
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 416
    iget v0, p0, Lage;->a:I

    if-nez v0, :cond_0

    .line 417
    iput-boolean v1, p0, Lage;->d:Z

    .line 418
    :cond_0
    iget v0, p0, Lage;->a:I

    if-ne v0, v1, :cond_1

    .line 419
    iput-boolean v1, p0, Lage;->e:Z

    .line 420
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget v0, p0, Lage;->a:I

    if-ne p1, v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 647
    :cond_0
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 667
    :cond_1
    :goto_1
    iput p1, p0, Lage;->a:I

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lage;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 649
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->h()V

    goto :goto_1

    .line 653
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->j()V

    goto :goto_1

    .line 657
    :pswitch_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->j()V

    goto :goto_1

    .line 661
    :pswitch_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->j()V

    goto :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0, p1, p2, p3}, Lage;->b(III)V

    .line 1178
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1182
    sparse-switch p1, :sswitch_data_0

    .line 1194
    :goto_0
    return-void

    .line 1186
    :sswitch_0
    iput-object p2, p0, Lage;->r:Ljava/lang/String;

    .line 1187
    iput-boolean p3, p0, Lage;->c:Z

    goto :goto_0

    .line 1190
    :sswitch_1
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1182
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6f -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Landroid/os/Handler;Landroid/content/Intent;ZII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const/high16 v1, 0x4355

    invoke-static {v0, v1}, Lage;->a(Landroid/content/Context;F)I

    move-result v0

    .line 1121
    iget-object v1, p0, Lage;->a:Lkw;

    invoke-virtual {v1, p2, p3}, Lkw;->a(Landroid/content/Intent;Z)V

    .line 1122
    iget-object v1, p0, Lage;->a:Lkw;

    invoke-virtual {v1, p1, v0, p4, p5}, Lkw;->a(Landroid/os/Handler;III)V

    .line 1123
    return-void
.end method

.method public a(Lhk;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 867
    iget-object v1, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v4, v1, Lamo;->av:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lamo;->av:I

    .line 868
    invoke-static {}, Laox;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    const v1, 0x7f0b03e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lage;->e(Ljava/lang/String;)V

    .line 912
    :goto_0
    return-void

    .line 873
    :cond_0
    iput-boolean v2, p0, Lage;->b:Z

    .line 874
    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v1, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lhk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    invoke-virtual {p0, p1, v0, v3}, Lage;->a(Lhk;Landroid/graphics/Bitmap;Z)V

    .line 911
    :goto_1
    iput-object p1, p0, Lage;->a:Lhk;

    goto :goto_0

    .line 877
    :cond_1
    iget-object v4, p1, Lhk;->d:Ljava/lang/String;

    .line 878
    const-string v1, ""

    .line 881
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".ssf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v2, :cond_3

    .line 882
    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v5, ".ssf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    .line 888
    :goto_2
    if-eqz v1, :cond_2

    .line 890
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laox;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 891
    sget v5, Laox;->a:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 894
    :cond_2
    if-eqz v0, :cond_4

    .line 895
    const-string v1, "===========bm is not null==========="

    invoke-direct {p0, v1}, Lage;->f(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, p1, v0, v2}, Lage;->a(Lhk;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_3
    move-object v4, v1

    move v1, v3

    .line 886
    goto :goto_2

    .line 899
    :cond_4
    if-eqz v1, :cond_5

    .line 901
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/dimcode/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    sget v1, Laox;->a:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 904
    :cond_5
    if-eqz v0, :cond_6

    .line 905
    invoke-virtual {p0, p1, v0, v3}, Lage;->a(Lhk;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1

    .line 907
    :cond_6
    invoke-virtual {p0, p1, v2}, Lage;->a(Lhk;Z)V

    goto/16 :goto_1
.end method

.method public a(Lhk;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 969
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    const-string v0, ""

    .line 972
    iget-object v1, p1, Lhk;->d:Ljava/lang/String;

    .line 973
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".ssf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 974
    sget-object v0, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v3, ".ssf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_0
    iget-object v1, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lhk;->d:Z

    if-eqz v1, :cond_2

    .line 978
    :cond_1
    if-eqz p2, :cond_6

    .line 979
    if-eqz p3, :cond_4

    .line 1004
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1007
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1008
    const-string v1, "image/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1013
    :goto_1
    invoke-virtual {p0, p1}, Lage;->a(Lhk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhk;->i:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b031f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lhk;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lhk;->i:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    const-string v1, "sms_body"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1019
    :cond_3
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1029
    :goto_2
    return-void

    .line 982
    :cond_4
    iget-boolean v1, p1, Lhk;->d:Z

    if-eqz v1, :cond_5

    .line 983
    iget-object v1, p1, Lhk;->g:Ljava/lang/String;

    invoke-static {v1}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    sget-object v3, Lage;->a:Lage;

    iget-object v3, v3, Lage;->a:Lgy;

    invoke-virtual {v3, v1}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 985
    invoke-static {v1, p2}, Lays;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".reco"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-static {v1, v0}, Lage;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 990
    :cond_5
    new-instance v1, Lavo;

    iget-object v3, p0, Lage;->a:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lavo;-><init>(Landroid/content/Context;Lhk;)V

    goto/16 :goto_0

    .line 993
    :cond_6
    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v1, p1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lhk;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 994
    const-string v1, "SYSTEM_DEFAULT"

    .line 997
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/mergetheme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    sget v3, Laox;->a:I

    div-int/lit8 v3, v3, 0x4

    invoke-static {v0, v3}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1000
    if-nez v0, :cond_7

    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1001
    invoke-static {v0, v1}, Lage;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    .line 1011
    :cond_8
    const-string v0, "text/plain"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1021
    :cond_9
    iput-boolean v5, p0, Lage;->b:Z

    goto/16 :goto_2
.end method

.method public a(Lhk;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1032
    iget-object v3, p1, Lhk;->d:Ljava/lang/String;

    .line 1033
    const-string v0, ""

    .line 1036
    if-eqz v3, :cond_1

    .line 1037
    sget-object v1, Laox;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    .line 1041
    :goto_0
    if-eqz v3, :cond_2

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".ssf"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1042
    sget-object v0, Laox;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ".ssf"

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v3, v4

    move-object v1, v0

    .line 1049
    :goto_1
    const/4 v0, 0x0

    .line 1050
    if-nez v2, :cond_0

    .line 1053
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/Android/data/com.sohu.inputmethod.sogou/files/sga/dimcode/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    sget v2, Laox;->a:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1059
    :cond_0
    if-nez v0, :cond_3

    .line 1060
    iget-object v0, p1, Lhk;->a:Ljava/lang/String;

    .line 1061
    iget-object v5, p1, Lhk;->e:Ljava/lang/String;

    .line 1063
    invoke-virtual {p0, p1}, Lage;->b(Lhk;)Ljava/lang/String;

    move-result-object v6

    .line 1071
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1072
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1073
    const-string v8, "themeName"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v0, "themeAuthor"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v0, "themeID"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v0, "themeFileName"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-object v0, Lage;->a:Ljava/lang/String;

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    const-string v0, "ENCODE_TYPE"

    const-string v1, "THEME_TYPE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string v0, "ENCODE_DATA"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1081
    const-string v0, "com.sohu.inputmethod.dimensionalbarcode.ENCODE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    iget-object v1, p0, Lage;->a:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lage;->a(Landroid/os/Handler;Landroid/content/Intent;ZII)V

    .line 1099
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 1039
    goto/16 :goto_0

    .line 1046
    :cond_2
    const/4 v3, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1089
    :cond_3
    if-eqz p2, :cond_4

    .line 1090
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1091
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1092
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1096
    :cond_4
    invoke-direct {p0, v0}, Lage;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1325
    iget-object v0, p0, Lage;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1326
    :cond_0
    iget-object v0, p0, Lage;->b:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1328
    :cond_1
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 1329
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    .line 1330
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1331
    new-instance v0, Lagt;

    invoke-direct {v0, p0}, Lagt;-><init>(Lage;)V

    .line 1336
    iget-object v1, p0, Lage;->d:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1339
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    new-instance v1, Lagu;

    invoke-direct {v1, p0}, Lagu;-><init>(Lage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1352
    :cond_2
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1354
    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 742
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 724
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->a()Z

    move-result v0

    goto :goto_0

    .line 728
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->a()Z

    move-result v0

    goto :goto_0

    .line 732
    :pswitch_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    goto :goto_0

    .line 736
    :pswitch_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->a()Z

    move-result v0

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1687
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {p0}, Lage;->b()V

    .line 1689
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aW:I

    .line 1690
    const/4 v0, 0x1

    .line 1708
    :goto_0
    return v0

    .line 1692
    :cond_0
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1708
    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1694
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0, p1, p2}, Lhr;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1698
    :pswitch_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_1

    .line 1699
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0, p1, p2}, Ljf;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1702
    :pswitch_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0, p1, p2}, Liu;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lhk;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 943
    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lhk;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    :goto_0
    return-object v0

    .line 945
    :cond_0
    iget-boolean v0, p1, Lhk;->d:Z

    if-eqz v0, :cond_1

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lhk;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 948
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lhk;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 949
    const-string v0, ""

    .line 950
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 952
    :try_start_0
    invoke-static {v1}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 960
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MD5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lage;->a:Landroid/content/Context;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v1

    .line 955
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 956
    :catch_1
    move-exception v1

    .line 958
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 963
    :cond_3
    const-string v0, "Unknow"

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 847
    const-string v0, "dismissFloatFunctionWindow - In"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lage;->c()V

    .line 850
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 852
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->setIconImageView()V

    .line 854
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage;->b:Z

    .line 855
    const-string v0, "dismissFloatFunctionWindow - Out"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public b(Lhk;)V
    .locals 3
    .parameter

    .prologue
    .line 1132
    iget-boolean v0, p1, Lhk;->d:Z

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1138
    iget-object v0, p0, Lage;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1141
    :cond_3
    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    iput-object v0, p0, Lage;->b:Lhk;

    .line 1142
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->d:Ljava/lang/String;

    iput-object v1, v0, Lhk;->d:Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->b:Ljava/lang/String;

    iput-object v1, v0, Lhk;->b:Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->a:Ljava/lang/String;

    iput-object v1, v0, Lhk;->a:Ljava/lang/String;

    .line 1146
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->g:Ljava/lang/String;

    iput-object v1, v0, Lhk;->g:Ljava/lang/String;

    .line 1147
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->h:Ljava/lang/String;

    iput-object v1, v0, Lhk;->h:Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->e:Ljava/lang/String;

    iput-object v1, v0, Lhk;->e:Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lage;->b:Lhk;

    iget-object v1, p1, Lhk;->i:Ljava/lang/String;

    iput-object v1, v0, Lhk;->i:Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lage;->b:Lhk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhk;->d:Z

    .line 1151
    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    iput-object v0, p0, Lage;->s:Ljava/lang/String;

    .line 1152
    iget-object v0, p0, Lage;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Lamr;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v2, p0, Lage;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lage;->a:Lamr;

    .line 1154
    iget-object v0, p0, Lage;->a:Lamr;

    invoke-virtual {v0, p0}, Lamr;->a(Lamv;)V

    .line 1155
    iget-object v0, p0, Lage;->a:Lamr;

    invoke-virtual {v0}, Lamr;->a()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1357
    iget-object v0, p0, Lage;->b:Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v2, 0x7f0b0246

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->show()V

    .line 1359
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 859
    const-string v0, "dismissFloatOverlayWindow - In"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 863
    :cond_0
    const-string v0, "dismissFloatOverlayWindow - Out"

    invoke-direct {p0, v0}, Lage;->f(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public c(Lhk;)V
    .locals 1
    .parameter

    .prologue
    .line 1491
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0, p1}, Lhr;->a(Lhk;)V

    .line 1492
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1362
    new-instance v0, Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {v0, v1}, Lawa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lage;->b:Lawa;

    .line 1363
    iget-object v0, p0, Lage;->b:Lawa;

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Lawa;->setTitle(I)V

    .line 1364
    iget-object v0, p0, Lage;->b:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 1365
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0, v3}, Lawa;->g(I)V

    .line 1366
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0, v3}, Lawa;->setCancelable(Z)V

    .line 1367
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1369
    iget-object v0, p0, Lage;->b:Lawa;

    iget-object v1, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v2, 0x7f0b0246

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lage;->b:Lawa;

    new-instance v1, Lagv;

    invoke-direct {v1, p0}, Lagv;-><init>(Lage;)V

    invoke-virtual {v0, v1}, Lawa;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1381
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0, v4}, Lawa;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0, v4}, Lawa;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1383
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0, v4}, Lawa;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1385
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lage;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lage;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1460
    :cond_0
    iget-object v0, p0, Lage;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lage;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1463
    :cond_1
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1466
    :cond_2
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1467
    iget-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1469
    :cond_3
    iget-object v0, p0, Lage;->b:Lawa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1470
    iget-object v0, p0, Lage;->b:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1472
    :cond_4
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1473
    iget-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1475
    :cond_5
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1476
    iget-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1478
    :cond_6
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1481
    iput-object v0, p0, Lage;->a:Lawa;

    .line 1482
    iput-object v0, p0, Lage;->c:Landroid/app/AlertDialog;

    .line 1483
    iput-object v0, p0, Lage;->b:Landroid/app/AlertDialog;

    .line 1484
    iput-object v0, p0, Lage;->d:Landroid/app/AlertDialog;

    .line 1485
    iput-object v0, p0, Lage;->b:Lawa;

    .line 1486
    iput-object v0, p0, Lage;->a:Landroid/app/AlertDialog;

    .line 1487
    iput-object v0, p0, Lage;->e:Landroid/app/AlertDialog;

    .line 1488
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lage;->a:Lkw;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lage;->a:Lkw;

    invoke-virtual {v0}, Lkw;->a()V

    .line 1550
    const/4 v0, 0x0

    iput-object v0, p0, Lage;->a:Lkw;

    .line 1552
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1555
    invoke-virtual {p0}, Lage;->b()V

    .line 1556
    invoke-virtual {p0}, Lage;->e()V

    .line 1557
    iget-object v0, p0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 1558
    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1561
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lage;->a:Ljava/lang/Thread;

    .line 1562
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1592
    :cond_1
    :goto_0
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget v1, p0, Lage;->a:I

    invoke-virtual {v0, v1}, Lafp;->f(I)V

    .line 1593
    return-void

    .line 1564
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_2

    .line 1565
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->h()V

    .line 1566
    :cond_2
    iget-boolean v0, p0, Lage;->d:Z

    if-nez v0, :cond_3

    .line 1567
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gc:I

    goto :goto_0

    .line 1569
    :cond_3
    iput-boolean v1, p0, Lage;->d:Z

    goto :goto_0

    .line 1573
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_4

    .line 1574
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->j()V

    .line 1575
    :cond_4
    iget-boolean v0, p0, Lage;->e:Z

    if-nez v0, :cond_5

    .line 1576
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gd:I

    goto :goto_0

    .line 1578
    :cond_5
    iput-boolean v1, p0, Lage;->e:Z

    goto :goto_0

    .line 1582
    :pswitch_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_1

    .line 1583
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->j()V

    goto :goto_0

    .line 1586
    :pswitch_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->j()V

    goto :goto_0

    .line 1562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1598
    :pswitch_1
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->f()V

    goto :goto_0

    .line 1606
    :pswitch_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->k()V

    goto :goto_0

    .line 1610
    :pswitch_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->k()V

    goto :goto_0

    .line 1596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lage;->b()V

    .line 1620
    invoke-virtual {p0}, Lage;->e()V

    .line 1621
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1623
    :pswitch_0
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->g()V

    goto :goto_0

    .line 1621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1632
    invoke-virtual {p0}, Lage;->g()V

    .line 1633
    iget-object v0, p0, Lage;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    iget-object v1, p0, Lage;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1636
    :cond_0
    iput-object v2, p0, Lage;->a:Landroid/content/BroadcastReceiver;

    .line 1637
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_1

    .line 1638
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->i()V

    .line 1639
    :cond_1
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->k()V

    .line 1641
    :cond_2
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_3

    .line 1642
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->l()V

    .line 1643
    :cond_3
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_4

    .line 1644
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->l()V

    .line 1645
    :cond_4
    iput-object v2, p0, Lage;->a:Lhr;

    .line 1646
    iput-object v2, p0, Lage;->a:Lim;

    .line 1647
    iput-object v2, p0, Lage;->a:Ljf;

    .line 1648
    iput-object v2, p0, Lage;->a:Liu;

    .line 1649
    sput-object v2, Lage;->a:Lage;

    .line 1650
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1653
    invoke-virtual {p0}, Lage;->e()V

    .line 1654
    invoke-virtual {p0}, Lage;->b()V

    .line 1655
    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lage;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1658
    :cond_0
    iput-object v1, p0, Lage;->a:Ljava/lang/Thread;

    .line 1659
    iget v0, p0, Lage;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1683
    :cond_1
    :goto_0
    iget-object v0, p0, Lage;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget v1, p0, Lage;->a:I

    invoke-virtual {v0, v1}, Lafp;->f(I)V

    .line 1684
    return-void

    .line 1661
    :pswitch_0
    iput-object v1, p0, Lage;->b:Landroid/view/View;

    .line 1662
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->c()V

    goto :goto_0

    .line 1666
    :pswitch_1
    iput-object v1, p0, Lage;->c:Landroid/view/View;

    .line 1667
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->c()V

    goto :goto_0

    .line 1671
    :pswitch_2
    iput-object v1, p0, Lage;->d:Landroid/view/View;

    .line 1672
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_1

    .line 1673
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->c()V

    goto :goto_0

    .line 1676
    :pswitch_3
    iput-object v1, p0, Lage;->e:Landroid/view/View;

    .line 1677
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->c()V

    goto :goto_0

    .line 1659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1712
    invoke-virtual {p0}, Lage;->f()V

    .line 1713
    iget-object v0, p0, Lage;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1714
    iget-object v0, p0, Lage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1716
    :cond_0
    iput-object v1, p0, Lage;->a:Landroid/graphics/Bitmap;

    .line 1717
    invoke-virtual {p0}, Lage;->b()V

    .line 1719
    iget-object v0, p0, Lage;->a:Lamr;

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lage;->a:Lamr;

    invoke-virtual {v0, v1}, Lamr;->a(Lamv;)V

    .line 1721
    iput-object v1, p0, Lage;->a:Lamr;

    .line 1724
    :cond_1
    iget-object v0, p0, Lage;->b:Lhk;

    if-eqz v0, :cond_2

    .line 1725
    iget-object v0, p0, Lage;->b:Lhk;

    invoke-static {v0}, Lhl;->a(Lhk;)V

    .line 1726
    iput-object v1, p0, Lage;->b:Lhk;

    .line 1729
    :cond_2
    iget-object v0, p0, Lage;->a:Lhk;

    if-eqz v0, :cond_3

    .line 1730
    iget-object v0, p0, Lage;->a:Lhk;

    invoke-static {v0}, Lhl;->a(Lhk;)V

    .line 1731
    iput-object v1, p0, Lage;->a:Lhk;

    .line 1734
    :cond_3
    iget-object v0, p0, Lage;->b:Landroid/widget/PopupWindow;

    invoke-static {v0}, Laox;->a(Landroid/widget/PopupWindow;)V

    .line 1735
    iget-object v0, p0, Lage;->a:Landroid/widget/PopupWindow;

    invoke-static {v0}, Laox;->a(Landroid/widget/PopupWindow;)V

    .line 1736
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    if-eqz v0, :cond_4

    .line 1737
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->b()V

    .line 1739
    :cond_4
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1740
    iget-object v0, p0, Lage;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1741
    iget-object v0, p0, Lage;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1742
    iput-object v1, p0, Lage;->a:Landroid/view/View$OnTouchListener;

    .line 1743
    iput-object v1, p0, Lage;->f:Landroid/view/View;

    .line 1745
    :cond_5
    iget-object v0, p0, Lage;->a:Lgy;

    if-eqz v0, :cond_6

    .line 1746
    iget-object v0, p0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 1747
    iget-object v0, p0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->b()V

    .line 1748
    iput-object v1, p0, Lage;->a:Lgy;

    .line 1751
    :cond_6
    iget-object v0, p0, Lage;->a:Lrr;

    if-eqz v0, :cond_7

    .line 1752
    iget-object v0, p0, Lage;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 1753
    iput-object v1, p0, Lage;->a:Lrr;

    .line 1755
    :cond_7
    iput-object v1, p0, Lage;->a:Landroid/view/View$OnTouchListener;

    .line 1756
    iput-object v1, p0, Lage;->b:Landroid/widget/PopupWindow;

    .line 1757
    iput-object v1, p0, Lage;->a:Landroid/widget/PopupWindow;

    .line 1758
    iput-object v1, p0, Lage;->a:Lsg;

    .line 1760
    iget-object v0, p0, Lage;->a:Lhr;

    if-eqz v0, :cond_8

    .line 1761
    iget-object v0, p0, Lage;->a:Lhr;

    invoke-virtual {v0}, Lhr;->e()V

    .line 1763
    :cond_8
    iget-object v0, p0, Lage;->a:Lim;

    if-eqz v0, :cond_9

    .line 1764
    iget-object v0, p0, Lage;->a:Lim;

    invoke-virtual {v0}, Lim;->i()V

    .line 1766
    :cond_9
    iget-object v0, p0, Lage;->a:Ljf;

    if-eqz v0, :cond_a

    .line 1767
    iget-object v0, p0, Lage;->a:Ljf;

    invoke-virtual {v0}, Ljf;->i()V

    .line 1769
    :cond_a
    iget-object v0, p0, Lage;->a:Liu;

    if-eqz v0, :cond_b

    .line 1770
    iget-object v0, p0, Lage;->a:Liu;

    invoke-virtual {v0}, Liu;->i()V

    .line 1772
    :cond_b
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    if-eqz v0, :cond_c

    .line 1773
    iget-object v0, p0, Lage;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1775
    :cond_c
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    if-eqz v0, :cond_d

    .line 1776
    iget-object v0, p0, Lage;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1778
    :cond_d
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    if-eqz v0, :cond_e

    .line 1779
    iget-object v0, p0, Lage;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    :cond_e
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    if-eqz v0, :cond_f

    .line 1782
    iget-object v0, p0, Lage;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    :cond_f
    iget-object v0, p0, Lage;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1786
    iget-object v0, p0, Lage;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1787
    iget-object v0, p0, Lage;->c:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1788
    iget-object v0, p0, Lage;->d:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1789
    iget-object v0, p0, Lage;->e:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1790
    iget-object v0, p0, Lage;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1792
    iput-object v1, p0, Lage;->a:Landroid/widget/RelativeLayout;

    .line 1793
    iput-object v1, p0, Lage;->a:Landroid/view/View;

    .line 1794
    iput-object v1, p0, Lage;->a:Landroid/widget/LinearLayout;

    .line 1795
    iput-object v1, p0, Lage;->b:Landroid/view/View;

    .line 1796
    iput-object v1, p0, Lage;->c:Landroid/view/View;

    .line 1797
    iput-object v1, p0, Lage;->d:Landroid/view/View;

    .line 1798
    iput-object v1, p0, Lage;->e:Landroid/view/View;

    .line 1799
    iput-object v1, p0, Lage;->b:Landroid/widget/RelativeLayout;

    .line 1800
    invoke-virtual {p0}, Lage;->n()V

    .line 1801
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 1804
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 1805
    return-void
.end method
