.class public final Ltmsdkobf/hl;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private pQ:I

.field private pR:Z

.field private pS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/hl;->pQ:I

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v0}, Ltmsdkobf/hm;->bd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFeature()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v0

    .line 49
    .local v0, gotRoot:Z
    iget v4, p0, Ltmsdkobf/hl;->pQ:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Ltmsdkobf/hl;->pR:Z

    if-ne v4, v0, :cond_0

    .line 50
    iget v4, p0, Ltmsdkobf/hl;->pQ:I

    .line 69
    :goto_0
    return v4

    .line 53
    :cond_0
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "cat /proc/net/ip_tables_names"

    aput-object v5, v4, v6

    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, tableNames:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "cat /proc/net/ip_tables_matches"

    aput-object v5, v4, v6

    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, tableMatches:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "cat /proc/net/ip_tables_targets"

    aput-object v5, v4, v6

    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, tableTargets:Ljava/lang/String;
    iput-boolean v0, p0, Ltmsdkobf/hl;->pR:Z

    .line 57
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 58
    :cond_1
    iput v6, p0, Ltmsdkobf/hl;->pQ:I

    .line 59
    iget v4, p0, Ltmsdkobf/hl;->pQ:I

    goto :goto_0

    .line 62
    :cond_2
    const-string v4, "filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "owner"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 63
    :cond_3
    iput v6, p0, Ltmsdkobf/hl;->pQ:I

    .line 69
    :goto_1
    iget v4, p0, Ltmsdkobf/hl;->pQ:I

    goto :goto_0

    .line 64
    :cond_4
    const-string v4, "MARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/net/netfilter/nfnetlink_queue"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    const/4 v4, 0x2

    iput v4, p0, Ltmsdkobf/hl;->pQ:I

    goto :goto_1

    .line 67
    :cond_5
    iput v7, p0, Ltmsdkobf/hl;->pQ:I

    goto :goto_1
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
    .line 121
    iget-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v0, p1}, Ltmsdkobf/hm;->d(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public init(Ljava/util/List;)Z
    .locals 6
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
    .line 77
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/netsetting/Rule;>;"
    iget-object v4, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v4}, Ltmsdkobf/hm;->bc(Ljava/lang/String;)Z

    move-result v3

    .line 79
    .local v3, success:Z
    if-eqz v3, :cond_4

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, notAcceptRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/netsetting/Rule;

    .line 82
    .local v2, rule:Ltmsdk/common/module/netsetting/Rule;
    iget v4, v2, Ltmsdk/common/module/netsetting/Rule;->type:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    const-string v5, "ACCEPT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    const-string v5, "ACCEPT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    const-string v5, "ACCEPT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v2           #rule:Ltmsdk/common/module/netsetting/Rule;
    :cond_3
    invoke-virtual {p0, v1}, Ltmsdkobf/hl;->setRules(Ljava/util/List;)V

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #notAcceptRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    :cond_4
    return v3

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v0}, Ltmsdkobf/hm;->bb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    const-string v0, "firewall-2.0.2.dat"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 103
    iget-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v0, p1}, Ltmsdkobf/hm;->b(Ljava/lang/String;Z)Z

    .line 104
    return-void
.end method

.method public setRule(Ltmsdk/common/module/netsetting/Rule;)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0, v0}, Ltmsdkobf/hl;->setRules(Ljava/util/List;)V

    .line 114
    return-void
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
    .line 117
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/netsetting/Rule;>;"
    iget-object v0, p0, Ltmsdkobf/hl;->pS:Ljava/lang/String;

    invoke-static {v0, p1}, Ltmsdkobf/hm;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 118
    return-void
.end method
