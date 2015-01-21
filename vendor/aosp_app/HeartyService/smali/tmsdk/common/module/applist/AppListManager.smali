.class public Ltmsdk/common/module/applist/AppListManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private yN:Ltmsdk/common/module/applist/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;Ltmsdkobf/bw;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Ltmsdk/common/module/applist/AppListManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/applist/a;->contains(Ljava/lang/String;Ltmsdkobf/bw;)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAppList(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/bu;
    .locals 1
    .parameter "key"
    .parameter "filename"

    .prologue
    .line 57
    invoke-static {}, Ltmsdk/common/module/applist/AppListManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ltmsdkobf/bu;

    invoke-direct {v0}, Ltmsdkobf/bu;-><init>()V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/applist/a;->loadAppList(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/bu;

    move-result-object v0

    goto :goto_0
.end method

.method public loadAppList(Ltmsdkobf/bw;)Ltmsdkobf/bu;
    .locals 1
    .parameter "type"

    .prologue
    .line 43
    invoke-static {}, Ltmsdk/common/module/applist/AppListManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ltmsdkobf/bu;

    invoke-direct {v0}, Ltmsdkobf/bu;-><init>()V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/applist/a;->loadAppList(Ltmsdkobf/bw;)Ltmsdkobf/bu;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    new-instance v0, Ltmsdk/common/module/applist/a;

    invoke-direct {v0}, Ltmsdk/common/module/applist/a;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    .line 18
    iget-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/applist/a;->onCreate(Landroid/content/Context;)V

    .line 19
    iget-object v0, p0, Ltmsdk/common/module/applist/AppListManager;->yN:Ltmsdk/common/module/applist/a;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/applist/AppListManager;->a(Ltmsdk/common/BaseManager;)V

    .line 20
    return-void
.end method
