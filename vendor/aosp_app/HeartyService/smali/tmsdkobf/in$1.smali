.class Ltmsdkobf/in$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/in;->f(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ru:Ljava/util/List;

.field final synthetic rv:Ltmsdkobf/in;


# direct methods
.method constructor <init>(Ltmsdkobf/in;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Ltmsdkobf/in$1;->rv:Ltmsdkobf/in;

    iput-object p2, p0, Ltmsdkobf/in$1;->ru:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, errorCode:I
    iget-object v3, p0, Ltmsdkobf/in$1;->ru:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltmsdkobf/in$1;->ru:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 94
    :cond_0
    const/4 v0, -0x6

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const v3, 0x10000001

    invoke-static {v3}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v2

    .line 100
    .local v2, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "phonetype"

    iget-object v4, p0, Ltmsdkobf/in$1;->rv:Ltmsdkobf/in;

    invoke-static {v4}, Ltmsdkobf/in;->a(Ltmsdkobf/in;)Ltmsdkobf/lf;

    move-result-object v4

    invoke-interface {v4}, Ltmsdkobf/lf;->gb()Ltmsdkobf/ao;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "userinfo"

    iget-object v4, p0, Ltmsdkobf/in$1;->rv:Ltmsdkobf/in;

    invoke-static {v4}, Ltmsdkobf/in;->a(Ltmsdkobf/in;)Ltmsdkobf/lf;

    move-result-object v4

    invoke-interface {v4}, Ltmsdkobf/lf;->gc()Ltmsdkobf/cj;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "req"

    iget-object v4, p0, Ltmsdkobf/in$1;->rv:Ltmsdkobf/in;

    iget-object v5, p0, Ltmsdkobf/in$1;->ru:Ljava/util/List;

    invoke-static {v4, v5}, Ltmsdkobf/in;->a(Ltmsdkobf/in;Ljava/util/List;)Ltmsdkobf/b;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object v1, v2, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 111
    iget-object v3, p0, Ltmsdkobf/in$1;->rv:Ltmsdkobf/in;

    invoke-static {v3}, Ltmsdkobf/in;->a(Ltmsdkobf/in;)Ltmsdkobf/lf;

    move-result-object v3

    invoke-interface {v3, v2}, Ltmsdkobf/lf;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0
.end method
