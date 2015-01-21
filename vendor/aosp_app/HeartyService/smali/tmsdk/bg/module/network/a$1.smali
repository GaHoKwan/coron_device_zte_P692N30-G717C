.class Ltmsdk/bg/module/network/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/la;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/bg/module/network/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uM:Ltmsdk/bg/module/network/a;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/network/a;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Ltmsdk/bg/module/network/a$1;->uM:Ltmsdk/bg/module/network/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bT(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 60
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 61
    .local v0, pkgs:[Ljava/lang/String;
    iget-object v1, p0, Ltmsdk/bg/module/network/a$1;->uM:Ltmsdk/bg/module/network/a;

    invoke-virtual {v1, v0}, Ltmsdk/bg/module/network/a;->clearTrafficInfo([Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public bQ(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 47
    return-void
.end method

.method public bR(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 52
    return-void
.end method

.method public bS(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/a$1;->bT(Ljava/lang/String;)V

    .line 57
    return-void
.end method
