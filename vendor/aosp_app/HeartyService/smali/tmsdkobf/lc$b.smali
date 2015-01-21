.class final Ltmsdkobf/lc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/la;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private BD:Ltmsdkobf/la;


# direct methods
.method public constructor <init>(Ltmsdkobf/la;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Ltmsdkobf/lc$b;->BD:Ltmsdkobf/la;

    .line 210
    return-void
.end method

.method static synthetic a(Ltmsdkobf/lc$b;)Ltmsdkobf/la;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Ltmsdkobf/lc$b;->BD:Ltmsdkobf/la;

    return-object v0
.end method


# virtual methods
.method public final bQ(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 222
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdkobf/lc$b$2;

    invoke-direct {v1, p0, p1}, Ltmsdkobf/lc$b$2;-><init>(Ltmsdkobf/lc$b;Ljava/lang/String;)V

    const-string v2, "onPackageRemovedThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method public bR(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 232
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdkobf/lc$b$3;

    invoke-direct {v1, p0, p1}, Ltmsdkobf/lc$b$3;-><init>(Ltmsdkobf/lc$b;Ljava/lang/String;)V

    const-string v2, "onPackageReinstallThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method

.method public final bS(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 213
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdkobf/lc$b$1;

    invoke-direct {v1, p0, p1}, Ltmsdkobf/lc$b$1;-><init>(Ltmsdkobf/lc$b;Ljava/lang/String;)V

    const-string v2, "onPackageAddedThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    instance-of v1, p1, Ltmsdkobf/lc$b;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Ltmsdkobf/lc$b;

    .line 244
    .local v0, other:Ltmsdkobf/lc$b;
    iget-object v1, p0, Ltmsdkobf/lc$b;->BD:Ltmsdkobf/la;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Ltmsdkobf/lc$b;->BD:Ltmsdkobf/la;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 246
    .end local v0           #other:Ltmsdkobf/lc$b;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
