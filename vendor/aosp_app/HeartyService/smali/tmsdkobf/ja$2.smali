.class final Ltmsdkobf/ja$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ky$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/ky$c;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 843
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

    .line 844
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;)V

    goto :goto_0

    .line 846
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method

.method public a(Ltmsdkobf/ky$c;I)V
    .locals 3
    .parameter "info"
    .parameter "activeCount"

    .prologue
    .line 837
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

    .line 838
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1, p2}, Ltmsdkobf/ky$a;->a(Ltmsdkobf/ky$c;I)V

    goto :goto_0

    .line 840
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method

.method public b(Ltmsdkobf/ky$c;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 849
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

    .line 850
    .local v1, observer:Ltmsdkobf/ky$a;
    invoke-interface {v1, p1}, Ltmsdkobf/ky$a;->b(Ltmsdkobf/ky$c;)V

    goto :goto_0

    .line 852
    .end local v1           #observer:Ltmsdkobf/ky$a;
    :cond_0
    return-void
.end method
