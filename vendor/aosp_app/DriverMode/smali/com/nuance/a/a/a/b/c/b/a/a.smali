.class public Lcom/nuance/a/a/a/b/c/b/a/a;
.super Lcom/nuance/a/a/a/b/b/b;

# interfaces
.implements Lcom/nuance/a/a/a/b/a/b/a/b;
.implements Lcom/nuance/a/a/a/b/c/a/a;


# static fields
.field private static final h:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field public g:Ljava/lang/String;

.field private i:Lcom/nuance/a/a/a/b/c/b/a/b;

.field private j:Ljava/lang/Object;

.field private k:Lcom/nuance/a/a/a/b/a/b/a/a;

.field private l:Lcom/nuance/a/a/a/b/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/a/a;->h:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;Ljava/util/Vector;Lcom/nuance/a/a/a/b/c/a/c;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/nuance/a/a/a/b/b/b;-><init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;)V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " application id is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->g:Ljava/lang/String;

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " application key is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->l:Lcom/nuance/a/a/a/b/c/a/c;

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/high16 v3, 0x10

    const/4 v2, 0x0

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move v10, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    :goto_0
    new-instance v1, Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/a;->c()S

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/a;->a()Lcom/nuance/a/a/a/a/b/a/c;

    move-result-object v8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/nuance/a/a/a/b/c/b/a/b;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/c/a/c;)V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->i:Lcom/nuance/a/a/a/b/c/b/a/b;

    if-nez v10, :cond_3

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/a;

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/a;->a()Lcom/nuance/a/a/a/a/b/a/c;

    move-result-object v11

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move v6, v12

    move v7, v14

    move-object v8, v13

    move-object/from16 v9, p8

    move-object v12, p0

    invoke-direct/range {v1 .. v12}, Lcom/nuance/a/a/a/b/a/b/a/a;-><init>(Ljava/lang/String;SLjava/lang/String;[BIILjava/lang/String;Ljava/util/Vector;Ljava/lang/String;Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/a/b/a/b;)V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->i:Lcom/nuance/a/a/a/b/c/b/a/b;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(Lcom/nuance/a/a/a/b/a/b/a/a;)V

    :cond_3
    return-void

    :cond_4
    new-instance v7, Ljava/util/Vector;

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_d

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v8

    sget-object v9, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v8, v9, :cond_5

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DEVICE_CMD_LOG_TO_SERVER_ENABLED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->j:Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Calllog_Disable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "TRUE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "FALSE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Calllog_Root_Id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Calllog_Retention_Days"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Calllog_Chunk_Size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :cond_d
    move v10, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->l:Lcom/nuance/a/a/a/b/c/a/c;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/a/c;->a([B)V

    return-void
.end method

.method public final c_()V
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/a;->h:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "shutdown"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NMSP_ShutDown"

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->k:Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->i:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->e()V

    return-void
.end method

.method public final g()Lcom/nuance/a/a/a/b/c/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->i:Lcom/nuance/a/a/a/b/c/b/a/b;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/a;->j:Ljava/lang/Object;

    return-object v0
.end method
