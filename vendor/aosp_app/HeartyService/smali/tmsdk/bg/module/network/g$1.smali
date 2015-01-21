.class Ltmsdk/bg/module/network/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wa:Ltmsdk/bg/module/network/g;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/network/g;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Ltmsdk/bg/module/network/g$1;->wa:Ltmsdk/bg/module/network/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 1
    .parameter "updateInfo"

    .prologue
    .line 56
    iget-object v0, p0, Ltmsdk/bg/module/network/g$1;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v0}, Ltmsdk/bg/module/network/g;->a(Ltmsdk/bg/module/network/g;)I

    .line 57
    return-void
.end method
