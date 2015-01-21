.class public Lcom/zte/zdm/mos/fumo/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/e;


# instance fields
.field private a:Lcom/zte/zdm/mos/fumo/FumoSession;

.field private b:Lcom/zte/zdm/mos/fumo/g;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/mos/fumo/FumoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mos/fumo/g;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/mos/fumo/g;->a(II)V

    return-void
.end method

.method public a(Lcom/zte/zdm/mos/fumo/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mos/fumo/g;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "notifyDownloadMetaAlertNeeded"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1, p2}, Lcom/zte/zdm/mos/fumo/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "after onConfirmDownload to waitUserResponse"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(I)V

    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->u()V

    return-void
.end method

.method public b(I)V
    .locals 1

    const-string v0, "notifyProgressBarNeeded"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mos/fumo/g;->a(I)V

    return-void
.end method

.method public b(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fumoSessionPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onNotifyMoAbort(),enter fumo_session_report exception."

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/mos/fumo/g;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "onNotifyMoAbort(),enter fumo_session dm exception."

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->h()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p2}, Lcom/zte/zdm/mos/fumo/g;->b(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string v0, "onNotifyMoAbort(),enter fumo_session_report exception."

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FUMO_SESSION_REPORT : error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/mos/fumo/g;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const-string v0, "notify dmsession completed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->v()V

    return-void
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFumoBroken errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/mos/fumo/FumoSession;->b(I)I

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->v()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mos/fumo/g;->f(I)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    const/16 v3, 0x32

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/zdm/mos/fumo/c;->c:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->c()V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->c()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/fumo/FumoSession;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/zdm/mos/fumo/c;->b:Lcom/zte/zdm/mos/fumo/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/zte/zdm/mos/fumo/FumoSession;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->i()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDlSessionCompleted,FumoOperation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/b;->a:Lcom/zte/zdm/mos/fumo/FumoSession;

    invoke-virtual {v1}, Lcom/zte/zdm/mos/fumo/FumoSession;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const-string v0, "notifyDelayUpdate()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->d()V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "notifyNoUpdatePackage Enter"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->g()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->f()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    const-string v0, "fumo observer notifyDlSessionPaused()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->j()V

    return-void
.end method

.method public l()V
    .locals 1

    const-string v0, "fumo observer notifyDlSessionSendNotification()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->k()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->p()Z

    return-void
.end method

.method public n()Lcom/zte/zdm/d/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->t()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/b;->b:Lcom/zte/zdm/mos/fumo/g;

    invoke-interface {v0}, Lcom/zte/zdm/mos/fumo/g;->w()V

    return-void
.end method
