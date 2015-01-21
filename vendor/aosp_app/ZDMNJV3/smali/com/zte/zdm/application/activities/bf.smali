.class public Lcom/zte/zdm/application/activities/bf;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zte/zdm/mos/a/a/b;Ljava/lang/String;I)Lcom/zte/zdm/b/f/d;
    .locals 9

    const/4 v4, 0x0

    new-instance v8, Lcom/zte/zdm/b/f/a;

    invoke-direct {v8}, Lcom/zte/zdm/b/f/a;-><init>()V

    packed-switch p3, :pswitch_data_0

    move-object v1, v4

    move-object v5, v4

    :goto_0
    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    const-string v2, "chr"

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;I[B)V

    invoke-virtual {v8, v0}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    const-string v0, "===========5=========="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    :pswitch_0
    invoke-virtual {p1}, Lcom/zte/zdm/mos/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/zte/zdm/mos/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/zte/zdm/mos/a/a/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/zte/zdm/mos/a/a/b;)Lcom/zte/zdm/b/f/d;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/zte/zdm/b/f/a;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/zdm/mos/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zte/zdm/b/f/d/d;

    invoke-direct {v2, v1, v3, v4, v4}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    const-string v2, "=========4=========="

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/zte/zdm/application/activities/bf;->a(Lcom/zte/zdm/mos/a/a/b;Ljava/lang/String;I)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-direct {p0, p2, v1, v3}, Lcom/zte/zdm/application/activities/bf;->a(Lcom/zte/zdm/mos/a/a/b;Ljava/lang/String;I)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    const/4 v2, 0x2

    invoke-direct {p0, p2, v1, v2}, Lcom/zte/zdm/application/activities/bf;->a(Lcom/zte/zdm/mos/a/a/b;Ljava/lang/String;I)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    const-string v1, "===========6==========="

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/mos/a/a/a;->a()V

    new-instance v0, Lcom/zte/zdm/application/activities/bf;

    invoke-direct {v0}, Lcom/zte/zdm/application/activities/bf;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/bf;->b()V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zte/zdm/mos/a/a; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/g;->printStackTrace()V

    const-string v0, "XXXXXXXXX NodeException"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/h/a;->printStackTrace()V

    const-string v0, "XXXXXXXXX TreeException"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/mos/a/a;->printStackTrace()V

    const-string v0, "XXXXXXXXX ScomoExcepiton"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Lcom/zte/zdm/b/f/b;
    .locals 7

    new-instance v0, Lcom/zte/zdm/b/f/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b;-><init>()V

    new-instance v1, Lcom/zte/zdm/b/f/d/b;

    const-string v2, "Add=*&Get=*&Exec=*&Replace=*&Delete=*"

    invoke-direct {v1, v2}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/b/f/d/a;

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Lcom/zte/zdm/b/f/d/a;-><init>(I)V

    new-instance v3, Lcom/zte/zdm/b/f/d/d;

    const-string v4, "."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v3, v2}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/a;)V

    new-instance v1, Lcom/zte/zdm/b/f/e/a;

    invoke-direct {v1, v0}, Lcom/zte/zdm/b/f/e/a;-><init>(Lcom/zte/zdm/b/f/h/c;)V

    const-string v2, "anyServer"

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/h/d;)V

    new-instance v1, Lcom/zte/zdm/b/f/a;

    invoke-direct {v1}, Lcom/zte/zdm/b/f/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    const-string v1, "===========1========"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/a;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/mos/a/a/c;->b()Lcom/zte/zdm/mos/a/a/c;

    move-result-object v0

    const-string v1, "scomo"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/a/a/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======3========appList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/mos/a/a/b;

    invoke-direct {p0, p2, v0}, Lcom/zte/zdm/application/activities/bf;->a(Ljava/lang/String;Lcom/zte/zdm/mos/a/a/b;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "=======createAppScomoTree in"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/bf;->c()Lcom/zte/zdm/b/f/b;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/b/f/a;

    invoke-direct {v1}, Lcom/zte/zdm/b/f/a;-><init>()V

    new-instance v2, Lcom/zte/zdm/b/f/d/d;

    const-string v3, "./"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    const-string v2, "./"

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    new-instance v2, Lcom/zte/zdm/b/f/a;

    invoke-direct {v2}, Lcom/zte/zdm/b/f/a;-><init>()V

    new-instance v3, Lcom/zte/zdm/b/f/d/d;

    const-string v4, "./Inventory"

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    new-instance v1, Lcom/zte/zdm/b/f/a;

    invoke-direct {v1}, Lcom/zte/zdm/b/f/a;-><init>()V

    new-instance v3, Lcom/zte/zdm/b/f/d/d;

    const-string v4, "./Inventory/Deployed"

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v1, v3}, Lcom/zte/zdm/b/f/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/zte/zdm/b/f/a;->b(Lcom/zte/zdm/b/f/d;)V

    const-string v2, "========2========="

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "./Inventory/Deployed"

    invoke-virtual {p0, v1, v2}, Lcom/zte/zdm/application/activities/bf;->a(Lcom/zte/zdm/b/f/a;Ljava/lang/String;)V

    const-string v1, "=======createAppScomoTree in2"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "=======before save"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/f/f/d;->a()Lcom/zte/zdm/b/f/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/f/c;->a(Lcom/zte/zdm/b/f/c;)V

    return-void
.end method
