.class public final Ltmsdk/fg/module/urlcheck/UrlCheckManager;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# instance fields
.field private Fz:Ltmsdk/fg/module/urlcheck/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/fg/creator/BaseManagerF;-><init>()V

    return-void
.end method


# virtual methods
.method public checkApkUrl(Ljava/lang/String;)I
    .locals 1
    .parameter "url"

    .prologue
    .line 74
    invoke-static {}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/urlcheck/a;->checkApkUrl(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public checkUrl(Ljava/lang/String;)Ltmsdk/common/module/urlcheck/UrlCheckResult;
    .locals 1
    .parameter "url"

    .prologue
    .line 42
    invoke-static {}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/urlcheck/a;->checkUrl(Ljava/lang/String;)Ltmsdk/common/module/urlcheck/UrlCheckResult;

    move-result-object v0

    goto :goto_0
.end method

.method public checkUrlEx(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltmsdk/common/module/urlcheck/UrlCheckResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/urlcheck/a;->checkUrlEx(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    new-instance v0, Ltmsdk/fg/module/urlcheck/a;

    invoke-direct {v0}, Ltmsdk/fg/module/urlcheck/a;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    .line 25
    iget-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/urlcheck/a;->onCreate(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->Fz:Ltmsdk/fg/module/urlcheck/a;

    invoke-virtual {p0, v0}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->a(Ltmsdk/common/BaseManager;)V

    .line 29
    const v0, 0x1d4e5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 30
    return-void
.end method
