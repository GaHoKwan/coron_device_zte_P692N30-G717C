.class Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
    }
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mPkgInfo:Landroid/content/pm/PackageInfo;

.field public pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "pkgInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, children:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->context:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 108
    iput-object p4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->pm:Landroid/content/pm/PackageManager;

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->pm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->appName:Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->appName:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->appName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppPermissionStats()Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
    .locals 8

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, allowPermNum:I
    const/4 v2, 0x0

    .line 130
    .local v2, forbidPermNum:I
    const/4 v1, 0x0

    .line 131
    .local v1, askPermNum:I
    iget-object v6, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 132
    .local v5, pi:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    :cond_1
    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v6

    if-nez v6, :cond_2

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    :cond_2
    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v5           #pi:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    :cond_3
    new-instance v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;)V

    .line 140
    .local v4, mStats:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
    iput v0, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->allowPermNum:I

    .line 141
    iput v2, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->forbidPermNum:I

    .line 142
    iput v1, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->askPermNum:I

    .line 143
    return-object v4
.end method

.method public getAppinfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method
