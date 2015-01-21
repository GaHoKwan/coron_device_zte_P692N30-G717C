.class Ltmsdkobf/ja$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ky$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ja;->dN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sP:Ltmsdkobf/ja;


# direct methods
.method constructor <init>(Ltmsdkobf/ja;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Ltmsdkobf/ja$1;->sP:Ltmsdkobf/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/ky$c;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 796
    invoke-static {}, Ltmsdkobf/ja;->dR()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ky$a;

    .line 797
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;)V

    goto :goto_0

    .line 799
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method

.method public a(Ltmsdkobf/ky$c;I)V
    .locals 3
    .parameter "info"
    .parameter "activeCount"

    .prologue
    .line 790
    invoke-static {}, Ltmsdkobf/ja;->dR()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ky$a;

    .line 791
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1, p2}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    goto :goto_0

    .line 793
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method

.method public b(Ltmsdkobf/ky$c;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 802
    invoke-static {}, Ltmsdkobf/ja;->dR()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ky$a;

    .line 803
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1}, Ltmsdkobf/ky$a;->b(Ltmsdkobf/ky$c;)V

    goto :goto_0

    .line 805
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method
