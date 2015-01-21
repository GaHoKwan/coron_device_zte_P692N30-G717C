.class Lcom/autonavi/xmgd/naviservice/p;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;
.implements Lcom/autonavi/xmgd/naviservice/e;
.implements Lcom/autonavi/xmgd/naviservice/i;
.implements Lcom/autonavi/xmgd/naviservice/k;
.implements Lcom/autonavi/xmgd/naviservice/m;
.implements Lcom/autonavi/xmgd/naviservice/v;
.implements Lcom/autonavi/xmgd/naviservice/x;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private synthetic c:Lcom/autonavi/xmgd/naviservice/n;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/naviservice/n;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/p;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xmgd/naviservice/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/p;-><init>(Lcom/autonavi/xmgd/naviservice/n;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->t()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public B()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->m()I

    move-result v0

    return v0
.end method

.method public C()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/q;->c()I

    move-result v0

    return v0
.end method

.method public D()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->h()I

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/w;->e()Z

    move-result v0

    return v0
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xmgd/naviservice/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/u;->b(Lcom/autonavi/xmgd/naviservice/v;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/h;->b(Lcom/autonavi/xmgd/naviservice/i;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/w;->b(Lcom/autonavi/xmgd/naviservice/x;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->c()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/l;->b(Lcom/autonavi/xmgd/naviservice/m;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/q;->b()V

    return-void
.end method

.method public N()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/p;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_Startup(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Z)Z

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Up, status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/naviservice/n;->b(Lcom/autonavi/xmgd/naviservice/n;Z)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xmgd/naviservice/k;)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/naviservice/u;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/naviservice/u;->a(Lcom/autonavi/xmgd/naviservice/v;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Safe;)Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;)Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v2}, Lcom/autonavi/xmgd/naviservice/n;->b(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v3}, Lcom/autonavi/xmgd/naviservice/n;->c(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v4}, Lcom/autonavi/xmgd/naviservice/n;->d(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Lcom/autonavi/xm/navigation/engine/GDBL_Safe;Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Config;)Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v1}, Lcom/autonavi/xmgd/naviservice/n;->e(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Config;)Lcom/autonavi/xmgd/naviservice/l;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xmgd/naviservice/m;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/naviservice/h;->a(Lcom/autonavi/xmgd/naviservice/i;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/naviservice/w;->a(Lcom/autonavi/xmgd/naviservice/x;)V

    iput-boolean v6, p0, Lcom/autonavi/xmgd/naviservice/p;->b:Z

    goto/16 :goto_0
.end method

.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(I[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_H:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    invoke-virtual {p0, v0, p2}, Lcom/autonavi/xmgd/naviservice/p;->a(Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;[I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DISPLAY_ORIENTATION:Lcom/autonavi/xm/navigation/server/GParam;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_H:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_V:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    invoke-virtual {p0, v0, p2}, Lcom/autonavi/xmgd/naviservice/p;->a(Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;[I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_DISPLAY_ORIENTATION:Lcom/autonavi/xm/navigation/server/GParam;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->G_DISPLAY_ORIENTATION_V:Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v0, v3

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/mobilebox/tts/g;->a()Lcom/mobilebox/tts/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobilebox/tts/g;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/u;->a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/u;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a([Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/h;->a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/h;->a([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/f;->b(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[NaviBinder] onRouteCalculateResult"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/f;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/f;->a(Landroid/location/Location;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;[I)V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/map/GDisplayOrientation;[I)V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/f;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/g;)V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/naviservice/g;)V

    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/q;->b(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/GCoord;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xm/navigation/server/GCoord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 7

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/application/Resource;->mMekVersion:Ljava/lang/String;

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.autonavi.xmgd.citydata.SERVICE_START_DATAUPDATE_SERVICE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "mHttpurl"

    const-string v6, "http://mlbs.autonavi.com/datadown"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAssetsPath"

    sget-object v6, Lcom/autonavi/xmgd/application/NaviApplication;->ASSETSDATA:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mNaviDataPath"

    sget-object v6, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mMapDataPath"

    const-string v6, "data/"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSyscode"

    const/16 v6, 0x4c3c

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "mRequestMapVersion"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mEngineVersion"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mApkVersion"

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/xmgd/application/Resource;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mImei"

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v2, "[NaviLogic]startDataUpdateService"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/f;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/f;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/g;)V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/naviservice/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/q;->c(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/j;->c(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->e(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/n;->f(Lcom/autonavi/xmgd/naviservice/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_CreateView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/naviservice/n;->c(Lcom/autonavi/xmgd/naviservice/n;Z)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/n;->f(Lcom/autonavi/xmgd/naviservice/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {v0}, Lcom/autonavi/xmgd/naviservice/n;->a(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_DestroyView()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->c:Lcom/autonavi/xmgd/naviservice/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/naviservice/n;->c(Lcom/autonavi/xmgd/naviservice/n;Z)Z

    :cond_0
    return-void
.end method

.method public e(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->d(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->d()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->e(I)Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->e()I

    move-result v0

    return v0
.end method

.method public f(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/w;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/u;->f(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->m(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->h()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->o()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCityNoData(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/f;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoginFailed()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoginNetError(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/f;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNaviDayNightChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/f;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNaviSettingChanged(III)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/xmgd/naviservice/f;->a(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTMCStatusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateFailed()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/f;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateNetError(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/f;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->n()Z

    move-result v0

    return v0
.end method

.method public p(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->r(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pSoundFun(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pSoundFun, pSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[z1]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/autonavi/xmgd/naviservice/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->r()I

    move-result v0

    return v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->s(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->q()I

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->u(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->j()Z

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->k()I

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/p;->t()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->i()[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->p()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/u;->a()Lcom/autonavi/xmgd/naviservice/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/u;->s()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    return-object v0
.end method
