.class Ltmsdkobf/hc$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$c;->c(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pa:Ltmsdk/common/module/aresengine/SmsEntity;

.field final synthetic pf:Ltmsdkobf/hc$c;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$c;Ltmsdk/common/module/aresengine/SmsEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Ltmsdkobf/hc$c$1;->pf:Ltmsdkobf/hc$c;

    iput-object p2, p0, Ltmsdkobf/hc$c$1;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    iget-object v2, p0, Ltmsdkobf/hc$c$1;->pf:Ltmsdkobf/hc$c;

    iget-object v3, p0, Ltmsdkobf/hc$c$1;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-static {v2, v3, v1}, Ltmsdkobf/hc$c;->a(Ltmsdkobf/hc$c;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ib;>;"
    iget-object v2, p0, Ltmsdkobf/hc$c$1;->pf:Ltmsdkobf/hc$c;

    iget-object v3, p0, Ltmsdkobf/hc$c$1;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-static {v2, v0, v3, v1}, Ltmsdkobf/hc$c;->a(Ltmsdkobf/hc$c;Ljava/util/List;Ltmsdk/common/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method
