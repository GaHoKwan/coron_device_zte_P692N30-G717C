.class public Ltmsdk/common/module/software/SoftSimpleInfoEx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public expand:Ltmsdkobf/e;

.field public softSimpleInfo:Ltmsdkobf/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()Ltmsdkobf/e;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltmsdk/common/module/software/SoftSimpleInfoEx;->expand:Ltmsdkobf/e;

    return-object v0
.end method

.method public getSoftSimpleInfo()Ltmsdkobf/by;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/software/SoftSimpleInfoEx;->softSimpleInfo:Ltmsdkobf/by;

    return-object v0
.end method

.method public setExpand(Ltmsdkobf/e;)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 33
    iput-object p1, p0, Ltmsdk/common/module/software/SoftSimpleInfoEx;->expand:Ltmsdkobf/e;

    .line 34
    return-void
.end method

.method public setSoftSimpleInfo(Ltmsdkobf/by;)V
    .locals 0
    .parameter "softSimpleInfo"

    .prologue
    .line 25
    iput-object p1, p0, Ltmsdk/common/module/software/SoftSimpleInfoEx;->softSimpleInfo:Ltmsdkobf/by;

    .line 26
    return-void
.end method
