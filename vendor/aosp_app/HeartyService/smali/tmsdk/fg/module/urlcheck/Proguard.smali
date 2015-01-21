.class public final Ltmsdk/fg/module/urlcheck/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    const-class v1, Ltmsdk/fg/module/urlcheck/UrlCheckManager;

    invoke-static {v1}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v0

    check-cast v0, Ltmsdk/fg/module/urlcheck/UrlCheckManager;

    .line 10
    .local v0, urlcheckmanager:Ltmsdk/fg/module/urlcheck/UrlCheckManager;
    invoke-virtual {v0, v2}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->checkUrl(Ljava/lang/String;)Ltmsdk/common/module/urlcheck/UrlCheckResult;

    .line 11
    invoke-virtual {v0, v2}, Ltmsdk/fg/module/urlcheck/UrlCheckManager;->checkUrlEx(Ljava/util/List;)Ljava/util/Map;

    .line 12
    return-void
.end method
