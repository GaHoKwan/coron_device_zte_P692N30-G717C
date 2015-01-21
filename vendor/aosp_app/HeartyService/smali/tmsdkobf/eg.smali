.class public Ltmsdkobf/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/fm;


# instance fields
.field private kG:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/eg;->kG:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Ltmsdkobf/eg;->kG:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ltmsdkobf/ek;)Z
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/jl;",
            ">;",
            "Ltmsdkobf/ek;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return v3

    .line 157
    :cond_0
    if-eqz p0, :cond_7

    .line 159
    invoke-virtual {p1}, Ltmsdkobf/ek;->aC()Landroid/util/SparseArray;

    move-result-object v7

    .line 160
    if-eqz v7, :cond_4

    move v6, v3

    move v2, v3

    .line 163
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 166
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ltmsdkobf/ek$a;

    .line 168
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    move v2, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/jl;

    .line 170
    iget v9, v0, Ltmsdkobf/jl;->mId:I

    iget v10, v1, Ltmsdkobf/ek$a;->jO:I

    if-ne v9, v10, :cond_d

    .line 174
    invoke-virtual {v1}, Ltmsdkobf/ek$a;->aF()Z

    move-result v2

    iget-boolean v9, v0, Ltmsdkobf/jl;->tB:Z

    if-eq v2, v9, :cond_1

    .line 176
    const-string v2, "rqdp{  mid:}%d rqdp{  , need detail changed:}%b "

    new-array v4, v11, [Ljava/lang/Object;

    iget v9, v0, Ltmsdkobf/jl;->mId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v3

    iget-boolean v9, v0, Ltmsdkobf/jl;->tB:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v2, v4}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-boolean v2, v0, Ltmsdkobf/jl;->tB:Z

    invoke-virtual {v1, v2}, Ltmsdkobf/ek$a;->f(Z)V

    move v4, v5

    .line 181
    :cond_1
    invoke-virtual {v1}, Ltmsdkobf/ek$a;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdkobf/jl;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 183
    const-string v2, "rqdp{  mid:}%d rqdp{  , url changed:}%s"

    new-array v4, v11, [Ljava/lang/Object;

    iget v9, v0, Ltmsdkobf/jl;->mId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v3

    invoke-virtual {v0}, Ltmsdkobf/jl;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v2, v4}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0}, Ltmsdkobf/jl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltmsdkobf/ek$a;->aw(Ljava/lang/String;)V

    move v0, v5

    move v2, v5

    :goto_3
    move v4, v2

    move v2, v0

    .line 188
    goto :goto_2

    .line 190
    :cond_2
    invoke-virtual {v1}, Ltmsdkobf/ek$a;->aE()Z

    move-result v0

    if-eq v2, v0, :cond_3

    .line 192
    const-string v0, "rqdp{  mid:}%d rqdp{  , enable} %b"

    new-array v4, v11, [Ljava/lang/Object;

    iget v8, v1, Ltmsdkobf/ek$a;->jO:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v0, v4}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v1, v2}, Ltmsdkobf/ek$a;->e(Z)V

    move v4, v5

    .line 163
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v2, v4

    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 200
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/jl;

    .line 202
    iget v4, v0, Ltmsdkobf/jl;->mId:I

    invoke-virtual {p1, v4}, Ltmsdkobf/ek;->aE(I)Ltmsdkobf/ek$a;

    move-result-object v4

    .line 204
    if-nez v4, :cond_6

    .line 206
    const-string v4, "rqdp{  imposiable! module base strategy not ready! mId:}%d"

    new-array v6, v5, [Ljava/lang/Object;

    iget v0, v0, Ltmsdkobf/jl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v4, v6}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {p1}, Ltmsdkobf/ek;->aC()Landroid/util/SparseArray;

    move-result-object v4

    .line 219
    if-eqz v4, :cond_b

    move v2, v3

    move v1, v3

    .line 222
    :goto_5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 224
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ek$a;

    .line 225
    invoke-virtual {v0}, Ltmsdkobf/ek$a;->aE()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 227
    const-string v1, "rqdp{  mid:}%d rqdp{  , server closed}"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltmsdkobf/ek$a;->ad()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v0, v3}, Ltmsdkobf/ek$a;->e(Z)V

    move v0, v5

    .line 222
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_8
    move v2, v1

    :cond_9
    :goto_7
    move v3, v2

    .line 234
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    move v2, v3

    goto :goto_7

    :cond_c
    move v0, v5

    move v2, v4

    goto/16 :goto_3

    :cond_d
    move v0, v2

    move v2, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(I[BZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_1

    .line 31
    const-string v0, "rqdp{  com strategy unmatch key:}%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Ltmsdkobf/eg;->kG:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/ei;->as()Ltmsdkobf/ek;

    move-result-object v4

    .line 38
    if-nez v4, :cond_2

    .line 40
    const-string v0, "rqdp{  imposible! common strategy null!}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_2
    :try_start_0
    new-instance v5, Ltmsdkobf/jj;

    invoke-direct {v5}, Ltmsdkobf/jj;-><init>()V

    .line 47
    new-instance v0, Ltmsdkobf/dd;

    invoke-direct {v0, p2}, Ltmsdkobf/dd;-><init>([B)V

    .line 48
    invoke-virtual {v5, v0}, Ltmsdkobf/jj;->readFrom(Ltmsdkobf/dd;)V

    .line 49
    if-eqz v5, :cond_3

    if-nez v4, :cond_6

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    .line 51
    if-eqz p3, :cond_5

    .line 53
    const-string v0, "rqdp{  update common strategy should save}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Ltmsdkobf/eg;->kG:Landroid/content/Context;

    if-eqz p2, :cond_5

    new-instance v1, Ltmsdkobf/em;

    invoke-direct {v1}, Ltmsdkobf/em;-><init>()V

    invoke-virtual {v1, p1}, Ltmsdkobf/em;->av(I)V

    invoke-virtual {v1, p2}, Ltmsdkobf/em;->f([B)V

    invoke-static {v0, v1}, Ltmsdkobf/fh;->a(Landroid/content/Context;Ltmsdkobf/em;)Z

    .line 57
    :cond_5
    const-string v0, "rqdp{  com strategy changed notify!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Ltmsdkobf/eg;->kG:Landroid/content/Context;

    invoke-static {v0}, Ltmsdkobf/ei;->c(Landroid/content/Context;)Ltmsdkobf/ei;

    move-result-object v0

    invoke-virtual {v0, v4}, Ltmsdkobf/ei;->a(Ltmsdkobf/ek;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    const-string v0, "rqdp{  error to common strategy!}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ltmsdkobf/jj;->ed()Z

    move-result v0

    invoke-virtual {v4}, Ltmsdkobf/ek;->aB()Z

    move-result v3

    if-eq v0, v3, :cond_12

    const-string v0, "rqdp{  useSStrategy changed to} %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ltmsdkobf/jj;->ed()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ltmsdkobf/jj;->ed()Z

    move-result v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->c(Z)V

    move v3, v1

    :goto_2
    invoke-virtual {v5}, Ltmsdkobf/jj;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ltmsdkobf/ek;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "rqdp{  url changed to} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ltmsdkobf/jj;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ltmsdkobf/jj;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->aw(Ljava/lang/String;)V

    move v3, v1

    :cond_7
    invoke-virtual {v5}, Ltmsdkobf/jj;->eb()I

    move-result v0

    invoke-virtual {v4}, Ltmsdkobf/ek;->Y()I

    move-result v6

    if-eq v0, v6, :cond_8

    const-string v0, "rqdp{  upStrategy changed to} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ltmsdkobf/jj;->eb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ltmsdkobf/jj;->eb()I

    move-result v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->av(I)V

    move v3, v1

    :cond_8
    invoke-virtual {v5}, Ltmsdkobf/jj;->ec()I

    move-result v0

    invoke-virtual {v4}, Ltmsdkobf/ek;->Z()I

    move-result v6

    if-eq v0, v6, :cond_9

    const-string v0, "rqdp{  QueryPeriod changed to} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ltmsdkobf/jj;->ec()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ltmsdkobf/jj;->ec()I

    move-result v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->aB(I)V

    move v3, v1

    :cond_9
    iget-boolean v0, v5, Ltmsdkobf/jj;->tu:Z

    invoke-virtual {v4}, Ltmsdkobf/ek;->aD()Z

    move-result v6

    if-eq v0, v6, :cond_a

    const-string v0, "rqdp{  enforceQuery changed to} %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, v5, Ltmsdkobf/jj;->tu:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v5, Ltmsdkobf/jj;->tu:Z

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->e(Z)V

    move v3, v1

    :cond_a
    invoke-virtual {v5}, Ltmsdkobf/jj;->ea()Ltmsdkobf/jm;

    move-result-object v6

    if-eqz v6, :cond_b

    if-nez v4, :cond_d

    :cond_b
    move v0, v2

    :cond_c
    :goto_3
    if-eqz v0, :cond_10

    move v0, v1

    :goto_4
    invoke-virtual {v5}, Ltmsdkobf/jj;->dZ()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v4}, Ltmsdkobf/eg;->a(Ljava/util/ArrayList;Ltmsdkobf/ek;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v0

    goto/16 :goto_1

    :cond_d
    iget v0, v6, Ltmsdkobf/jm;->tE:I

    invoke-virtual {v4}, Ltmsdkobf/ek;->ax()I

    move-result v7

    if-eq v0, v7, :cond_11

    const-string v0, "rqdp{  ea changed:}%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Ltmsdkobf/jm;->tE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v6, Ltmsdkobf/jm;->tE:I

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->aC(I)V

    move v0, v1

    :goto_5
    iget v7, v6, Ltmsdkobf/jm;->tF:I

    invoke-virtual {v4}, Ltmsdkobf/ek;->az()I

    move-result v8

    if-eq v7, v8, :cond_e

    const-string v0, "rqdp{  za changed:}%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Ltmsdkobf/jm;->tF:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v6, Ltmsdkobf/jm;->tF:I

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->aD(I)V

    move v0, v1

    :cond_e
    invoke-virtual {v6}, Ltmsdkobf/jm;->ee()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ltmsdkobf/ek;->ac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v0, "rqdp{  enk changed}"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v7}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ltmsdkobf/jm;->ee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->ax(Ljava/lang/String;)V

    move v0, v1

    :cond_f
    invoke-virtual {v6}, Ltmsdkobf/jm;->ef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ltmsdkobf/ek;->ay()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v0, "rqdp{  enpk changed}"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v7}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ltmsdkobf/jm;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ltmsdkobf/ek;->ay(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v3

    goto/16 :goto_4

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_12
    move v3, v2

    goto/16 :goto_2
.end method
