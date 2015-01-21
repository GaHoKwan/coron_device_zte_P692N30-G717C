.class public Lwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/ExpandableListView;

.field private a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Lxb;

.field private a:Lxx;

.field private a:Lyv;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lwy;->a:I

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lwy;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "DownloadedTab"

    iput-object v0, p0, Lwy;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwy;->a:Z

    .line 39
    iput-object v1, p0, Lwy;->a:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lwy;->a:Lxx;

    .line 41
    iput-object v1, p0, Lwy;->a:Lyv;

    .line 42
    iput-object v1, p0, Lwy;->a:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lwy;->a:Lxb;

    .line 44
    iput-object v1, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    .line 45
    iput-object v1, p0, Lwy;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    .line 46
    iput-object v1, p0, Lwy;->a:Landroid/app/AlertDialog;

    .line 53
    iput-object p1, p0, Lwy;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    .line 54
    iget-object v0, p0, Lwy;->a:Lxx;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p1}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v0

    iput-object v0, p0, Lwy;->a:Lxx;

    .line 56
    :cond_0
    iget-object v0, p0, Lwy;->a:Lyv;

    if-nez v0, :cond_1

    .line 57
    invoke-static {p1}, Lyv;->a(Landroid/content/Context;)Lyv;

    move-result-object v0

    iput-object v0, p0, Lwy;->a:Lyv;

    .line 58
    :cond_1
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lwy;->a:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 32
    sput p0, Lwy;->a:I

    return p0
.end method

.method static synthetic a(Lwy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lwy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lwy;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lwy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lwy;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic a(Lwy;)Lcom/sohu/inputmethod/platform/AppManagerActivity;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    return-object v0
.end method

.method static synthetic a(Lwy;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lwy;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Lxx;

    return-object v0
.end method

.method static synthetic a(Lwy;)Lyv;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lwy;->a:Lyv;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lwy;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    return-void
.end method

.method static synthetic a(Lwy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lwy;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 389
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 382
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwy;->b(Ljava/lang/String;)V

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwy;->b(Ljava/lang/String;)V

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwy;->b(Ljava/lang/String;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lwy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lwy;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 410
    sget v0, Lwy;->a:I

    if-gez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    sget v0, Lwy;->a:I

    iget-object v1, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 412
    const-string v0, "mExpandedGroupPosition >=  mAppDownloadedInfoList.size()"

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 413
    sput v2, Lwy;->a:I

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    sget v1, Lwy;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 417
    sget-object v1, Lwy;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 419
    sput v2, Lwy;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 80
    iput-object p1, p0, Lwy;->a:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lwy;->a()V

    .line 82
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lwy;->b(Ljava/util/List;)V

    .line 83
    new-instance v0, Landroid/widget/ExpandableListView;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    .line 84
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 86
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 87
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lwy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lwy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 90
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 91
    iget-object v1, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 93
    new-instance v0, Lxb;

    invoke-direct {v0, p0}, Lxb;-><init>(Lwy;)V

    iput-object v0, p0, Lwy;->a:Lxb;

    .line 94
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lwy;->a:Lxb;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 109
    iget-object v0, p0, Lwy;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public a()V
    .locals 7

    .prologue
    .line 335
    const-string v0, "removeInvalidItem enter============================================================================="

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppDownloadedInfoList size ==========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 339
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 341
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appPackageName ============="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appVersionCode ============="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apkDownloadUrl ============="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 345
    const-string v0, ""

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preAppStatus================"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lwy;->a:Lyv;

    invoke-virtual {v0, v4, v2, v3}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 349
    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 351
    iget-object v0, p0, Lwy;->a:Lxx;

    invoke-virtual {v0, v2, v3}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v5, p0, Lwy;->a:Lyv;

    invoke-virtual {v5, v0}, Lyv;->c(Ljava/lang/String;)Z

    .line 353
    iget-object v0, p0, Lwy;->a:Lxx;

    invoke-virtual {v0, v4}, Lxx;->d(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lwy;->a:Lyv;

    invoke-virtual {v0, v4, v2, v3}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 355
    const-string v2, "preAppStatus == PlatformAppInfoManager.APP_STATUS_HAS_ADD && appStatus == PlatformAppInfoManager.APP_STATUS_NEED_INSTALL"

    invoke-direct {p0, v2}, Lwy;->b(Ljava/lang/String;)V

    :cond_0
    move v2, v0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStatus ============="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 358
    packed-switch v2, :pswitch_data_0

    .line 367
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 369
    goto/16 :goto_0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 364
    add-int/lit8 v0, v1, 0x1

    .line 365
    goto :goto_1

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppDownloadedInfoList size ==========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lwy;->b(Ljava/util/List;)V

    .line 372
    const-string v0, "removeInvalidItem leave============================================================================="

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 373
    return-void

    .line 358
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lwy;->a:Ljava/util/List;

    .line 77
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Lwy;->c()V

    .line 394
    iget-object v0, p0, Lwy;->a:Lxb;

    invoke-virtual {v0}, Lxb;->notifyDataSetChanged()V

    .line 395
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    iget-object v0, p0, Lwy;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 427
    iget-object v3, p0, Lwy;->a:Lyv;

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v6, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v3, v4, v5, v6}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 428
    sget v4, Lwy;->a:I

    if-ne v4, p3, :cond_0

    .line 429
    sget v0, Lwy;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    move-result v1

    .line 445
    :goto_0
    return v1

    .line 430
    :cond_0
    sget v4, Lwy;->a:I

    if-ltz v4, :cond_1

    .line 431
    sget v4, Lwy;->a:I

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 432
    :cond_1
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 433
    sput p3, Lwy;->a:I

    .line 434
    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    sput-object v0, Lwy;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v1

    goto :goto_0

    .line 437
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 438
    const-string v4, "appDetailData"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====================================context is null?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lwy;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;->b(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lwy;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 443
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 444
    iget-object v0, p0, Lwy;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0, v4, v2}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 440
    goto :goto_1
.end method
