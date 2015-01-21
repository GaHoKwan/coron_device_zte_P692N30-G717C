.class public final Ltmsdk/bg/module/location/LocationManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private uG:Ltmsdk/bg/module/location/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "provinceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Ltmsdk/bg/module/location/LocationManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/a;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 25
    invoke-static {}, Ltmsdk/bg/module/location/LocationManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, ""

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/a;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .parameter "country"
    .parameter "location"
    .parameter "operator"
    .parameter "telNumString"

    .prologue
    .line 39
    invoke-static {}, Ltmsdk/bg/module/location/LocationManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltmsdk/bg/module/location/a;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProvinceNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ltmsdk/bg/module/location/LocationManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0}, Ltmsdk/bg/module/location/a;->getProvinceNameList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public isYellowPageNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "telNumString"

    .prologue
    .line 50
    invoke-static {}, Ltmsdk/bg/module/location/LocationManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/a;->bO(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Ltmsdk/bg/module/location/a;

    invoke-direct {v0}, Ltmsdk/bg/module/location/a;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    .line 82
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/a;->onCreate(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Ltmsdk/bg/module/location/LocationManager;->uG:Ltmsdk/bg/module/location/a;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/location/LocationManager;->a(Ltmsdk/common/BaseManager;)V

    .line 86
    const v0, 0x1d4e4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 87
    return-void
.end method
