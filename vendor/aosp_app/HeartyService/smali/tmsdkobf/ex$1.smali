.class final Ltmsdkobf/ex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ex;->k(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lq:Ltmsdkobf/ex;


# direct methods
.method constructor <init>(Ltmsdkobf/ex;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 141
    iget-object v0, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-virtual {v0}, Ltmsdkobf/ex;->ah()J

    move-result-wide v0

    .line 142
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 143
    sub-long/2addr v0, v2

    .line 144
    iget-object v4, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-virtual {v4}, Ltmsdkobf/ex;->bd()Ltmsdkobf/eo;

    move-result-object v4

    .line 145
    if-eqz v4, :cond_0

    .line 147
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 150
    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {v4, p0, v0, v1}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;J)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "rqdp{  next day to upload}"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-virtual {v0}, Ltmsdkobf/ex;->ab()Z

    .line 157
    iget-object v0, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-virtual {v0}, Ltmsdkobf/ex;->ao()J

    move-result-wide v0

    .line 158
    iget-object v5, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    invoke-virtual {v5, v0, v1}, Ltmsdkobf/ex;->i(J)V

    .line 159
    sub-long v5, v0, v2

    invoke-virtual {v4, p0, v5, v6}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;J)V

    .line 161
    const-string v4, "rqdp{ next day %d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Ltmsdkobf/ex$1;->lq:Ltmsdkobf/ex;

    const/4 v1, 0x2

    invoke-virtual {v0}, Ltmsdkobf/ex;->bd()Ltmsdkobf/eo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ltmsdkobf/ex$2;

    invoke-direct {v3, v0, v1}, Ltmsdkobf/ex$2;-><init>(Ltmsdkobf/ex;B)V

    invoke-virtual {v2, v3}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
