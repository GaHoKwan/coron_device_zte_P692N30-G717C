.class final Lcom/nuance/dragon/toolkit/elvis/a$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$a;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->b(Lcom/nuance/dragon/toolkit/elvis/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    const-string v1, "~s"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraintByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    const-string v1, "~l"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraintByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    const-string v2, "~s"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/Constraint;-><init>(Ljava/lang/String;)V

    const-string v2, "_CONSTRAINT_CLASS_START"

    const-string v3, "~s"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "~s"

    const-string v3, "~s"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "~s"

    const-string v3, "_CONSTRAINT_CLASS_END"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    const-string v2, "~l"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/Constraint;-><init>(Ljava/lang/String;)V

    const-string v2, "_CONSTRAINT_CLASS_START"

    const-string v3, "~l"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "~l"

    const-string v3, "~l"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "~l"

    const-string v3, "_CONSTRAINT_CLASS_END"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->addTransition(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nuance/dragon/toolkit/elvis/Constraint;

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraintByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Constraint;

    move-result-object v2

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getAlwaysRebuild()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->d()I

    move-result v2

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->c()I

    move-result v3

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->e()Z

    move-result v4

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getAlwaysRebuild()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;IIZZ)I

    move-result v0

    :goto_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->a(Lcom/nuance/dragon/toolkit/elvis/Constraint;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->e(Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getConstraints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Constraint not valid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/nuance/dragon/toolkit/elvis/Constraint;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  Skipping."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Constraint already exists in native Elvis: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error adding constraint to native Elvis: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Lcom/nuance/dragon/toolkit/elvis/a$a;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$a;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$a$3;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
