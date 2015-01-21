.class public Lcom/zte/zdm/b/a/d;
.super Lcom/zte/zdm/b/a/a;


# static fields
.field private static final d:Ljava/lang/String; = "MINDT"

.field private static final e:Ljava/lang/String; = "MAXDT"

.field private static final f:Ljava/lang/String; = "DR"

.field private static final g:Ljava/lang/String; = "MAXLEN"

.field private static final h:Ljava/lang/String; = "IT"

.field private static final i:Ljava/lang/String; = "ET"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lcom/zte/zdm/d/c/c;

.field private l:Lcom/zte/zdm/g/e;

.field private m:Ljava/util/ArrayList;

.field private n:Lcom/zte/zdm/b/c/b/c;

.field private o:Lcom/zte/zdm/b/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/c;)V
    .locals 2

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->l:Lcom/zte/zdm/g/e;

    new-instance v0, Lcom/zte/zdm/b/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/b/a/g;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iput-object p1, p0, Lcom/zte/zdm/b/a/d;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/c;Lcom/zte/zdm/b/a/g;)V
    .locals 2

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->l:Lcom/zte/zdm/g/e;

    new-instance v0, Lcom/zte/zdm/b/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/b/a/g;-><init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iput-object p1, p0, Lcom/zte/zdm/b/a/d;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/d;->m:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->l:Lcom/zte/zdm/g/e;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/bn;ILjava/util/List;)V
    .locals 11

    const/4 v6, 0x0

    new-instance v0, Lcom/zte/zdm/d/c/bd;

    new-instance v1, Lcom/zte/zdm/d/c/m;

    const-string v2, "1"

    invoke-direct {v1, v2}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/a/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/c;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/c;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Lcom/zte/zdm/d/c/u;

    int-to-long v7, p2

    invoke-direct {v9, v7, v8}, Lcom/zte/zdm/d/c/u;-><init>(J)V

    if-nez p3, :cond_0

    move-object v10, v6

    :goto_0
    move-object v5, p1

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bd;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/zte/zdm/d/c/ai;

    invoke-interface {p3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/zte/zdm/d/c/ai;

    move-object v10, v5

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key:\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tvalue:\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, v5, v4}, Lcom/zte/zdm/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "MINDT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/c;->a(I)V

    goto :goto_0

    :cond_2
    const-string v0, "MAXDT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/c;->b(I)V

    goto :goto_0

    :cond_3
    const-string v0, "DR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/c/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "MAXLEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/c;->c(I)V

    goto :goto_0

    :cond_5
    const-string v0, "IT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/c;->a(C)V

    goto :goto_0

    :cond_6
    const-string v0, "ET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/c;->b(C)V

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-static {v1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/zdm/b/a/d;->c()Lcom/zte/zdm/b/c/b/c;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/d;->a(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x196

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    packed-switch v2, :pswitch_data_0

    const-string v0, "Default_TYPE"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performActionOperation: alertcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v0, "DISPLAY"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a/g;->a(Lcom/zte/zdm/b/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    goto :goto_1

    :pswitch_1
    const-string v0, "CONFIRM_OR_REJECT"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a/g;->b(Lcom/zte/zdm/b/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    goto :goto_1

    :pswitch_2
    const-string v0, "INPUT"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a/g;->c(Lcom/zte/zdm/b/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    goto :goto_1

    :pswitch_3
    const-string v0, "SINGLE_CHOICE"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a/g;->d(Lcom/zte/zdm/b/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    goto :goto_1

    :pswitch_4
    const-string v0, "MULTIPLE_CHOICE"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/a/g;->e(Lcom/zte/zdm/b/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/a/d;->c:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private f()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a/d;->o:Lcom/zte/zdm/b/a/g;

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/d;->d()Z

    invoke-direct {p0}, Lcom/zte/zdm/b/a/d;->e()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected c()Lcom/zte/zdm/b/c/b/c;
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->k:Lcom/zte/zdm/d/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/d;->c(I)Z

    move-result v1

    invoke-static {v1}, Lcom/zte/zdm/g/a;->a(Z)V

    new-instance v1, Lcom/zte/zdm/b/c/b/c;

    invoke-direct {p0}, Lcom/zte/zdm/b/a/d;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/zte/zdm/b/c/b/c;-><init>(I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    iget-object v0, p0, Lcom/zte/zdm/b/a/d;->n:Lcom/zte/zdm/b/c/b/c;

    return-object v0
.end method
