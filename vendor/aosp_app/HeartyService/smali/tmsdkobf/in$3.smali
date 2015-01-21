.class Ltmsdkobf/in$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/in;->p(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rv:Ltmsdkobf/in;

.field final synthetic ry:Z


# direct methods
.method constructor <init>(Ltmsdkobf/in;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Ltmsdkobf/in$3;->rv:Ltmsdkobf/in;

    iput-boolean p2, p0, Ltmsdkobf/in$3;->ry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 300
    iget-boolean v8, p0, Ltmsdkobf/in$3;->ry:Z

    if-eqz v8, :cond_6

    .line 301
    const-string v8, "Chord"

    const-string v9, "checkReportInfo() report begin"

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object v8, p0, Ltmsdkobf/in$3;->rv:Ltmsdkobf/in;

    invoke-static {v8}, Ltmsdkobf/in;->b(Ltmsdkobf/in;)V

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v4, reportSuis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    .line 310
    .local v0, actionStatsManager:Ltmsdkobf/im;
    invoke-virtual {v0}, Ltmsdkobf/im;->db()Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    :cond_0
    invoke-virtual {v0}, Ltmsdkobf/im;->de()Ljava/util/ArrayList;

    move-result-object v6

    .line 317
    .local v6, switchs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz v6, :cond_1

    .line 318
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_1
    invoke-virtual {v0}, Ltmsdkobf/im;->dd()Ljava/util/ArrayList;

    move-result-object v3

    .line 323
    .local v3, patterns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    :cond_2
    invoke-virtual {v0}, Ltmsdkobf/im;->dg()Ljava/util/ArrayList;

    move-result-object v2

    .line 329
    .local v2, multis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz v2, :cond_3

    .line 330
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 334
    :cond_3
    invoke-virtual {v0}, Ltmsdkobf/im;->dh()Ljava/util/ArrayList;

    move-result-object v7

    .line 335
    .local v7, usage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    if-eqz v7, :cond_4

    .line 336
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_4
    iget-object v8, p0, Ltmsdkobf/in$3;->rv:Ltmsdkobf/in;

    invoke-static {v8, v4}, Ltmsdkobf/in;->a(Ltmsdkobf/in;Ljava/util/ArrayList;)I

    move-result v5

    .line 341
    .local v5, retCode:I
    if-nez v5, :cond_5

    .line 343
    invoke-virtual {v0}, Ltmsdkobf/im;->dc()V

    .line 344
    invoke-virtual {v0}, Ltmsdkobf/im;->df()V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ltmsdkobf/im;->n(J)V

    .line 348
    :cond_5
    const-string v8, "Chord"

    const-string v9, "checkReportInfo() report end"

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    .end local v0           #actionStatsManager:Ltmsdkobf/im;
    .end local v1           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    .end local v2           #multis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    .end local v3           #patterns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    .end local v4           #reportSuis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    .end local v5           #retCode:I
    .end local v6           #switchs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    .end local v7           #usage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    :cond_6
    const/4 v8, 0x0

    invoke-static {v8}, Ltmsdkobf/in;->r(Z)Z

    .line 352
    return-void
.end method
