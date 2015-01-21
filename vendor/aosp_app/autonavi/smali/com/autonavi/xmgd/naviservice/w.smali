.class public Lcom/autonavi/xmgd/naviservice/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/w;


# instance fields
.field private b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/x;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/w;->e:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/w;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/w;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/w;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    return-object v0
.end method

.method public static b()Lcom/autonavi/xmgd/naviservice/w;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    return-object v0
.end method

.method public static c()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    sget-object v0, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    sput-object v1, Lcom/autonavi/xmgd/naviservice/w;->a:Lcom/autonavi/xmgd/naviservice/w;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_SelectCity(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/x;->onCityNoData(I)V

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    iget-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/naviservice/x;->onTMCStatusChanged(Z)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Open()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    iput-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->e:Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v0, :cond_5

    iput-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    iget-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/naviservice/x;->onTMCStatusChanged(Z)V

    goto :goto_3

    :cond_5
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_6

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGDBLTmc.GDBL_Open Failed ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/x;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_SelectCity(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Open()Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Update()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/x;->onCityNoData(I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/x;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Close()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/j;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    iget-boolean v3, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/naviservice/x;->onTMCStatusChanged(Z)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    return v0
.end method

.method public onLoginFailed()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/x;->onLoginFailed()V

    iget-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/x;->onTMCStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoginNetError(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/x;->onLoginNetError(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateFailed()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/x;->onUpdateFailed()V

    iget-boolean v2, p0, Lcom/autonavi/xmgd/naviservice/w;->d:Z

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/x;->onTMCStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateNetError(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/x;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/x;->onUpdateNetError(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
