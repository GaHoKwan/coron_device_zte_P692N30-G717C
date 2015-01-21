.class public Lcom/zte/heartyservice/privacy/AppLockActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "AppLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    }
.end annotation


# static fields
.field private static mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;


# instance fields
.field private lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

.field private lockedList:Landroid/widget/ListView;

.field private lockedListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lower_half:Landroid/widget/LinearLayout;

.field private mActionBar:Landroid/app/ActionBar;

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLockedApp:Landroid/view/View;

.field private unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

.field private unLockedList:Landroid/widget/ListView;

.field private unLockedListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upper_half:Landroid/widget/LinearLayout;

.field private whole:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->whole:Landroid/widget/LinearLayout;

    .line 47
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lower_half:Landroid/widget/LinearLayout;

    .line 237
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockActivity$2;-><init>(Lcom/zte/heartyservice/privacy/AppLockActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/AppLockActivity;)Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/AppLockActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/AppLockActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/AppLockActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->sort()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/AppLockActivity;)Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    return-object v0
.end method

.method public static addLockedApp(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 265
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->sort()V

    .line 269
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->notifyDataSetChanged()V

    .line 272
    :cond_0
    return-void
.end method

.method private initListItem()V
    .locals 8

    .prologue
    .line 92
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAllLockedPackages()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, localAllLockedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    .line 95
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, mainActivitys:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 99
    .local v2, localResolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 100
    .local v5, pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    const/4 v6, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v2           #localResolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v6, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    const-string v7, "com.zte.heartyservice"

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->sort()V

    .line 111
    return-void
.end method

.method public static removeLockedApp(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 251
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeLockedPackage(Ljava/lang/String;)Z

    .line 252
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->notifyDataSetChanged()V

    .line 257
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->notifyDataSetChanged()V

    .line 262
    :cond_1
    return-void
.end method

.method private sort()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 207
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 208
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 211
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .local v1, ul:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lower_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .local v0, ll:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 217
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->whole:Landroid/widget/LinearLayout;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 218
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 219
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 220
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 222
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 223
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_2
    :goto_0
    return-void

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->whole:Landroid/widget/LinearLayout;

    const/high16 v3, -0x4080

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 226
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 227
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 228
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 230
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 231
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 53
    return-void
.end method

.method protected initActionBar()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a040a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a040c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sput-object p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    .line 60
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->initActionBar()V

    .line 62
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->whole:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->upper_half:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lower_half:Landroid/widget/LinearLayout;

    .line 65
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedList:Landroid/widget/ListView;

    .line 66
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedList:Landroid/widget/ListView;

    .line 67
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->initListItem()V

    .line 68
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedListItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;-><init>(Lcom/zte/heartyservice/privacy/AppLockActivity;Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    .line 69
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedListItems:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v3}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;-><init>(Lcom/zte/heartyservice/privacy/AppLockActivity;Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    .line 70
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->unLockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->lockedAppAdapter:Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;

    new-instance v1, Lcom/zte/heartyservice/privacy/AppLockActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/AppLockActivity$1;-><init>(Lcom/zte/heartyservice/privacy/AppLockActivity;)V

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 89
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mNoLockedApp:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/AppLockActivity;->mAppLockActivity:Lcom/zte/heartyservice/privacy/AppLockActivity;

    .line 247
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 248
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 277
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 278
    return-void
.end method
