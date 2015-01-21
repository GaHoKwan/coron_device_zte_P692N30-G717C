.class public final Ltmsdkobf/lb;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private BA:Ltmsdkobf/lc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/la;)Ltmsdkobf/la;
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    invoke-static {}, Ltmsdkobf/lb;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/lb;->BA:Ltmsdkobf/lc;

    invoke-virtual {v0, p1}, Ltmsdkobf/lc;->a(Ltmsdkobf/la;)Ltmsdkobf/la;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    new-instance v0, Ltmsdkobf/lc;

    invoke-direct {v0}, Ltmsdkobf/lc;-><init>()V

    iput-object v0, p0, Ltmsdkobf/lb;->BA:Ltmsdkobf/lc;

    .line 16
    iget-object v0, p0, Ltmsdkobf/lb;->BA:Ltmsdkobf/lc;

    invoke-virtual {v0, p1}, Ltmsdkobf/lc;->onCreate(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Ltmsdkobf/lb;->BA:Ltmsdkobf/lc;

    invoke-virtual {p0, v0}, Ltmsdkobf/lb;->a(Ltmsdk/common/BaseManager;)V

    .line 18
    return-void
.end method
