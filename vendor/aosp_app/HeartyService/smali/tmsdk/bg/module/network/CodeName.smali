.class public final Ltmsdk/bg/module/network/CodeName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCode:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CodeName;->mCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/CodeName;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "name"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ltmsdk/bg/module/network/CodeName;->mCode:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Ltmsdk/bg/module/network/CodeName;->mName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ltmsdk/bg/module/network/CodeName;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p1, Ltmsdk/bg/module/network/CodeName;->mCode:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/bg/module/network/CodeName;->mCode:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Ltmsdk/bg/module/network/CodeName;->mName:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/bg/module/network/CodeName;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method
