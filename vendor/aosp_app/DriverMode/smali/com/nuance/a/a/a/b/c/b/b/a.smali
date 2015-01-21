.class public Lcom/nuance/a/a/a/b/c/b/b/a;
.super Lcom/nuance/a/a/a/b/c/b/a/d;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/c;


# static fields
.field private static final l:Lcom/nuance/a/a/a/a/b/a/b$a;

.field private static p:Ljava/lang/String;


# instance fields
.field private m:Lcom/nuance/a/a/a/a/b/a/c;

.field private n:Lcom/nuance/a/a/a/b/c/c/e;

.field private o:Lcom/nuance/a/a/a/b/c/b/b/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/a;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/a;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/a/a/a/b/c/b/a/a;Lcom/nuance/a/a/a/b/c/c/e;Ljava/util/Vector;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/a/a/a/b/c/b/a/d;-><init>(Lcom/nuance/a/a/a/b/c/b/a/a;Lcom/nuance/a/a/a/b/c/a/f;Ljava/util/Vector;)V

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->n:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->a()Lcom/nuance/a/a/a/a/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->g()Lcom/nuance/a/a/a/b/c/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0, p0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(Lcom/nuance/a/a/a/b/c/a/d;)V

    iput-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v1, v4, v2}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(B)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    iget-byte v0, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/b/a;->g()Lcom/nuance/a/a/a/b/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearResLogsToServer() before clean the log vector tranId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] log list size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/a/a/a/b/c/b/b/s$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearResLogsToServer() after clean the log vector tranId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] log list size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/b;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-direct {v0, p1, v1, v2}, Lcom/nuance/a/a/a/b/c/b/b/b;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/c/b/a/b;Lcom/nuance/a/a/a/a/b/a/c;)V

    return-object v0
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;J)Lcom/nuance/a/a/a/b/c/c/b;
    .locals 26

    const-string v1, ""

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "commandListener is invalid; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cmd should be non-null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p3, :cond_3

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scriptVersion should be non-null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz p4, :cond_5

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dictationLanguage should be non-null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-eqz p6, :cond_7

    const-string v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneModel should be non-null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-gtz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "commandTimeout is invalid; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NMASResourceImpl.createCommand() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->h:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/b/s;->e()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->d()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->g:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->h()B

    move-result v1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->j:B

    new-instance v1, Lcom/nuance/a/a/a/b/c/b/b/s;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/a/a;

    iget-object v5, v3, Lcom/nuance/a/a/a/b/c/b/a/a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/a/a;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    sget-object v9, Lcom/nuance/a/a/a/b/c/b/b/a;->p:Ljava/lang/String;

    const-string v11, "enus"

    const-string v12, "ne"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/a/a;->e()Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/a/a;->d()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->n:Lcom/nuance/a/a/a/b/c/c/e;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->j:B

    move/from16 v24, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-wide/from16 v19, p8

    move-object/from16 v21, p7

    move-object/from16 v22, p0

    invoke-direct/range {v1 .. v24}, Lcom/nuance/a/a/a/b/c/b/b/s;-><init>(Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/c/c/f;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/b/c/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/nuance/a/a/a/b/a/c/a;Lcom/nuance/a/a/a/b/c/b/b/a;Lcom/nuance/a/a/a/b/c/c/e;B)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v25

    throw v1
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/e;

    check-cast p2, Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-direct {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/b/e;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;Lcom/nuance/a/a/a/b/b/a;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tts_dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "audioSink can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/q;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    check-cast p2, Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/nuance/a/a/a/b/c/b/b/q;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/c/b/a/b;Lcom/nuance/a/a/a/b/a/b/b/d;Lcom/nuance/a/a/a/b/b/a;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "choicename can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/c;

    invoke-direct {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/d;

    invoke-direct {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/b/d;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final a()V
    .locals 6

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "freeResource() disconnectTimeout:0"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->e()V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->g:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v3, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->m:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/a/e;

    const-string v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(BS)V
    .locals 1

    iget-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->j:B

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->e()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(BS)V

    goto :goto_0
.end method

.method public final a(B[B)V
    .locals 4

    invoke-static {p2}, Lcom/nuance/a/a/a/b/c/b/b/h;->a([B)Lcom/nuance/a/a/a/b/c/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/g;->e()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session.parseXModeMsgBcpData() Unknown command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/g;->e()S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/a;->a(B)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/b/n;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/n;B)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/b/l;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/l;B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/a;->a(B)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/b/o;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/o;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7201
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-byte v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-super {p0, p0}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(Lcom/nuance/a/a/a/b/c/b/a/c;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0, p0}, Lcom/nuance/a/a/a/b/c/b/a/b;->b(Lcom/nuance/a/a/a/b/c/b/a/c;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->n:Lcom/nuance/a/a/a/b/c/c/e;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(S)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/a;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionDisconnected() reasonCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(S)V

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(S)V

    return-void
.end method

.method public final a([B)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/a/a/a/b/c/b/a/d;->a([B)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a([B)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/p;

    check-cast p2, Lcom/nuance/a/a/a/b/a/b/b/d;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/a/a/a/b/c/b/b/p;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/r;

    invoke-direct {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/b/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/p;

    check-cast p2, Lcom/nuance/a/a/a/b/a/b/b/d;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/a/a/a/b/c/b/b/p;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;B)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->f()V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/p;

    check-cast p2, Lcom/nuance/a/a/a/b/a/b/b/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/a/a/a/b/c/b/b/p;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;B)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/a;->o:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->d()V

    return-void
.end method

.method public final h()J
    .locals 2

    invoke-super {p0}, Lcom/nuance/a/a/a/b/c/b/a/d;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Lcom/nuance/a/a/a/b/a/c/a;
    .locals 1

    new-instance v0, Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-direct {v0}, Lcom/nuance/a/a/a/b/a/b/b/d;-><init>()V

    return-object v0
.end method

.method public final k()Lcom/nuance/a/a/a/b/a/c/b;
    .locals 1

    new-instance v0, Lcom/nuance/a/a/a/b/a/b/b/g;

    invoke-direct {v0}, Lcom/nuance/a/a/a/b/a/b/b/g;-><init>()V

    return-object v0
.end method
