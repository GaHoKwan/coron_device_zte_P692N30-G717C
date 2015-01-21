.class final Ltmsdk/bg/module/network/e;
.super Ltmsdk/bg/module/network/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/network/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/network/INetworkInfoDao;Ltmsdk/bg/module/network/f;)V
    .locals 1
    .parameter "dao"
    .parameter "netInterfaceManager"

    .prologue
    .line 11
    new-instance v0, Ltmsdk/bg/module/network/e$a;

    invoke-direct {v0, p2}, Ltmsdk/bg/module/network/e$a;-><init>(Ltmsdk/bg/module/network/f;)V

    invoke-direct {p0, v0, p1}, Ltmsdk/bg/module/network/d;-><init>(Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)V

    .line 13
    return-void
.end method
