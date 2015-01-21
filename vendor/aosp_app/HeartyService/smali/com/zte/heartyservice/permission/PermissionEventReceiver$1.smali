.class Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;
.super Ljava/lang/Object;
.source "PermissionEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PermissionEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$packages:[Ljava/lang/String;

.field final synthetic val$utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionEventReceiver;Landroid/content/Context;[Ljava/lang/String;Lcom/zte/heartyservice/permission/PermissionSettingUtils;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->this$0:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    iput-object p2, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$packages:[Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 225
    iget-object v8, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 227
    .local v7, pkgManager:Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v2, forbidUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$packages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 229
    .local v5, pkg:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 230
    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v8, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v9, 0x9

    invoke-virtual {v8, v9, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 247
    :goto_2
    if-eqz v6, :cond_0

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 251
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v8, p0, Lcom/zte/heartyservice/permission/PermissionEventReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applyIptablesRulesImpl(Ljava/util/List;)V

    .line 259
    return-void
.end method
