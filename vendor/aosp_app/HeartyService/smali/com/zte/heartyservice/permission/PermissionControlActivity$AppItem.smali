.class public Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItem"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mPermissionCategory:I

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private permissionType:I

.field private pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

.field private utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Landroid/content/pm/PackageInfo;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "pkgInfo"
    .parameter "mPermissionCategory"

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 75
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 80
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->appName:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 106
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->pm:Landroid/content/pm/PackageManager;

    .line 107
    iput p4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPermissionCategory:I

    .line 108
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->pm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 111
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p4, v1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPermissionCategory:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 117
    instance-of v0, p1, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .end local p1
    invoke-virtual {p1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->appName:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppinfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPermissonType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I

    return v0
.end method

.method public getPkginfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public setPermissonType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 86
    iput p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget v1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPermissionCategory:I

    iget-object v2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->permissionType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 88
    return-void
.end method
