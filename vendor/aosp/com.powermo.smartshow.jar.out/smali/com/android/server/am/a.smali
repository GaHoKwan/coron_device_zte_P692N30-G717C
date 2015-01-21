.class public Lcom/android/server/am/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/Object;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/a;->d:I

    iput-object p1, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/a;->f:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->isHome:Z

    iput-boolean v1, p0, Lcom/android/server/am/a;->b:Z

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getComponentName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/a;->c:Ljava/lang/String;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.force_fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/android/server/am/a;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/a;->d:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getCameraFlag()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/a;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDstDisplayId()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isKeyGuardOn:Z

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getOrientation()I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getScreen()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isBuiltIn()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isCover()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->fixedScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
