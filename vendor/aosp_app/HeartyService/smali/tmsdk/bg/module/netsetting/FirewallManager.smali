.class public Ltmsdk/bg/module/netsetting/FirewallManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/netsetting/FirewallManagerConsts;


# instance fields
.field private uJ:Ltmsdkobf/hl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0}, Ltmsdkobf/hl;->getEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0}, Ltmsdkobf/hl;->getFeature()I

    move-result v0

    return v0
.end method

.method public getRules(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->getRules(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/netsetting/Rule;>;"
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->init(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0}, Ltmsdkobf/hl;->isInited()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    new-instance v0, Ltmsdkobf/hl;

    invoke-direct {v0}, Ltmsdkobf/hl;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    .line 25
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->onCreate(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/netsetting/FirewallManager;->a(Ltmsdk/common/BaseManager;)V

    .line 27
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 66
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->setEnable(Z)V

    goto :goto_0
.end method

.method public setRule(Ltmsdk/common/module/netsetting/Rule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 88
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->setRule(Ltmsdk/common/module/netsetting/Rule;)V

    goto :goto_0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/netsetting/Rule;>;"
    invoke-static {}, Ltmsdk/bg/module/netsetting/FirewallManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/netsetting/FirewallManager;->uJ:Ltmsdkobf/hl;

    invoke-virtual {v0, p1}, Ltmsdkobf/hl;->setRules(Ljava/util/List;)V

    goto :goto_0
.end method
